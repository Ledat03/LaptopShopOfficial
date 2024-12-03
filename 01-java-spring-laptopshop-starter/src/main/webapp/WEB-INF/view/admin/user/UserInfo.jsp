
<html>
<head>
    <%@page import="vn.hoidanit.laptopshop.domain.User" %>
    <%@ page import="java.util.List" %>
    <%@ page import="org.springframework.web.bind.annotation.ModelAttribute" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <meta charset="utf-8"></meta>
    <title>User Information</title>
</head>
<body>
<% User InfoUser = (User) request.getAttribute("InfoUser");%>
<h1 style="text-align: center;color: gray">User Infomation</h1>
<div class="container col-6 col-12 mt-5">
    <table class="table table-bordered">
        <thead>
        <th>ID</th>
        <th>Gmail</th>
        <th>Password</th>
        <th>Full Name</th>
        <th>Phone</th>
        <th>Address</th>
        </thead>
        <tbody>
        <tr>
            <td><%= InfoUser.getId() %></td>
            <td><%= InfoUser.getEmail() %></td>
            <td><%= InfoUser.getPassword() %></td>
            <td><%= InfoUser.getFullName() %></td>
            <td><%= InfoUser.getPhone() %></td>
            <td><%= InfoUser.getAddress() %></td>
        </tr>
        </tbody>
    </table>
    <a href="/admin/user"><button type="button" class="btn btn-primary">Back</button></a>
</div>
</body>
</html>