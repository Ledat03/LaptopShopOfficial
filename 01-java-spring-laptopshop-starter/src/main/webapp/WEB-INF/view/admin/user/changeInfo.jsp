
<html>
<head>
    <%@ page import="vn.hoidanit.laptopshop.domain.User" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <meta charset="utf-8"></meta>
    <title>User</title>
</head>
<body>
<%--@elvariable id="infouser" type="vn.hoidanit.laptopshop.domain.User"--%>
<form:form action="/admin/user/updateconfirm" method="post" modelAttribute="infouser">
    <div class="container mt-5">
        <div class="col-md-6 col-12 mx-auto">
            <h2>Update User Information</h2>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="row mb-3" style="display: none">
                <label>ID:</label>
                <form:input type="text" path="id" class="form-control" />
            </div>
            <div class="row mb-3">
                <label>Email:</label>
                <form:input type="email" path="email" class="form-control"/>
            </div>
            <div class="row mb-3">
                <label>Phone Number:</label>
                <form:input type="number" path="phone" class="form-control"/>
            </div>
            <div class="row mb-3">
                <label>Full Name:</label>
                <form:input type="text" path="fullName" class="form-control"/>
            </div>
            <div class="row mb-3">
                <label>Address:</label>
                <form:input type="text" path="address" class="form-control"/>
            </div>
            <button type="submit" class="btn btn-warning" value="Submit">Change</button>
        </div>
    </div>
</form:form>
</body>
</html>