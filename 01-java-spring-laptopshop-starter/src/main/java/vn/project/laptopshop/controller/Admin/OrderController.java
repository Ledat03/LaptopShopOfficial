package vn.project.laptopshop.controller.Admin;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
    @RequestMapping("/admin/order")
    public String GetOrderPage(){
        return "admin/order/InfoPage";
    }
}