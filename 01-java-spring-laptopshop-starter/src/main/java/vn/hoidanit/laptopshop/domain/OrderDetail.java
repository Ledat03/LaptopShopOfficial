package vn.hoidanit.laptopshop.domain;

import jakarta.persistence.*;

import java.util.List;

@Entity
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

    public long getOD_id() {
        return OD_id;
    }

    public void setOD_id(long OD_id) {
        this.OD_id = OD_id;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public Double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(Double totalprice) {
        this.totalprice = totalprice;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
