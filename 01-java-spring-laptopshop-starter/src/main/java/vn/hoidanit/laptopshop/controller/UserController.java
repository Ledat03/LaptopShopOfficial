package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.support.BindingAwareConcurrentModel;
import org.springframework.web.bind.annotation.*;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;
import vn.hoidanit.laptopshop.service.MyService;

import java.util.List;

@Controller
public class UserController {
    private final MyService myService;

    public UserController(MyService myService) {
        this.myService = myService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> listuser = this.myService.findAll();
        model.addAttribute("listuser", listuser);
        model.addAttribute("SayHello","Hello!!!");
        return "hello";
    }

    @RequestMapping(value ="/admin/user", method = RequestMethod.GET)
        public String InfoUserPage(Model model) {
        List<User> InforUser = myService.findAll();
        model.addAttribute("InfoUser", InforUser);
        return "admin/user/information";
        }

    @RequestMapping(value = "/admin/user/change/{id}", method = RequestMethod.GET)
    public String ChangeUserPage(Model model, @PathVariable long id) {
        User myUser = this.myService.findById(id);
        model.addAttribute("infouser", myUser);
        return "admin/user/changeInfo";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.GET)
    public String getUserPage(){
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/confirmation", method = RequestMethod.POST)
    public String UserUpdate(User user, Model model){
        System.out.println(user.toString());
        myService.SaveUser(user);
        model.addAttribute("UserInfo", user.toString());
        model.addAttribute("Confirm","Thêm thông tin thành công!");
        return "redirect:/admin/user";
    }

   @PostMapping(value = "/admin/user/updateconfirm")
    public String UserConfirmUpdate(Model model ,@ModelAttribute User user){
        User newInfo = myService.findById(user.getId());
        if(newInfo != null){
            newInfo.setFullName(user.getFullName());
            newInfo.setPhone(user.getPhone());
            newInfo.setAddress(user.getAddress());
        }
        this.myService.SaveUser(newInfo);
        model.addAttribute("Notice","Sửa dữ liệu thành công !");
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
