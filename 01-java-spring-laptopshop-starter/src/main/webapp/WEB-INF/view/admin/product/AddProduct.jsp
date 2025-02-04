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
        $(document).ready(() => {const avatarFile = $("#productFile");
            avatarFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#ProductPreview").attr("src", imgURL);
                $("#ProductPreview").css({ "display": "block"});
            });
        });
    </script>
</head>
<body class="bg-dark">
<jsp:include page="../layout/header.jsp" />
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp" />
    <div id="layoutSidenav_content">
        <%--@elvariable id="product" type="vn.project.laptopshop.domain.Product"--%>
        <form:form action="/admin/product/confirmation" method="post" id="Main-form" class="row" enctype="multipart/form-data">
            <div class="container mt-auto">
                <div class="col-md-6 col-12 mx-auto">
                    <h2 id="demo" class="text-light">Add new Product</h2>
                    <div class="form-group" style="display: flex;">
                        <div class="mb-3 col-md-6">
                            <label class="text-light">Name</label>
                            <input path="nameproduct" name="nameproduct" class="form-control" placeholder="Enter Name Product"/>
                            <label class="Validate-form"></label>
                        </div>
                        <div class="mb-3 col-md-6 mx-4">
                            <label class="text-light">Price</label>
                            <input path="price" name="price" class="form-control" type="text" placeholder="Price" />
                            <label class="Validate-form"></label>
                        </div>
                    </div>
                    <div class="form-group" style="display: flex;">
                        <div class="mb-3 col-md-6">
                            <label class="text-light">Short Description</label>
                            <input path="shortdes" name="shortdes" class="form-control"/>
                            <label class="Validate-form"></label>
                        </div>
                        <div class="mb-3 col-md-6 mx-4">
                            <label class="text-light">Quantity</label>
                            <input path="quantity" name="quantity" class="form-control" />
                            <label class="Validate-form"></label>
                        </div>
                    </div>
                    <div class="mb-3 col-md-12 mx-4">
                        <label class="text-light">Detail Description</label>
                        <textarea path="description" name="description" class="form-control"></textarea>
                        <label class="Validate-form"></label>
                    </div>
                    <div class="form-group" style="display: flex;">
                        <div class="mb-3 col-md-6">
                            <label class="text-light">Factory</label>
                            <select path="factory" name="factory" class="form-control">
                                <option value="Apple">Apple</option>
                                <option value="Samsung">Samsung</option>
                                <option value="Acer">Acer</option>
                                <option value="Asus">Asus</option>
                            </select>
                        </div>
                        <div class="mb-3 col-md-6 mx-4">
                            <label class="text-light">Target</label>
                            <select path="target" name="target" class="form-control">
                                <option value="Gaming">Gaming</option>
                                <option value="Study">Sinh Viên-Văn Phòng</option>
                                <option value="Design">Thiết kế đồ họa</option>
                                <option value="Thin">Mỏng nhẹ</option>
                                <option value="Business">Doanh nhân</option>
                                <option value="Phone">Điện Thoại</option>
                            </select>
                        </div>
                </div>
                    <div class="mb-3 col-md-12 mx-4">
                    <label for="productFile" class="text-light">Upload File</label>
                    <input name="ProductImage" class="form-control" id="productFile" accept=".jpg, .png, .jpeg" type="file"/>
                    <div class="col-12 mb-3">
                        <img style="max-height: 250px; display: none" alt="avatar preview" id="ProductPreview" />
                    </div>
                </div>
                <button type="submit" class="btn btn-warning">Create</button>
            </div>
        </form:form>
    </div>
    <jsp:include page="../layout/footer.jsp" />
</div>
</body>
</html>
