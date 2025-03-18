package vn.project.laptopshop.service;

import org.springframework.stereotype.Service;
import vn.project.laptopshop.domain.DTO.CheckoutDTO;
import vn.project.laptopshop.domain.DTO.RegisterDTO;
import vn.project.laptopshop.domain.Role;
import vn.project.laptopshop.domain.User;
import vn.project.laptopshop.repository.RoleRepository;
import vn.project.laptopshop.repository.UserRepository;

import java.util.List;

@Service
public class MyService {
    public final UserRepository userRepository;
    public final RoleRepository roleRepository;
    public MyService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;

    }

    public List<User> findAll() {
        return userRepository.findAll();
    }


    public User findById(long id) {
        return this.userRepository.findById(id);
    }

    public User SaveUser(User user) {
        return userRepository.save(user);
    }

    public User DeleteUser(User user) { return userRepository.deleteById(user.getUser_id()); }

    public Role findRoleByName(String name) {
        return this.roleRepository.findByRolename(name);
    }

    public Role SaveRole(Role role) {
        return userRepository.save(role);
    }

    public Role findRoleById(long id) {
        return this.roleRepository.findRoleById(id);
    }
    public User registerDTOtoUser(RegisterDTO registerDTO){
        User user = new User();
        user.setFullName(registerDTO.getUsername());
        user.setEmail(registerDTO.getEmail());
        user.setPhone(registerDTO.getPhone());
        user.setAddress(registerDTO.getAddress());
        user.setPassword(registerDTO.getPassword());
        return user;
    }

    public boolean IsExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public User findByEmail(String username) {
        return this.userRepository.findByEmail(username);
    }
}
