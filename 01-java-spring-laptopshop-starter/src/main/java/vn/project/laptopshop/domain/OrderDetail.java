package vn.project.laptopshop.domain;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "orderdetals")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long OD_id;
    private long quantity;
    private Double totalprice;
    @ManyToOne
    @JoinColumn(name = "orderid")
    private Order order;

    @ManyToOne
    @JoinColumn(name = "id")
    private Product product;

    public OrderDetail() {}

    public OrderDetail(Order order, Product product) {
        this.order = order;
        this.product = product;
    }

}
