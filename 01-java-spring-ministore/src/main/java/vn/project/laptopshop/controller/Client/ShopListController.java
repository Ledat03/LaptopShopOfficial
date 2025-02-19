package vn.project.laptopshop.controller.Client;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
    public String Explore(Model model , @RequestParam(value = "target" ,required = false) String target,@RequestParam(value = "page" , defaultValue = "0") int page) {
        Pageable pageable  = PageRequest.of(page, 8);
        Page<Product> productPageAll = productService.findALlProducts(pageable);
        List<Product> ProductList = productPageAll.getContent();
        int TotalPageAll = productPageAll.getTotalPages();
        model.addAttribute("TotalPageAll", TotalPageAll);
        model.addAttribute("ProductList", ProductList);
        Page<Product> ProductPage = productService.findAllProductByTargetAndPagination(target, pageable);
        List<Product> ProductListByPage = ProductPage.getContent();
        int TotalPage = ProductPage.getTotalPages();
        model.addAttribute("ProductListByPage", ProductListByPage);
        model.addAttribute("TotalPage", TotalPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("target", target);
        return "Client/Product/ShopProduct";
    }
}
