<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page import="java.util.List" %>
    <%@ page import="vn.project.laptopshop.domain.Product" %>
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
            <div class="filter-s-categories">
                <div class="filter">
                    <Span class="filters">Filters</Span>
                    <button class="btn-filter border-0" type="button">
                        Clear All
                    </button>
                </div>
                <div class="filters-general">
                    <div class="brand">
                        <div class="brand-title">Brand</div>
                        <img src="/images/HomePage/vuesax-outline-arrow-down19.svg" class="dropdown-icon-filter">
                    </div>
                    <div id="brandFilterContainer">
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <h4 class="form-check-label px-2" for="flexRadioDefault1">
                                Asus
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
                            <h4 class="form-check-label px-2" for="flexRadioDefault2">
                                Apple
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="radio" name="flexRadioDefault" id="flexRadioDefault3" >
                            <h4 class="form-check-label px-2" for="flexRadioDefault2">
                                Acer
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="radio" name="flexRadioDefault" id="flexRadioDefault4" >
                            <h4 class="form-check-label px-2" for="flexRadioDefault2">
                                Dell
                            </h4>
                        </div>
                        <div class="form-check d-flex justify-content-start">
                            <input class="form-check-input mx-1" type="radio" name="flexRadioDefault" id="flexRadioDefault5" >
                            <h4 class="form-check-label px-2" for="flexRadioDefault2">
                                Lenovo
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
                            <input type="number" id="minPrice" placeholder="Min">
                            <span>_</span>
                            <input type="number" id="maxPrice" placeholder="Max">
                        </div>
                    </div>
                </div>
            </div>
            <div class="frame-26087126 col-12 col-md-9">
                <div class="sort">
                    <div class="sort-container">
                        <div class="dropdown-header d-flex">
                            <span class="sort-label">Sort by:</span>
                            <div class="current-selection">
                                <img class="dropdown-arrow" src="/images/HomePage/vuesax-outline-arrow-down19.svg"
                                     alt="Dropdown arrow">
                            </div>
                        </div>
                        <div class="dropdown-content" id="sortDropdown">
                            <div class="sort-option" data-sort-key="price" data-sort-order="asc">
                                Price: Ascending
                            </div>
                            <div class="sort-option" data-sort-key="price" data-sort-order="desc">
                                Price: Descending
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    List<Product> productListsByTarget = (List<Product>) request.getAttribute("ProductListByPage");
                    List<Product> productLists = (List<Product>) request.getAttribute("ProductList");
                    String target = (String) request.getAttribute("target");
                    int currentPage = (int) request.getAttribute("currentPage");
                    int totalPage = (int) request.getAttribute("TotalPage");
                    int totalPageAll = (int) request.getAttribute("TotalPageAll");
                %>
                <c:if test="<%= target != null %>">
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
                                <c:if test="<%=currentPage != 0%>">
                                    <a class="page-link text-dark" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </c:if>
                            </li>
                            <%
                                for (int i = 0;i<totalPage;i++){
                            %>
                            <li class="page-item"><a class="page-link text-dark" href="/Explore?target=<%=target%>&page=<%=i%>"><%=i+1%></a></li>
                            <%
                                }
                            %>
                            <li class="page-item">
                                <c:if test="<%=currentPage != totalPage - 1%>">
                                    <a class="page-link text-dark" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </c:if>
                            </li>
                        </ul>
                    </nav>
                </c:if>
                <c:if test="<%=target == null%>">
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
                                <c:if test="<%=currentPage != 0%>">
                                    <a class="page-link text-dark" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </c:if>
                            </li>
                            <%
                                for (int i = 0;i<totalPageAll;i++){
                            %>
                            <li class="page-item"><a class="page-link text-dark" href="/Explore?page=<%=i%>"><%=i+1%></a></li>
                            <%
                                }
                            %>
                            <li class="page-item">
                                <c:if test="<%=currentPage != totalPageAll - 1%>">
                                    <a class="page-link text-dark" href="#" aria-label="Next">
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