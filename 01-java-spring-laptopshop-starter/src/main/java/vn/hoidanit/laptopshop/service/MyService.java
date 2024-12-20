package vn.hoidanit.laptopshop.service;

import org.springframework.stereotype.Service;
import vn.hoidanit.laptopshop.domain.Role;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

import java.util.List;

@Service
public class MyService {
    public final UserRepository userRepository;

    public MyService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public List<User> findByEmail(String Email) {
        return this.userRepository.findByEmail(Email);
    }

    public User findById(long id) {
        return this.userRepository.findById(id);
    }

    public User SaveUser(User user) {
        return userRepository.save(user);
    }

    public User DeleteUser(User user) { return userRepository.deleteById(user.getId()); }

    public Role SaveRole(Role role) {
        return userRepository.save(role);
    }
}
