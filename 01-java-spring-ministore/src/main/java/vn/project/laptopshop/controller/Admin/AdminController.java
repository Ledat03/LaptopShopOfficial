package vn.project.laptopshop.controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.project.laptopshop.service.MyService;

@Controller
public class AdminController {
    MyService myService;

    public AdminController(MyService myService) {
        this.myService = myService;
    }
    @RequestMapping("/admin")
    public String getAdminPage(){
        return "admin/AdminPage";
    }

}
