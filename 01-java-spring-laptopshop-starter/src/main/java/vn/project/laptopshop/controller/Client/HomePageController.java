package vn.project.laptopshop.controller.Client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.project.laptopshop.domain.Product;
import vn.project.laptopshop.domain.User;
import vn.project.laptopshop.service.ProductService;

import java.util.List;

@Controller
public class HomePageController {
    private final ProductService productService;

    public HomePageController(ProductService productService) {
        this.productService = productService;
    }
    @RequestMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("SayHello","Hello!!!");
        List<Product> PrLists = productService.getAllProducts();
        model.addAttribute("PrLists", PrLists);
        return "Client/HomePage";
    }
}
