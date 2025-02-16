package vn.project.laptopshop.domain;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;
    private Double totalPrice;
    private String receiverName;
    private String receiverPhone;
    private String receiverAddress;
    @OneToMany(mappedBy = "order")
    List<OrderDetail> orderDetails;
}
