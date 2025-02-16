package vn.project.laptopshop.controller.Client;

import jakarta.validation.Valid;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.project.laptopshop.domain.DTO.RegisterDTO;
import vn.project.laptopshop.domain.User;
import vn.project.laptopshop.repository.UserRepository;
import vn.project.laptopshop.service.MyService;

import javax.naming.Binding;

@Controller
public class UserServiceController {
    private final MyService myService;
    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;

    public UserServiceController(MyService myService , PasswordEncoder passwordEncoder, UserRepository userRepository) {
        this.myService = myService;
        this.passwordEncoder = passwordEncoder;
        this.userRepository = userRepository;
    }

    @GetMapping("/login")
    public String login(Model model) {

        return "Client/UserService/Login";
    }
    @GetMapping("/register")
    public String register(Model model) {
        model.addAttribute("RegisterUser", new RegisterDTO());
        return "Client/UserService/Register";
    }
    @PostMapping("/RegisterConfirm")
    public String registerConfirm(@ModelAttribute("RegisterUser") @Valid RegisterDTO  registerDTO, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "Client/UserService/Register";
        }
        User user  = myService.registerDTOtoUser(registerDTO);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRole(myService.findRoleByName("USER"));
        userRepository.save(user);
        return "redirect:/login";
    }
}
