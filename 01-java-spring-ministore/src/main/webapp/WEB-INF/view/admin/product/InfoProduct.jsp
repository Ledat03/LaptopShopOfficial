<html lang="en">
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ page import="vn.project.laptopshop.domain.Product" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <title>User Info</title>
</head>
<body class="bg-dark text-light">
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <% Product InfoProduct = (Product) request.getAttribute("product");%>
            <h1 class="text-light" style="text-align: center;color: gray">Product Infomation</h1>
            <div class="container col-6 col-12 mt-5">
                <table class="table table-bordered">
                    <thead>
                    <th class="bg-dark text-light">ID</th>
                    <th class="bg-dark text-light">Name</th>
                    <th class="bg-dark text-light">Image</th>
                    <th class="bg-dark text-light">Price</th>
                    <th class="bg-dark text-light">Description </th>
                    <th class="bg-dark text-light">Short Description</th>
                    <th class="bg-dark text-light">Quantity</th>
                    <th class="bg-dark text-light">Sold</th>
                    <th class="bg-dark text-light">Factory</th>
                    <th class="bg-dark text-light">Target</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="bg-dark text-light"><%= InfoProduct.getId()%></td>
                        <td class="bg-dark text-light"><%= InfoProduct.getNameproduct()%></td>
                        <td class="bg-dark text-light">
                            <img src="/images/product/<%=InfoProduct.getImage()%>" alt="Product Image" height="50" width="50">
                        </td>
                        <td class="bg-dark text-light"><%= InfoProduct.getPrice()%></td>
                        <td class="bg-dark text-light"><%= InfoProduct.getDescription()%></td>
                        <td class="bg-dark text-light"><%= InfoProduct.getShortdes()%></td>
                        <td class="bg-dark text-light"><%= InfoProduct.getQuantity()%></td>
                        <td class="bg-dark text-light"><%= InfoProduct.getSold()%></td>
                        <td class="bg-dark text-light"><%= InfoProduct.getFactory()%></td>
                        <td class="bg-dark text-light"><%= InfoProduct.getTarget()%></td>
                    </tr>
                    </tbody>
                </table>
                <a href="/admin/product"><button type="button" class="btn btn-warning">Back</button></a>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>

    </div>

</div>
</body>
</html>
