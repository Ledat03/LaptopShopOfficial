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
    <script>
        $(document).ready(() => {
            const avatarFile = $("#productFile");
            let linkfile = "${product.image}";
            if (linkfile) {
                let url = "/images/product/"+linkfile;
                $("#ProductPreview").attr("src", url);
                $("#ProductPreview").css({ "display": "block"});
            }
            avatarFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#ProductPreview").attr("src", imgURL);
                $("#ProductPreview").css({ "display": "block"});
            });
        });
    </script>
</head>
<body class="bg-dark text-light">
<jsp:include page="../layout/header.jsp"/>
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp"/>
    <div id="layoutSidenav_content">
        <a href="/admin/product"><button class="btn btn-warning">Back</button></a>
        <main >
            <%--@elvariable id="product" type="vn.project.laptopshop.domain.Product"--%>
            <form:form action="/admin/product/Editconfirm" method="post" modelAttribute="product" enctype="multipart/form-data">
                <div class="container mt-5">
                    <div class="col-md-6 col-12 mx-auto">
                        <h2>Update Product Information</h2>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="row mb-3" style="display: none">
                            <label>ID:</label>
                            <form:input type="text" path="id" class="form-control" />
                        </div>
                        <div class="row mb-3">
                            <label>Name:</label>
                            <form:input type="text" path="nameproduct" class="form-control"/>
                        </div>
                        <div class="row mb-3">
                            <label>Short Description:</label>
                            <form:input type="text" path="shortdes" class="form-control"/>
                        </div>
                        <div class="row mb-3">
                            <label>Price:</label>
                            <form:input type="number" path="price" class="form-control"/>
                        </div>

                        <div class="row mb-3">
                            <label>Description:</label>
                            <textarea type="text" name="description" path="description" class="form-control" >${product.description}</textarea>
                        </div>
                        <div class="row mb-3">
                            <label>Quantity:</label>
                            <form:input type="text" path="quantity" class="form-control"/>
                        </div>
                        <div class="row mb-3">
                            <label>Sold:</label>
                            <form:input type="text" path="sold" class="form-control"/>
                        </div>
                        <div class="row mb-3">
                            <label>Factory:</label>
                            <form:input type="text" path="factory" class="form-control"/>
                        </div>
                        <div class="row mb-3">
                            <label>Target:</label>
                            <form:input type="text" path="target" class="form-control"/>
                        </div>
                        <div class="mb-3 col-md-12 mx-4">
                            <label for="productFile" class="text-light">Image</label>
                            <input name="ProductImage" class="form-control" id="productFile" accept=".jpg, .png, .jpeg, .webp" type="file" src="/images/product/${product.image}"/>
                            <div class="col-12 mb-3">
                                <img style="max-height: 250px; display: none" alt="avatar preview" id="ProductPreview" />
                            </div>
                        </div>
                        <button type="submit" class="btn btn-warning" value="Submit">Change</button>
                    </div>
                </div>
            </form:form>

        </main>
        <jsp:include page="../layout/footer.jsp"/>
    </div>

</div>
</body>
</html>
