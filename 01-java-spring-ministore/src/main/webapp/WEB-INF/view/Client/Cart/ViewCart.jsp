<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi">
<head>
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
    <% List<CartDetail> CartDetails = (List<CartDetail>) request.getAttribute("CartDetails"); %>
<c:if test="${empty CartDetails}">
    <h2 class="text-center None-Product">Không có sản phẩm nào</h2>
</c:if>
    <c:if test="${not empty CartDetails}">
<div class="cart-container">
    <div class="cart-info w-100">
    <%
        for (CartDetail cartDetail:CartDetails) {
    %>
    <div class="cart-items w-100">
        <div class="cart-item d-flex" data-price="<%=cartDetail.getProduct().getPrice()%>" data-id="<%=cartDetail.getId()%>">
            <img src = "/images/product/<%= cartDetail.getProduct().getImage()%>" alt = "Product Image" class="product-image" />
            <div class="item-info d-" >
                <div class="item-header d-block " >
                    <div class="product-header d-flex justify-content-between align-items-center mb-3">
                        <h3 class="item-name" ><%= cartDetail.getProduct().getNameproduct()%> </h3 >
                        <form action="/RemoveItem/<%= cartDetail.getId()%>" method="post">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <button type="submit" style="border: none ;background: none">
                                <svg class="icon-remove">
                                    <use xlink:href="#close"></use>
                                </svg>
                            </button>
                        </form>
                    </div>
                </div >
                <div class="item-price" >
                    <p class="new-price" >Price: $<%= cartDetail.getProduct().getPrice()%></p >
                </div>
                <div>
                    <p class="new-price">Quantity: <%=cartDetail.getQuantity()%></p>
                </div>
            </div >
        </div >
    </div >
   <%
    }
    %>
    </div>
    <div class="cart-summary">
        <h4 class="summary-title">ORDER SUMMARY</h4>
        <ul class="summary-list">
            <%
                for (CartDetail cartDetail: CartDetails){
            %>
            <li class="summary-item" data-price="<%=cartDetail.getProduct().getPrice()%>" data-id="<%=cartDetail.getId()%>">
                <span><%=cartDetail.getProduct().getNameproduct()%></span>
                <span id="item-price">$<%=cartDetail.getProduct().getPrice()%></span>
            </li>
            <%
                }
            %>
        </ul>
        <div class="summary-total">
            <span>TOTAL:</span>
            <span id="cart-total-amount"></span>
        </div>
        <form action="/checkout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button class="checkout-btn">PROCEED TO CHECKOUT</button>
        </form>
    </div>
</div>
    </c:if>
</main>
<footer>
    <jsp:include page="../Layout/Footer.jsp"/>
</footer>
</body>
</html>
