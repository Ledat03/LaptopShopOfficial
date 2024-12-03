
<html>
<head>
    <%@page import="vn.hoidanit.laptopshop.domain.User" %>
    <%@ page import="java.util.List" %>
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
<div class="col-md-6 col-12 mx-auto mt-5">
<div class="d-flex justify-content-between " >
    <h1>User Information</h1>
    <form action="/admin/user/create",method = "get">
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
<table class="table table-bordered">
    <thead>
        <th scope="col">ID</th>
        <th scope="col">Email</th>
        <th scope="col">Full Name</th>
        <th scope="col">Action</th>
    </thead>
    <tbody>

    <% List<User> Info = (List<User>) request.getAttribute("InfoUser");
        for (User InfoU : Info){
        %>
    <tr>
        <td><p><%= InfoU.getId()%></p></td>
        <td><p><%= InfoU.getEmail()%></p></td>
        <td><p><%= InfoU.getFullName()%></p></td>
        <td class="">
            <div class="btn-group mx-5">
                <a href="/admin/user/change/<%= InfoU.getId() %>"><button class="btn btn-success mx-3">Change Info</button></a>
                <a href="/admin/user/delete/<%= InfoU.getId() %>"><button class="btn btn-danger mx-3">Delete Info</button></a>
                <a href="/admin/user/infoUser/<%= InfoU.getId() %>"><button class="btn btn-primary mx-3">Information</button></a>
            </div>
        </td>
    </tr>
    <% } %>

    </tbody>
</table>
</div>
</body>
</html>