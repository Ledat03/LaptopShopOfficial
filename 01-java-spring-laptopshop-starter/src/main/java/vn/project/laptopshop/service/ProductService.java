package vn.project.laptopshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import vn.project.laptopshop.domain.Cart;
import vn.project.laptopshop.domain.CartDetail;
import vn.project.laptopshop.domain.Product;
import vn.project.laptopshop.domain.User;
import vn.project.laptopshop.repository.CartDetailRepository;
import vn.project.laptopshop.repository.CartRepository;
import vn.project.laptopshop.repository.ProductRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {
    public final ProductRepository productRepository;
    private final MyService myService;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    ProductService(ProductRepository productRepository, MyService myService, CartRepository cartRepository, CartDetailRepository cartDetailRepository) {
        this.productRepository = productRepository;
        this.myService = myService;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
    }
    public Product createProduct(Product product) {
        return this.productRepository.save(product);
    }
    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }
    public Product getProduct(long id) {
        return productRepository.findById(id);
    }
    public Product deleteProduct(long id) {
        return  this.productRepository.deleteById(id);
    }

    public void addProductToCart(long id, String email) {
        User user = myService.findByEmail(email);
        if(user != null) {
            Cart cart = cartRepository.findByUser(user);
            if(cart == null) {
                Cart newCart = new Cart();
                newCart.setUser(user);
                newCart.setSumQuantity(0);
               cart = cartRepository.save(newCart);
            }
            Product product = getProduct(id);
            boolean isExsitProduct = this.cartDetailRepository.existsByCartIdAndProductId(cart.getId(), product.getId());
            if(isExsitProduct) {
                CartDetail cartDetail = cartDetailRepository.findByCartIdAndProductId(cart.getId(), product.getId());
                cartDetail.setQuantity(cartDetail.getQuantity() + 1);
                cartDetail.setPrice(cartDetail.getPrice() + cartDetail.getProduct().getPrice());
                cart.setSumQuantity(cart.getSumQuantity() + 1);
                cartDetailRepository.save(cartDetail);
                cartRepository.save(cart);
            }
            if (!isExsitProduct) {
                CartDetail cartDetail = new CartDetail();
                cartDetail.setCart(cart);
                cartDetail.setProduct(getProduct(id));
                cartDetail.setQuantity(1);
                cart.setSumQuantity(cart.getSumQuantity() + 1);
                cartDetail.setPrice(product.getPrice());
                cartDetailRepository.save(cartDetail);
                cartRepository.save(cart);
            }

        }
    }

    public boolean isExsitCart(User user) {
        return this.cartRepository.existsByUser(user);
    }

    public Cart getCart(long user_id) {
        return cartRepository.findById(user_id);
    }

    public Cart getCartByUser(User user) {
        return cartRepository.findByUser(user);
    }

    public List<CartDetail> getCartDetail(long Cart_id) {
        return cartDetailRepository.findByCartId(Cart_id);
    }

    public void deleteProductOnCart(long cartDetail_id) {
        Optional<CartDetail> cartDetailOptional = cartDetailRepository.findById(cartDetail_id);
        if (cartDetailOptional.isPresent()) {
            CartDetail cartDetail = cartDetailOptional.get();
            Cart cart = cartDetail.getCart();
            cart.setSumQuantity(cart.getSumQuantity() - cartDetail.getQuantity());
            this.cartDetailRepository.deleteById(cartDetail.getId());
            if(cart.getSumQuantity() >= 1) {
                this.cartRepository.save(cart);
            }else{
                this.cartRepository.delete(cart);
            }
        }
    }
    public Page<Product> findALlProducts(Pageable pageable) {
        return this.productRepository.findAll(pageable);
    }

    public List<Product> findAllProductByTarget(String target) {
        return this.productRepository.findAllByTarget(target);
    }
}
