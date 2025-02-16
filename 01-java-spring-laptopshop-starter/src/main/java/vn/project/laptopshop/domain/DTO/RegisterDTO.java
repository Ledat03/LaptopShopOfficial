package vn.project.laptopshop.domain.DTO;

import lombok.Data;
import vn.project.laptopshop.service.CustomValidate.Validate;

@Data
@Validate
public class RegisterDTO {
    private String username;
    private String address;
    private String phone;
    private String email;
    private String password;
    private String confirmPassword;

}
