package vn.project.laptopshop.service.CustomValidate;

import java.lang.annotation.*;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

@Documented
@Constraint(validatedBy = checkValidator.class)
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface Validate {
    public String message() default "Mật khẩu không khớp !";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
