package vn.project.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.project.laptopshop.domain.Role;
import vn.project.laptopshop.domain.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User user);
    User findById(long id);
    User deleteById(long id);
    Role save(Role role);
    boolean existsByEmail(String email);
    User findByEmail(String username);
}
