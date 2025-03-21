package vn.project.laptopshop.domain;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
@Table(name ="roles")
public class Role {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long id;
    private String rolename;
    private String description;
    @OneToMany(mappedBy = "role")
    List<User> users;
    public Role() {};

}
