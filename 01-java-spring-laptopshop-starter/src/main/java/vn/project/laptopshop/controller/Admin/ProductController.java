package vn.project.laptopshop.controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

    @RequestMapping("/admin/product")
    public String GetProductPage() {

        return "admin/product/InfoPage";
    }
}
