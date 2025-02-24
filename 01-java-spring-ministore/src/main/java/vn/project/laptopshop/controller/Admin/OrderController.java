package vn.project.laptopshop.controller.Admin;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.project.laptopshop.domain.Order;
import vn.project.laptopshop.domain.OrderDetail;
import vn.project.laptopshop.service.OrderService;

import java.util.List;

@Controller
public class OrderController {
    private final OrderService orderService;


    OrderController(OrderService orderService) {
        this.orderService = orderService;
    }
    @RequestMapping("/admin/order")
    public String GetOrderPage(Model model) {
        List<Order> orders = orderService.getOrders();
        model.addAttribute("orders", orders);
        return "admin/order/InfoPage";
    }

    @RequestMapping("/admin/order/orderdetail/{id}")
    public String GetOrderDetailPage(Model model, @PathVariable int id) {
        List<OrderDetail> listOrderDetail = this.orderService.getOrderDetails(id);
        model.addAttribute("listOrderDetail", listOrderDetail);
        return "admin/order/OrderDetail";
    }

    @PostMapping("/admin/order/delete/{id}")
    public String DeleteOrder(Model model, @PathVariable long id) {
        this.orderService.deleteOrderAndOrderDetails(id);
        return "redirect:/admin/order";
    }
}
