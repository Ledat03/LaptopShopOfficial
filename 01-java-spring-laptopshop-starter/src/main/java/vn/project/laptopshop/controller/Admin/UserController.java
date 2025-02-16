package vn.project.laptopshop.controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vn.project.laptopshop.domain.Role;
import vn.project.laptopshop.domain.User;
import vn.project.laptopshop.service.MyService;
import vn.project.laptopshop.service.UploadService;
import java.util.List;
@Controller
public class UserController {
    private final MyService myService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(MyService myService, UploadService uploadService , PasswordEncoder passwordEncoder) {
        this.myService = myService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping(value ="/admin/user")
        public String InfoUserPage(Model model) {
        List<User> InforUser = myService.findAll();
        model.addAttribute("InfoUser", InforUser);
        return "admin/user/information";
        }

    @GetMapping(value = "/admin/user/change/{id}")
    public String ChangeUserPage(Model model, @PathVariable long id) {
        User myUser = this.myService.findById(id);
        model.addAttribute("infouser", myUser);
        return "admin/user/changeInfo";
    }

    @GetMapping(value = "/admin/user/create")
    public String getUserPage(Model model){
        model.addAttribute("user", new User());
        return "admin/user/create";
    }

    @PostMapping(value = "/admin/user/confirmation")
    public String UserCreate(@RequestParam("fileImg") MultipartFile file,@ModelAttribute User user){
        Role role = myService.findRoleById(user.getRole().getId());
        user.setRole(role);
        String avatar =  uploadService.handleUpload(file,"avatar");
        String password = passwordEncoder.encode(user.getPassword());
        user.setAvatar(avatar);
        user.setPassword(password);
        myService.SaveUser(user);
        return "redirect:/admin/user";
    }

   @PostMapping(value = "/admin/user/updateconfirm")
    public String UserConfirmUpdate(Model model ,@ModelAttribute User user){
        User newInfo = myService.findById(user.getUser_id());
        if(newInfo != null){
            newInfo.setFullName(user.getFullName());
            newInfo.setPhone(user.getPhone());
            newInfo.setAddress(user.getAddress());
        }
        this.myService.SaveUser(newInfo);
        return "redirect:/admin/user";
    }

    @GetMapping(value ="/admin/user/infoUser/{id}")
        public String getInfoPage(Model model, @PathVariable long id){
            User myUser = this.myService.findById(id);
            model.addAttribute("InfoUser", myUser);
            return "admin/user/UserInfo";
        }
    @GetMapping(value = "admin/user/delete/{id}")
    public String deleteUser(Model model, @PathVariable long id){
        User user = this.myService.findById(id);
        this.myService.DeleteUser(user);
        model.addAttribute("Notice","Xóa thông tin thành công ! ");
        return "redirect:/admin/user";
    }
}
