package vn.hoidanit.laptopshop.domain;

import jakarta.persistence.*;

import java.util.List;

@Entity
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

    public Order(long orderid,Double totalprice) {
        this.orderid = orderid;
//        this.userid = userid;
        this.totalprice = totalprice;
    }

    public long getOrderid() {
        return orderid;
    }

    public void setOrderid(long orderid) {
        this.orderid = orderid;
    }

//    public long getUserid() {
//        return userid;
//    }
//
//    public void setUserid(long userid) {
//        this.userid = userid;
//    }

    public Double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(Double totalprice) {
        this.totalprice = totalprice;
    }
}
