package vn.project.laptopshop.controller.Client;

import com.mysql.cj.callback.FidoAuthenticationCallback;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.project.laptopshop.domain.*;
import vn.project.laptopshop.domain.DTO.CheckoutDTO;
import vn.project.laptopshop.service.MyService;
import vn.project.laptopshop.service.OrderService;
import vn.project.laptopshop.service.ProductService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ItemInfoController {
    private final ProductService productService;
    private final MyService myService;
    private final OrderService orderService;
    ItemInfoController(ProductService productService, MyService myService, OrderService orderService) {
        this.productService = productService;
        this.myService = myService;
        this.orderService = orderService;
    }

    @RequestMapping("/Product/Detail/{id}")
    public String Detail(Model model , @PathVariable int id) {
        Product DetailProduct = productService.getProduct(id);
        model.addAttribute("DetailProduct", DetailProduct);
        return "Client/Product/Test";
    }
    @PostMapping("/add-to-cart/{id}")
    public String AddToCart(Model model, @PathVariable int id, HttpServletRequest request, Authentication authentication) {
        long productId = id;
        HttpSession session = request.getSession();
        String email = (String) authentication.getName();
        productService.addProductToCart(productId,email);
        User user = myService.findByEmail(email);
        Cart cart = productService.getCartByUser(user);
        List<CartDetail> ListCartDetail = cart == null ? new ArrayList<CartDetail>() : productService.getCartDetail(cart.getId());
        model.addAttribute("CartDetails", ListCartDetail);
        return "redirect:/";
    }

    @RequestMapping("/View-Cart")
    public String ViewCart(Model model, Authentication authentication) {
        User user = myService.findByEmail(authentication.getName());
        Cart cart = productService.getCartByUser(user);
        List<CartDetail> ListCartDetail = cart == null ? new ArrayList<CartDetail>() : productService.getCartDetail(cart.getId());
        model.addAttribute("CartDetails", ListCartDetail);
        return "Client/Cart/ViewCart";
    }
    @PostMapping("/RemoveItem/{id}")
    public String RemoveItem(Model model , @PathVariable long id, Authentication authentication) {
        this.productService.deleteProductOnCart(id);
        return "redirect:/View-Cart";
    }

    @PostMapping("/checkout")
    public String Checkout(Model model, Authentication authentication) {
        User user = myService.findByEmail(authentication.getName());
        Cart cart = productService.getCartByUser(user);
        List<CartDetail> ListCartDetail = cart == null ? new ArrayList<CartDetail>() : productService.getCartDetail(cart.getId());
        model.addAttribute("CartDetails", ListCartDetail);
        model.addAttribute("CheckoutDTO", new CheckoutDTO());
        return "Client/Cart/OrderDetail";
    }
    @PostMapping("/confirmCheckout")
    public String confirmCheckout(@RequestParam("total") double total, @RequestParam("fullname") String fullName, @RequestParam("phone") String phone, @RequestParam("address") String address, HttpSession session
    ) {
        String email = (String) session.getAttribute("email");
        User user = myService.findByEmail(email);
        Cart cart = productService.getCartByUser(user);
        if (cart == null) {
            return "redirect:/View-Cart";
        }
        List<CartDetail> cartDetailList = productService.getCartDetail(cart.getId());
        Order newOrder = new Order();
        this.orderService.addOrder(newOrder,user,total,fullName,phone,address);
        this.orderService.addOrderDetail(newOrder,cartDetailList,cart);
        return "Client/Cart/Thankyou";
    }

}
