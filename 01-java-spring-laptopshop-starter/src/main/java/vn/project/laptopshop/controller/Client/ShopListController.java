package vn.project.laptopshop.controller.Client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.project.laptopshop.domain.Product;
import vn.project.laptopshop.service.ProductService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ShopListController {
    private final ProductService productService;

    ShopListController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/Explore")
    public String Explore(Model model , @RequestParam(value = "target" ,required = false) String target) {
        List<Product> ProductList = productService.getAllProducts();
        List<Product> ProductListByTarget = this.productService.findAllProductByTarget(target);
        model.addAttribute("target", target);
        model.addAttribute("ProductListByTarget", ProductListByTarget);
        model.addAttribute("ProductList", ProductList);
        return "Client/Product/ShopProduct";
    }
}
