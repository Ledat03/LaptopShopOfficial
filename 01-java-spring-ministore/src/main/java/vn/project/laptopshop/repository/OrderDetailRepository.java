package vn.project.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.project.laptopshop.domain.Order;
import vn.project.laptopshop.domain.OrderDetail;

import java.util.List;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {
    OrderDetail save(OrderDetail orderDetail);
    List<OrderDetail> findByOrderId(long orderId);
    void deleteOrderDetailByOrder(Order order);
}
