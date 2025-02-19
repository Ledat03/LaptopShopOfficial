package vn.project.laptopshop.service.CustomValidate;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import vn.project.laptopshop.domain.DTO.RegisterDTO;
import vn.project.laptopshop.service.MyService;

public class checkValidator implements ConstraintValidator<Validate, RegisterDTO> {
    private final MyService myService;
    String RegexPhone ="^(0|\\+84)[3-9][0-9]{8}$";
    String RegexEmail = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$";

    checkValidator(MyService myService) {
        this.myService = myService;
    }

    @Override
    public boolean isValid(RegisterDTO registerDTO, ConstraintValidatorContext context) {
        boolean isValid = true;
        if(!registerDTO.getPassword().equals(registerDTO.getConfirmPassword())) {
            context.buildConstraintViolationWithTemplate("Mật khẩu không khớp !")
                    .addPropertyNode("confirmPassword")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            isValid = false;
        }
        if(registerDTO.getPhone().isEmpty() || !registerDTO.getPhone().matches(RegexPhone)) {
            context.buildConstraintViolationWithTemplate("Số điện thoại nhập chưa đúng định dạng !")
                    .addPropertyNode("phone")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            isValid = false;
        }
        if(registerDTO.getEmail().isEmpty() || !registerDTO.getEmail().matches(RegexEmail)) {
            context.buildConstraintViolationWithTemplate("Email chưa đúng định dạng !")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            isValid = false;
        }
        if(myService.IsExist(registerDTO.getEmail())) {
            context.buildConstraintViolationWithTemplate("Email đã tồn tại !")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            isValid = false;
        }
        return isValid;
    }


}
