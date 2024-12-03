<html>
<head>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <meta charset="utf-8"></meta>
    <title>User</title>
    </head>
<body>
<form action="/admin/user/confirmation" method="post">
    <div class="container mt-5">
        <div class="col-md-6 col-12 mx-auto">
            <h2>Create an User </h2>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="row mb-3">
                <label>Email</label>
                <input type="email" name="email" class="form-control"></input>
            </div>
            <div class="row mb-3">
                <label>Password:</label>
                <input type="password" name="password" class="form-control"></input>
            </div>
            <div class="row mb-3">
                <label>Phone Number:</label>
                <input type="number" name="phone" class="form-control"></input>
            </div>
            <div class="row mb-3">
                <label>Full Name:</label>
                <input type="text" name="fullName" class="form-control"></input>
            </div>
            <div class="row mb-3">
                <label>Address:</label>
                <input type="text" name="address" class="form-control"></input>
            </div>

            <button type="submit" class="btn btn-primary" value="Submit">Create</button>
        </div>
    </div>
</form>
</body>
</html>