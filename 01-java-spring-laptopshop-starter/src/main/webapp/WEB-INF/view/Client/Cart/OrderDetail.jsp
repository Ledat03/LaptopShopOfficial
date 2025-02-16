

<!DOCTYPE html>
<html lang="vi">
<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
    <%@ page import="java.util.List" %>
    <%@ page import="vn.project.laptopshop.domain.CartDetail" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta charset="UTF-8" />
    <title>Cart Page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap"
            rel="stylesheet"
    />
    <link href="/css/HomePage/Cart/CartOrder.css" rel="stylesheet" />
</head>
<body>
<header>
    <jsp:include page="../Layout/Header.jsp"/>
</header>
<main>
    <div class="cart-container col-md-6 col-12 mx-auto mt-5">
    <% List<CartDetail> CartDetails = (List<CartDetail>) request.getAttribute("CartDetails"); %>
    <table class="table table-bordered ">
        <thead>
        <th class="" scope="col">Product</th>
        <th class="" scope="col">Name Product</th>
        <th class="" scope="col">Price</th>
        <th class="" scope="col">Quantity</th>
        <th class="" scope="col">Total</th>
        </thead>
        <tbody>
        <%
            for (CartDetail cartDetail:CartDetails) {
        %>
        <tr >
            <td class=""><img src="/images/product/<%=cartDetail.getProduct().getImage()%>" width="50" height="50"/></td>
            <td class=""><p><%=cartDetail.getProduct().getNameproduct()%></p></td>
            <td class=""><p>$<%=cartDetail.getProduct().getPrice()%></p> </td>
            <td class=""><p><%=cartDetail.getQuantity()%></p> </td>
            <td class=""><p>$<%=cartDetail.getPrice()%></p></td>
        </tr>
        <% } %>
        </tbody>
    </table>
        <div class="checkout-group w-50 mx-auto mt-5">
            <form class="form-control d-flex flex-column" method="post" action="/confirmCheckout">
                <span class="text-center"><strong>Checkout Infomation</strong></span>
                <div class="my-1">
                    <label class="label-style">Name</label>
                    <input type="text" name="fullname" required/>
                </div>
                <div class="my-1">
                    <label class="label-style">Phone</label>
                    <input type="text" name="phone" required/>
                </div>
                <div class="my-1">
                    <label class="label-style">Address</label>
                    <input type="text" name="address" required/>
                </div>
            <div class="cart-summary border-0 mt-auto mx-auto">
                <h4 class="summary-title">Thanh toán khi nhận hàng</h4>
                <ul class="summary-list" style="padding-left:0; ">
                    <%
                        long Total = 0;
                        for (CartDetail cartDetail: CartDetails){
                            Total += cartDetail.getPrice();
                    %>
                    <li class="summary-item" data-price="<%=cartDetail.getProduct().getPrice()%>" data-id="<%=cartDetail.getId()%>">
                        <span><%=cartDetail.getProduct().getNameproduct()%></span>
                        <span id="item-price">$<%=cartDetail.getPrice()%></span>
                    </li>
                    <%
                        }
                    %>
                </ul>
                <div class="summary-total">
                    <span>TOTAL:</span>
                    <span>$<%=Total%></span>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button class="checkout-btn" type="submit">CHECKOUT</button>
                <input type="hidden" name="total" value="<%=Total%>">
            </div>
            </form>
            </div>
        </div>

</main>
<footer>
    <jsp:include page="../Layout/Footer.jsp"/>
</footer>
</body>
</html>
