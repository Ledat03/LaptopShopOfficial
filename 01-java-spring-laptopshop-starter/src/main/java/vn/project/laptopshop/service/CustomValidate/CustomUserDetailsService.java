package vn.project.laptopshop.service.CustomValidate;
import jakarta.transaction.Transactional;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import vn.project.laptopshop.service.MyService;
import java.util.Collections;

@Service
@Transactional
public class CustomUserDetailsService implements UserDetailsService {

    public final MyService myService;
    public CustomUserDetailsService(MyService myService) {
        this.myService = myService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        vn.project.laptopshop.domain.User user = this.myService.findByEmail(username);
        if (user == null) {
            throw new UsernameNotFoundException("Tài khoản hoặc mật khẩu không chính xác !");
        }
        String Role = user.getRole().getRolename();
        return new User(user.getEmail(),user.getPassword(), Collections.singletonList(new SimpleGrantedAuthority("ROLE_"+Role)));
    }
}
