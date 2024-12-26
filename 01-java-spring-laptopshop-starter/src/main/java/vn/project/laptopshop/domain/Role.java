package vn.project.laptopshop.domain;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name ="roles")
public class Role {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long role_id;
    private String rolename;
    private String description;
    @OneToMany(mappedBy = "role")
    List<User> users;
    public Role() {};

    public Role(long id, String rolename, String description) {
        this.role_id = id;
        this.rolename = rolename;
        this.description = description;
    }

    public long getId() {
        return role_id;
    }

    public void setId(long id) {
        this.role_id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Role [id=" + role_id + ", rolename=" + rolename + ", description=" + description + "]";
    }
}
