<html lang="en">
<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>User Info</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(() => {const avatarFile = $("#avatarFile");
            avatarFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#avatarPreview").attr("src", imgURL);
                $("#avatarPreview").css({ "display": "block"});
            });
        });
    </script>
</head>
<body class="bg-dark">
<jsp:include page="../layout/header.jsp" />
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp" />
    <div id="layoutSidenav_content">
        <%--@elvariable id="user" type="vn.project.laptopshop.domain.User"--%>
        <form:form action="/admin/user/confirmation" method="post" id="Main-form" class="row" enctype="multipart/form-data" modelAttribute="user">
            <div class="container mt-5">
                <div class="col-md-6 col-12 mx-auto">
                    <h2 id="demo" class="text-light">Create an User</h2>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <div class="form-group" style="display: flex;">
                        <div class="mb-3 col-md-6 mx-2">
                            <label class="text-light">Email</label>
                            <form:input path="email" name="email" class="form-control" placeholder="Enter your Email"/>
                            <label class="Validate-form"></label>
                        </div>
                        <div class="mb-3 col-md-6 mx-2">
                            <label class="text-light">Password</label>
                            <form:input path="password" name="password" class="form-control" type="password" placeholder="Enter your password" />
                            <label class="Validate-form"></label>
                        </div>
                    </div>
                    <div class="form-group" style="display: flex;">
                        <div class="mb-3 col-md-6 mx-2">
                            <label class="text-light">Phone Number</label>
                            <form:input path="phone" name="phone" class="form-control" placeholder="Enter your Phone Number" />
                            <label class="Validate-form"></label>
                        </div>
                        <div class="mb-3 col-md-6 mx-2">
                            <label class="text-light">Full Name</label>
                            <form:input path="fullName" name="fullName" class="form-control" placeholder="Enter your Name"/>
                            <label class="Validate-form"></label>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="text-light">Address</label>
                        <form:input path="address" name="address" class="form-control" placeholder="Enter your Address"/>
                        <label class="Validate-form"></label>
                    </div>
                    <div class="form-group" style="display: flex;">
                        <div class="mb-3 col-md-6 mx-2">
                            <label class="text-light">Role</label>
                            <form:select path="role.id" name="role" class="form-control">
                                <form:option value="1">Admin</form:option>
                                <form:option value="2">User</form:option>
                            </form:select>
                        </div>
                        <div class="mb-3 col-md-6 mx-2">
                            <label for="avatarFile" class="text-light">Upload File</label>
                            <input name="fileImg" class="form-control" id="avatarFile" accept=".jpg, .png, .jpeg" type="file"/>
                            <div class="col-12 mb-3">
                                <img style="max-height: 250px; display: none" alt="avatar preview" id="avatarPreview" />
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-warning">Create</button>
                </div>
            </div>
        </form:form>
        <jsp:include page="../layout/footer.jsp" />
    </div>
</div>
<script src="/js/Validator.js"></script>
<script>
    Validator({
    form: "#Main-form",
    labelValidate: '.Validate-form',
    checkValidate :[
        Validator.isEmail('#email'),
        Validator.isPassword('#password'),
        Validator.isName('#fullName'),
        Validator.isAddress('#address'),
        Validator.isPhoneNumber('#phone'),
    ]
});
</script>
</body>
</html>
