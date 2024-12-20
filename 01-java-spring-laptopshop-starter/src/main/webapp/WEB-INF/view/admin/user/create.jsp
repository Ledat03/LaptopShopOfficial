
<html lang="en">
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(() => {
            const avatarFile = $("#avatarFile");
            avatarFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#avatarPreview").attr("src", imgURL);
                $("#avatarPreview").css({ "display": "block" });
            });
        });
    </script>
</head>
<body>
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content">
        <main>
            <%--@elvariable id="user" type="vn.hoidanit.laptopshop.domain.User"--%>
            <form:form action="/admin/user/confirmation" method="post" class="row" modelAttribute="user" enctype="multipart/form-data">
                <div class="container mt-5">
                    <div class="col-md-6 col-12 mx-auto">
                        <h2>Create an User </h2>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="form-group" style="display: flex;">
                            <div class="mb-3 col-md-6 mx-2">
                                <label>Email</label>
                                <form:input type="email" path="email" name="email" class="form-control"></form:input>
                            </div>
                            <div class="mb-3 col-md-6 mx-2">
                                <label>Password:</label>
                                <form:input type="password" path="password" name="password" class="form-control"></form:input>
                            </div>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <div class="mb-3 col-md-6 mx-2">
                                <label>Phone Number:</label>
                                <form:input type="number" path="phone" name="phone" class="form-control"></form:input>
                            </div>
                            <div class="mb-3 col-md-6 mx-2">
                                <label>Full Name:</label>
                                <form:input type="text" path="fullName" name="fullName" class="form-control"></form:input>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label>Address:</label>
                            <form:input type="text" path="address" name="address" class="form-control"></form:input>
                        </div>
                        <div class="form-group" style="display: flex;">
                            <div class="mb-3 col-md-6 mx-2">
                                <label>Role</label>
                                <form:select name="role" class="form-control" path="role.rolename">
                                    <form:option value="admin">Admin</form:option>
                                    <form:option value="user">User</form:option>
                                </form:select>
                            </div>
                            <div class="mb-3 col-md-6 mx-2">
                                <label for="avatarFile" class="form-label">Upload File</label>
                                <form:input path="avatar" name="FileAnh" class="form-control" id="avatarFile" accept=".jpg, .png, .jpeg" type="file" />
                                <div class="col-12 mb-3">
                                    <img style="max-height: 250px; display: none" alt="avatar preview" id="avatarPreview"/>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" value="Submit">Create</button>
                    </div>
                </div>
            </form:form>
        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>

</div>
</body>
</html>
