package vn.project.laptopshop.controller.Client;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.project.laptopshop.domain.DTO.FilterDTO;
import vn.project.laptopshop.domain.Product;
import vn.project.laptopshop.service.ProductService;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
public class ShopListController {
    private final ProductService productService;

    ShopListController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/Explore")
    public String Explore(Model model ,
                          @RequestParam(value = "target" , required = false) Optional<String> optionalTarget,
                          @RequestParam(value = "Search") Optional<String> optionalSearch,
                          FilterDTO  filterDTO,
                          HttpServletRequest request){
        String queryURL  = request.getQueryString();
        int page = 0;
        if(filterDTO.getPage().isPresent()){
            page = Integer.parseInt(filterDTO.getPage().get());
        }
        if(queryURL != null && !queryURL.isBlank()){
            queryURL = queryURL.replace("page="+page,"");
        }
        if(queryURL == null || queryURL.isBlank()){
            queryURL = "";
        }
            Pageable pageable  = PageRequest.of(page, 8);
            Page<Product> productPageAll = productService.findAllProductsByFilter(pageable,filterDTO);
            List<Product> ProductList = productPageAll.getContent();
            int TotalPageAll = productPageAll.getTotalPages();
            model.addAttribute("TotalPageAll", TotalPageAll);
            model.addAttribute("ProductList", ProductList);
            model.addAttribute("CurrentPageAll", page);

            if(optionalTarget.isPresent()){
                String target;
                target = optionalTarget.get();
                Page<Product> ProductByTarget = productService.findAllProductByTargetAndPagination(target, pageable);
                List<Product> ProductListByTarget = ProductByTarget.getContent();
                int TotalPageByTarget = ProductByTarget.getTotalPages();
                model.addAttribute("ProductListByTarget", ProductListByTarget);
                model.addAttribute("TotalPageByTarget", TotalPageByTarget);
                model.addAttribute("CurrentPageByTarget", page);
                model.addAttribute("target", target);
            }

        if(optionalSearch.isPresent() && !optionalSearch.get().isEmpty()){
            String Name;
            Name = optionalSearch.get();
            Page<Product> ProductsByName = productService.findAllProductsWithName(pageable,Name);
            List<Product> ProductListByName = ProductsByName.getContent();
            model.addAttribute("ProductListByName", ProductListByName);
            model.addAttribute("TotalPageByName", ProductsByName.getTotalPages());
            model.addAttribute("CurrentPageByName", page);
            model.addAttribute("name", Name);
        }
        model.addAttribute("QueryURL", queryURL);
        model.addAttribute("FilterDTO", new FilterDTO());
            return "Client/Product/ShopProduct";
    }
}
