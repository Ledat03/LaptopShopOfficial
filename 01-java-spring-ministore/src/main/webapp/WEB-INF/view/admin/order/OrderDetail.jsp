
<html lang="en">
<head>
    <%@ page import="vn.project.laptopshop.domain.Product" %>
    <%@ page import="java.util.List" %>
    <%@ page import="vn.project.laptopshop.domain.Order" %>
    <%@ page import="vn.project.laptopshop.domain.OrderDetail" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <meta charset="utf-8" />
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <title>Product</title>
</head>
<body>
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content" class="bg-dark">
        <main class="col-md-7 col-12 mx-auto mt-5">
            <div class="container-fluid px-4">
                <div class="text-light d-flex justify-content-between flex-md-nowrap" >
                    <h2>Product Manager</h2>
                </div>
                <div class="text-light">

                    <table class="table table-striped table-dark">
                        <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Product</th>
                            <th scope="col">Price</th>
                            <th scope="col">Total Price</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% List<OrderDetail> OrderDetailLists = (List<OrderDetail>) request.getAttribute("listOrderDetail");
                            for (OrderDetail OrderDetail : OrderDetailLists){
                        %>
                        <tr>
                            <td><%=OrderDetail.getProduct().getNameproduct()%></td>
                            <td><%=OrderDetail.getQuantity()%></td>
                            <td><img src="/images/product/<%= OrderDetail.getProduct().getImage()%>" alt="Product Image" width="50" height="50"></td>
                            <td>$<%= OrderDetail.getProduct().getPrice()%></td>
                            <td>$<%= OrderDetail.getTotalPrice()%></td>
                            <%}%>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
</body>
</html>