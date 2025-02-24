
<!DOCTYPE html>
<html>
<head>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body class="body-login">
<div class="loginForm">
    <div class="Background-login"></div>
    <div class="container-fluid col-12 col-md-4 Login-Form">
        <div class="text-center">
            <a href="/"><img src=" /images/HomePage/main-logo.png" class="logo"></a>
            <h4><strong>LOG IN</strong></h4>
        </div>
        <form:form action="/login">
            <div class="form-group">
                <div class="loginElement">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" placeholder="Username"></input>
                </div>
                <div class="loginElement">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" placeholder="Password"></input>
                    <a href="">Forgot Password?</a>
                </div>
                <c:if test="${param.error != null}">
                    <div class="my-2" style="color: red;">Invalid email or password.</div>
                </c:if>
                <div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </div>
                <div class="loginElement">
                    <button type="submit" class="btn btn-primary">Sign In</button>
                    <a href="/register">Don't have an account yet?</a>
                </div>
            </div>
        </form:form>
    </div>
</div>

</body>