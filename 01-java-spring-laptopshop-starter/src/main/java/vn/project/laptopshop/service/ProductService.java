package vn.project.laptopshop.service;

import org.springframework.stereotype.Service;
import vn.project.laptopshop.domain.Product;
import vn.project.laptopshop.repository.ProductRepository;

import java.util.List;

@Service
public class ProductService {
    public final ProductRepository productRepository;
    ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
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
}
