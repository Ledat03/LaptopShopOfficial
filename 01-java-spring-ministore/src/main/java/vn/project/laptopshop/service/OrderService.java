package vn.project.laptopshop.service;

import org.springframework.stereotype.Service;
import vn.project.laptopshop.domain.*;
import vn.project.laptopshop.repository.CartDetailRepository;
import vn.project.laptopshop.repository.CartRepository;
import vn.project.laptopshop.repository.OrderDetailRepository;
import vn.project.laptopshop.repository.OrderRepository;

import java.util.List;

@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;
    private final CartDetailRepository cartDetailRepository;
    private final CartRepository cartRepository;

    public OrderService(OrderRepository orderRepository, OrderDetailRepository orderDetailRepository, CartDetailRepository cartDetailRepository, CartRepository cartRepository) {
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.cartRepository = cartRepository;
    }

    public void addOrder(Order newOrder,User user,double total,String fullName,String phone,String address){
        newOrder.setUser(user);
        newOrder.setTotalPrice(total);
        newOrder.setReceiverName(fullName);
        newOrder.setReceiverPhone(phone);
        newOrder.setReceiverAddress(address);
        this.orderRepository.save(newOrder);
    }
    public void addOrderDetail(Order order, List<CartDetail> cartDetailList, Cart cart){
        for (CartDetail cartDetail : cartDetailList) {
            OrderDetail od = new OrderDetail();
            od.setOrder(order);
            od.setProduct(cartDetail.getProduct());
            od.setQuantity(cartDetail.getQuantity());
            od.setTotalPrice(cartDetail.getPrice());
            int CheckedProduct = cartDetail.getQuantity();
            cart.setSumQuantity(cart.getSumQuantity() - CheckedProduct);
            this.cartDetailRepository.deleteById(cartDetail.getId());
            this.orderDetailRepository.save(od);
        }
        if(cart.getSumQuantity() < 1 ){
            this.cartRepository.deleteById(cart.getId());
        }
    }
}
