<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ministore</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/HomePage/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/HomePage/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/js" href="/js/HomePage/modernizr.js">
    <link rel="stylesheet" type="text/js" href="/js/HomePage/jquery-1.11.0.min.js">
    <link rel="stylesheet" type="text/js" href="/js/HomePage/Detail/plugins.js">
    <link rel="stylesheet" type="text/js" href="/js/HomePage/Detail/script.js">
    <link rel="stylesheet" type="text/css" href="css/HomePage/style.css">
</head>
<body class="body-register">

<div class="container-fluid col-12 col-md-6 RegisterForm">
    <div class="text-center">
        <a href="/"><img src=" /images/HomePage/main-logo.png" class="logo"></a>
        <h3 class=""><strong>Register</strong></h3>
    </div>
    <%--@elvariable id="RegisterUser" type="vn.project.laptopshop.domain.DTO.RegisterDTO"--%>
    <form:form action="/RegisterConfirm" modelAttribute="RegisterUser" method="POST">
        <c:set var="ErrorPassword">
            <form:errors path="confirmPassword" cssClass="text-danger"/>
        </c:set>
        <c:set var="ErrorPhone">
            <form:errors path="phone" cssClass="text-danger"/>
        </c:set>
        <c:set var="ErrorEmail">
            <form:errors path="email" cssClass="text-danger"/>
        </c:set>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <div class="form-group">
            <div class="">
                <label>Username</label>
                <form:input type="text" path="username" name="username" class="form-control" placeholder="Username"/>
            </div>
            <div class="">
                <label>Email</label>
                <form:input type="email" path="email"  name="username" class="form-control" placeholder="Email"/>
                <p>${ErrorEmail}</p>
            </div>
            <div class="">
                <label>Phone</label>
                <form:input type="text" path="phone" name="username" class="form-control" placeholder="Phone"/>
                <p>${ErrorPhone}</p>
            </div>
            <div class="">
                <label>Address</label>
                <form:input type="text" path="address"  name="username" class="form-control" placeholder="Address"/>
            </div>
            <div>
                <label>Password</label>
                <form:input type="password" path="password" name="username" class="form-control" placeholder="Password"/>
            </div>
            <div>
                <label>Confirm Password</label>
                <form:input type="password" path="confirmPassword" name="username" class="form-control" placeholder="Confirm Password"/>
                <p>${ErrorPassword}</p>
            </div>
            <div class="register-footer">
                <button type="submit" class="btn btn-primary">Register</button>
                <a href="/login">Already have an account ?</a>
            </div>
        </div>
    </form:form>
</div>
</body>