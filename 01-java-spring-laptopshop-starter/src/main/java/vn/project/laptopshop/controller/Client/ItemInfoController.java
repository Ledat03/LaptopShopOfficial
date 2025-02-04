package vn.project.laptopshop.controller.Client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemInfoController {

    @RequestMapping("/Product/Detail/{id}")
    public String Detail(Model model) {
        return "Client/Detail";
    }
}
