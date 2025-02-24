package vn.project.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.project.laptopshop.domain.Order;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
    Order save(Order order);
    Order findOrderById(Long id);
    Order deleteById(long id);
}
