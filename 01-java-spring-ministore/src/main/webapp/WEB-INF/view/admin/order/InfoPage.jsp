
<html lang="en">
<head>
    <%@ page import="vn.project.laptopshop.domain.Product" %>
    <%@ page import="java.util.List" %>
    <%@ page import="vn.project.laptopshop.domain.Order" %>
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
                            <th scope="col">ID</th>
                            <th scope="col">Receiver Address</th>
                            <th scope="col">Receiver Name</th>
                            <th scope="col">Receiver Phone</th>
                            <th scope="col">Total Price</th>
                            <th scope="col" class="text-center">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% List<Order> OrderLists = (List<Order>) request.getAttribute("orders");
                            for (Order OrderList : OrderLists){
                        %>
                        <tr>
                            <td><%= OrderList.getId()%></td>
                            <td><%=OrderList.getReceiverAddress()%></td>
                            <td><%= OrderList.getReceiverName()%></td>
                            <td><%= OrderList.getReceiverPhone()%></td>
                            <td>$<%= OrderList.getTotalPrice()%></td>
                            <td>
                                <a href="/admin/order/orderdetail/<%= OrderList.getId()%>" ><button class="btn btn-warning mx-2" >Infomation</button></a>
                                <a href="/admin/order/orderdetail/<%= OrderList.getId()%>"><button class="btn btn-warning mx-4" >Edit</button></a>
                                <form action="/admin/order/delete/<%= OrderList.getId()%>" method="post" style="display: inline;">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <button class="btn btn-warning mx-2 submit-delete" type="submit">Delete</button>
                                </form>
                            </td>
                            <%}%>
                        </tr>
                        </tbody>
                    </table>
<%--                    <%--%>
<%--                        int totalPages = (int) request.getAttribute("totalPages");--%>
<%--                        int currentPage = (int) request.getAttribute("CurrentPage");--%>
<%--                    %>--%>
<%--                    <nav aria-label="Page navigation example">--%>
<%--                        <ul class="pagination justify-content-center">--%>
<%--                            <c:if test="<%=(currentPage != 0)%>">--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link text-light bg-dark " href="${pageContext.request.contextPath}/admin/product?page=<%=currentPage - 1%>" aria-label="Previous">--%>
<%--                                        <span aria-hidden="true">&laquo;</span>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </c:if>--%>
<%--                            <c:forEach begin="1" end="<%=totalPages%>" varStatus="loop">--%>
<%--                                <li class="page-item ">--%>
<%--                                    <a class="page-link text-light bg-dark" href="${pageContext.request.contextPath}/admin/product?page=${loop.index - 1}">--%>
<%--                                            ${loop.index}--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </c:forEach>--%>
<%--                            <c:if test="<%=(currentPage != totalPages - 1)%>">--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link text-light bg-dark" href="${pageContext.request.contextPath}/admin/product?page=<%=currentPage + 1%>" aria-label="Next">--%>
<%--                                        <span aria-hidden="true">&raquo;</span>--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </c:if>--%>
<%--                        </ul>--%>
<%--                    </nav>--%>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>

</div>
<script>
    let deleteButtons = document.querySelectorAll('.submit-delete');

    deleteButtons.forEach(function(button) {
        button.addEventListener('click', function (e) {
            if (!confirm('Bạn có chắc muốn xóa thông tin hay không ?')) {
                e.preventDefault();
            }
        });
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>
</body>
</html>