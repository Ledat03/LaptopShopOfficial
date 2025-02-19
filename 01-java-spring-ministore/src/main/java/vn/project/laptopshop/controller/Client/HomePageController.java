package vn.project.laptopshop.controller.Client;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.security.core.Authentication;
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
    public String getHomePage(Model model, HttpSession session , HttpServletRequest request, Authentication authentication) {

        List<Product> PrLists = productService.getAllProducts();
        model.addAttribute("PrLists", PrLists);
        model.addAttribute("user",session.getAttribute("FullName"));
        session = request.getSession(false);
        if (session != null) {
            System.out.println("Avatar in session: " + session.getAttribute("Avatar"));
        }
        return "Client/HomePage";
    }
    @RequestMapping("/AccessDenied")
    public String AccessDeniedPage(Model model) {

        return "Client/AccessDeny";
    }
}
