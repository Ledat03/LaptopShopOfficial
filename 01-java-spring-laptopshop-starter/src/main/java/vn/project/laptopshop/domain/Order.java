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
    private long orderid;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;
    private Double totalprice;

    @OneToMany(mappedBy = "order")
    List<OrderDetail> orderDetails;

    public Order(){}

    public Order(long orderid,User userid,Double totalprice) {
        this.orderid = orderid;
        this.user = userid;
        this.totalprice = totalprice;
    }
    }
