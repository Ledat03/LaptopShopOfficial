<html lang="en">
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="/css/styles.css" rel="stylesheet" />
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <main >
            <%--@elvariable id="infouser" type="vn.project.laptopshop.domain.User"--%>
            <form:form action="/admin/user/updateconfirm" method="post" modelAttribute="infouser">
                <div class="container mt-5">
                    <div class="col-md-6 col-12 mx-auto">
                        <h2>Update User Information</h2>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="row mb-3" style="display: none">
                            <label>ID:</label>
                            <form:input type="text" path="user_id" class="form-control" />
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
                        <a href="/admin/user"><button class="btn btn-warning">Cancel</button></a>
                    </div>
                </div>
            </form:form>

        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>

</div>
</body>
</html>
