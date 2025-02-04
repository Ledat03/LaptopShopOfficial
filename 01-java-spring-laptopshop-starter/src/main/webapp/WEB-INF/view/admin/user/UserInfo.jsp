<html lang="en">
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="vn.project.laptopshop.domain.User" %>
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
            <% User InfoUser = (User) request.getAttribute("InfoUser");%>
            <h1 class="text-light" style="text-align: center;color: gray">User Infomation</h1>
            <div class="container col-6 col-12 mt-5">
                <table class="table table-bordered">
                    <thead>
                    <th class="bg-dark text-light">ID</th>
                    <th class="bg-dark text-light">Gmail</th>
                    <th class="bg-dark text-light">Password</th>
                    <th class="bg-dark text-light">Full Name</th>
                    <th class="bg-dark text-light">Phone</th>
                    <th class="bg-dark text-light">Address</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="bg-dark text-light"><%= InfoUser.getUser_id() %></td>
                        <td class="bg-dark text-light"><%= InfoUser.getEmail() %></td>
                        <td class="bg-dark text-light"><%= InfoUser.getPassword() %></td>
                        <td class="bg-dark text-light"><%= InfoUser.getFullName() %></td>
                        <td class="bg-dark text-light"><%= InfoUser.getPhone() %></td>
                        <td class="bg-dark text-light"><%= InfoUser.getAddress() %></td>
                    </tr>
                    </tbody>
                </table>
                <a href="/admin/user"><button type="button" class="btn btn-warning">Back</button></a>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
        
    </div>

</div>
</body>
</html>
