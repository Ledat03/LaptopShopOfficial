package vn.project.laptopshop.controller.Client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopListController {

    @RequestMapping("/Explore")
    public String Explore() {
        return "Client/Product/ShopProduct";
    }
}
