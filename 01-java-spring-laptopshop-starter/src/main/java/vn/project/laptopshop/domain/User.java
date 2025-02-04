package vn.project.laptopshop.domain;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;

import java.util.List;

@Entity
@Data
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long user_id;
    @Getter
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "role_id")
    private Role role;
    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phone;
    private String avatar;
    @OneToMany(mappedBy = "user")
    List<Order> orders;

    public List<Order> getOrders() {
        return orders;
    }

    public User() {
        user_id = 0;
        email = "";
        password = "";
        fullName = "";
        address = "";
        avatar = "";
        phone = "";
    }
    public User(int id, String email, String password, String fullName, String address, String phone, String avatar) {
        this.user_id = id;
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
        this.avatar = avatar;
    }
}
