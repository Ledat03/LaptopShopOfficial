package vn.project.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.project.laptopshop.domain.Role;
@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByRolename(String name);
    Role findRoleById(Long id);
}
