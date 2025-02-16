package vn.project.laptopshop.config;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import vn.project.laptopshop.domain.User;
import vn.project.laptopshop.service.MyService;

import java.io.IOException;

public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler{
    private final MyService myService;
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    protected String determineTargetUrl(HttpServletRequest request,final Authentication auth) {
        return "";
    }
    public CustomSuccessHandler(MyService myService) {
        this.myService = myService;
    }

    public void clearAuthenticationAttribute(HttpServletRequest request, HttpServletResponse response,Authentication authentication) throws IOException, ServletException {
        HttpSession session = request.getSession(false);
        String Email = authentication.getName();
        User user = myService.findByEmail(Email);
        if(user != null) {
            session.setAttribute("Avatar", user.getAvatar());
            session.setAttribute("FullName", user.getFullName());
            session.setAttribute("email", authentication.getName());
            session.setAttribute("id",user.getUser_id());
        }
        setDefaultTargetUrl("/");
    }
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        clearAuthenticationAttribute(request, response, authentication);
        super.onAuthenticationSuccess(request, response, authentication);
    }
}
