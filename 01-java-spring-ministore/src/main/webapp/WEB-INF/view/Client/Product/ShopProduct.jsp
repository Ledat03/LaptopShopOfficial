<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page import="java.util.List" %>
    <%@ page import="vn.project.laptopshop.domain.Product" %>
    <%@ page import="vn.project.laptopshop.domain.DTO.FilterDTO" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/HomePage/Item/styleProductList.css">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
    <script src="/js/HomePage/ProductList.js"></script>
    <title>Document</title>
</head>
<body>
<header>
    <jsp:include page="../Layout/Header.jsp"/>
</header>
<main>
    <div class="desktop-products-01">
        <div class="categories">
            <a class="product-categories" href="/Explore?target=Phone">
                <div class="vuesax-outline-mobile">
                    <img class="vuesax-outline-mobile2" src="/images/HomePage/vuesax-outline-mobile1.svg"/>
                </div>
                <span class="mobile">Mobile</span>
            </a>
            <a class="product-categories" href="/Explore?target=Laptop">
                <div class="vuesax-outline-monitor">
                    <img class="vuesax-outline-monitor2" src="/images/HomePage/vuesax-outline-monitor1.svg"/>
                </div>
                <span class="mobile">Laptop</span>
            </a>
            <a class="product-categories" href="/Explore?target=Tablet">
                <div class="vuesax-outline-mobile3">
                    <img class="vuesax-outline-mobile4" src="/images/HomePage/vuesax-outline-mobile3.svg"/>
                </div>
                <span class="tablet">Tablet</span>
            </a>
            <a class="product-categories" href="/Explore?target=Headphone">
                <div class="vuesax-outline-headphones">
                    <img
                            class="vuesax-outline-headphones2"
                            src="/images/HomePage/vuesax-outline-headphones1.svg"
                    />
                </div>
                <span class="mobile">Audio</span>
            </a>
            <a class="product-categories" href="/Explore?target=Wearable">
                <div class="vuesax-outline-watch-status" href="/Explore?target=Wearable">
                    <img class="vuesax-outline-watch-status2" src="/images/HomePage/vuesax-outline-watch-status1.svg"/>
                </div>
                <span class="mobile">Wearable</span>
            </a>
            <a class="product-categories">
                <div class="vuesax-outline-game">
                    <img class="vuesax-outline-game2" src="/images/HomePage/vuesax-outline-game1.svg"/>
                </div>
                <span class="mobile">Gaming</span>
            </a>
            <a class="product-categories">
                <div class="vuesax-outline-data">
                    <img class="vuesax-outline-data2" src="/images/HomePage/vuesax-outline-data1.svg"/>
                </div>
                <span class="mobile">Network</span>
            </a>
            <a class="product-categories">
                <div class="vuesax-outline-devices">
                    <img class="vuesax-outline-devices2" src="/images/HomePage/vuesax-outline-devices1.svg"/>
                </div>
                <span class="mobile">Accessories</span>
            </a>
        </div>
        <div class="d-flex">
            <%--@elvariable id="FilterDTO" type="vn.project.laptopshop.domain.DTO.FilterDTO"--%>
            <form:form action="/Explore" method="get" id="filterForm" modelAttribute="FilterDTO">
            <div class="filter-s-categories">
                <div class="filter">
                    <Span class="filters">Filters</Span>
                    <a class="btn-filter border-0 renewFilter" href="/Explore">
                        Clear All
                    </a>
                </div>
                <div class="filters-general">
                    <div class="brand">
                        <div class="brand-title">Brand</div>
                        <img src="/images/HomePage/vuesax-outline-arrow-down19.svg" class="dropdown-icon-filter">
                    </div>
                    <div id="brandFilterContainer">
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="FactoryList" id="flexRadioDefault1" value="Asus">
                            <h4 class="form-check-label px-2" for="flexRadioDefault1">
                                Asus
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="FactoryList" id="flexRadioDefault2" value="Apple">
                            <h4 class="form-check-label px-2" for="flexRadioDefault2">
                                Apple
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="FactoryList" id="flexRadioDefault3" value="Acer">
                            <h4 class="form-check-label px-2" for="flexRadioDefault3">
                                Acer
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="FactoryList" id="flexRadioDefault4" value="Dell">
                            <h4 class="form-check-label px-2" for="flexRadioDefault4">
                                Dell
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="FactoryList" id="flexRadioDefault5" value="Lenovo">
                            <h4 class="form-check-label px-2" for="flexRadioDefault5">
                                Lenovo
                            </h4>
                        </div>
                    </div>
                </div>
                <div class="filters-general">
                    <div class="target">
                        <div class="brand-title">Type</div>
                        <img src="/images/HomePage/vuesax-outline-arrow-down19.svg" class="dropdown-icon-target">
                    </div>
                     <div id="targetFilterContainer">
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="TargetList" id="flexRadioDefault6" value="Phone">
                            <h4 class="form-check-label px-2" for="flexRadioDefault6">
                                Phone
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="TargetList" id="flexRadioDefault7" value="Laptop">
                            <h4 class="form-check-label px-2" for="flexRadioDefault7">
                                Laptop
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="TargetList" id="flexRadioDefault8" value="Tablet">
                            <h4 class="form-check-label px-2" for="flexRadioDefault8">
                                Tablet
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="TargetList" id="flexRadioDefault9" value="Wearable">
                            <h4 class="form-check-label px-2" for="flexRadioDefault9">
                                Wearable
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="checkbox" name="TargetList" id="flexRadioDefault10" value="Headphone">
                            <h4 class="form-check-label px-2" for="flexRadioDefault10">
                                Headphone
                            </h4>
                        </div>
                    </div>
                </div>
                <div class="component-9">
                    <div class="price">
                        <div class="price-title">Price</div>
                        <img src="/images/HomePage/vuesax-outline-arrow-down19.svg" id="dropdown-icon-price">

                    </div>
                    <div id="priceFilterContainer">
                        <div class="setPrice d-flex">
                            <input  type="number" id="minPrice" placeholder="Min" name="low"/>
                            <span>_</span>
                            <input  type="number" id="maxPrice" placeholder="Max" name="high"/>
                        </div>
                    </div>
                </div>
                <button type="submit" class="SubmitFilterBtn">Submit</button>
            </div>
            </form:form>
                <%
                    String target = (String) request.getAttribute("target");
                %>
            <div class="frame-26087126 col-12 col-md-9">
                <c:if test="<%=(target != null)%>">
                    <%
                        List<Product> productListsByTarget = (List<Product>) request.getAttribute("ProductListByTarget");
                        int totalPageByTarget = (int) request.getAttribute("TotalPageByTarget");
                        int currentPageByTarget = (int) request.getAttribute("CurrentPageByTarget");
                    %>
                    <div class="frame-26087120 d-flex flex-md-wrap">
                        <%
                            for (Product product : productListsByTarget) {
                        %>
                        <div class="product-card">
                            <img src="/images/product/<%= product.getImage()%>" class="image"/>
                            <a href="/Product/Detail/<%=product.getId()%>?target=<%=product.getTarget()%>">
                                <h5 class="title"><%= product.getNameproduct()%></h5>
                            </a>
                            <div class="info">
                                <div class="price-heart">
                                    <div class="button2">
                                        <div class="vuesax-outline-shopping-cart">
                                            <img class="vuesax-outline-shopping-cart2"
                                                 src="/images/HomePage/vuesax-outline-shopping-cart1.svg"/>
                                        </div>
                                        <form action="/add-to-cart/productList/<%= product.getId()%>" method="post">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                            <button type="submit" style="border: none; background: none;">Add to cart
                                            </button>
                                        </form>
                                    </div>
                                    <div class="price-rate">
                                        <div class="price3">
                                            <div class="frame3">
                                                <p class="new-price">$<%= product.getPrice()%>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <nav class="mx-auto">
                        <ul class="pagination">
                            <li class="page-item">
                                <c:if test="<%=currentPageByTarget != 0%>">
                                    <a class="page-link text-dark" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </c:if>
                            </li>
                            <%
                                for (int i = 0;i<totalPageByTarget;i++){
                            %>
                            <li class="page-item"><a class="page-link text-dark" href="/Explore?target=<%=target%>&page=<%=i%>"><%=i+1%></a></li>
                            <%
                                }
                            %>
                            <li class="page-item">
                                <c:if test="<%=currentPageByTarget != totalPageByTarget - 1%>">
                                    <a class="page-link text-dark" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </c:if>
                            </li>
                        </ul>
                    </nav>
                </c:if>
                <%
                    String name = (String) request.getAttribute("name");
                    String Url = (String) request.getAttribute("QueryURL");
                %>
                <c:if test="<%=(target == null && name == null)%>">
                    <%
                        List<Product> productLists = (List<Product>) request.getAttribute("ProductList");
                        int totalPageAll = (int) request.getAttribute("TotalPageAll");
                        int currentPageAll = (int) request.getAttribute("CurrentPageAll");

                    %>
                    <div class="frame-26087120 d-flex flex-md-wrap">
                        <%
                            for (Product product : productLists) {
                        %>
                        <div class="product-card">
                            <img src="/images/product/<%= product.getImage()%>" class="image"/>
                            <a href="/Product/Detail/<%=product.getId()%>?target=<%=product.getTarget()%>">
                                <h5 class="title"><%= product.getNameproduct()%></h5>
                                <span class="title title-factory text-dark"><%= product.getFactory()%></span>
                            </a>
                            <div class="info">
                                <div class="price-heart">
                                    <div class="button2">
                                        <div class="vuesax-outline-shopping-cart">
                                            <img class="vuesax-outline-shopping-cart2"
                                                 src="/images/HomePage/vuesax-outline-shopping-cart1.svg"/>
                                        </div>
                                        <form action="/add-to-cart/productList/<%= product.getId()%>" method="post">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                            <button type="submit" style="border: none; background: none;">Add to cart
                                            </button>
                                        </form>
                                    </div>
                                    <div class="price-rate">
                                        <div class="price3">
                                            <div class="frame3">
                                                <p class="new-price">$<%= product.getPrice()%>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <nav class="mx-auto">
                        <ul class="pagination">
                            <li class="page-item">
                                <c:if test="<%=currentPageAll != 0%>">
                                    <a class="page-link text-dark" href="/Explore?page=<%= currentPageAll - 1%><%=Url%>"
                                       aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </c:if>
                            </li>
                            <%
                                for (int i = 0; i < totalPageAll; i++) {
                            %>
                            <li class="page-item">
                                <a class="page-link text-dark" href="/Explore?page=<%=i%><%=Url%>"><%=i+1%></a>
                            </li>
                            <%
                                }
                            %>
                            <li class="page-item">
                                <c:if test="<%=currentPageAll != totalPageAll - 1%>">
                                    <a class="page-link text-dark" href="/Explore?page=<%= currentPageAll + 1%><%=Url%>" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </c:if>
                            </li>
                        </ul>
                    </nav>

                </c:if>
                <c:if test="<%=(name != null)%>">
                    <%
                        List<Product> productListByName = (List<Product>) request.getAttribute("ProductListByName");
                        int totalPageByName = (int) request.getAttribute("TotalPageByName");
                        int currentPageByName = (int) request.getAttribute("CurrentPageByName");
                    %>
                    <div class="frame-26087120 d-flex flex-md-wrap">
                        <%
                            for (Product product : productListByName) {
                        %>
                        <div class="product-card">
                            <img src="/images/product/<%= product.getImage()%>" class="image"/>
                            <a href="/Product/Detail/<%=product.getId()%>?target=<%=product.getTarget()%>">
                                <h5 class="title"><%= product.getNameproduct()%></h5>
                                <span class="title title-factory text-dark"><%= product.getFactory()%></span>
                            </a>
                            <div class="info">
                                <div class="price-heart">
                                    <div class="button2">
                                        <div class="vuesax-outline-shopping-cart">
                                            <img class="vuesax-outline-shopping-cart2"
                                                 src="/images/HomePage/vuesax-outline-shopping-cart1.svg"/>
                                        </div>
                                        <form action="/add-to-cart/productList/<%= product.getId()%>" method="post">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                            <button type="submit" style="border: none; background: none;">Add to cart
                                            </button>
                                        </form>
                                    </div>
                                    <div class="price-rate">
                                        <div class="price3">
                                            <div class="frame3">
                                                <p class="new-price">$<%= product.getPrice()%>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                    <nav class="mx-auto">
                        <ul class="pagination">
                            <li class="page-item">

                                <c:if test="<%=currentPageByName != 0%>">
                                    <a class="page-link text-dark" href="/Explore?page=<%= currentPageByName - 1%><%=Url%>"
                                       aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </c:if>
                            </li>
                            <%
                                for (int i = 0; i < totalPageByName; i++) {
                            %>
                            <li class="page-item">
                                <a class="page-link text-dark" href="/Explore?page=<%=i%><%=Url%>"><%=i+1%></a>
                            </li>
                            <%
                                }
                            %>
                            <li class="page-item">
                                <c:if test="<%=currentPageByName != totalPageByName - 1%>">
                                    <a class="page-link text-dark" href="/Explore?page=<%= currentPageByName + 1%><%=Url%>" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </c:if>
                            </li>
                        </ul>
                    </nav>

                </c:if>
            </div>
        </div>
    </div>
</main>

<footer>
    <jsp:include page="../Layout/Footer.jsp"/>
</footer>
</body>
</html>