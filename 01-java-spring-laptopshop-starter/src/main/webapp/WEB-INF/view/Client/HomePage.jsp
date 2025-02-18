<%@ page import="java.util.List" %>
<%@ page import="vn.project.laptopshop.domain.Product" %>
<%@ page import="vn.project.laptopshop.domain.User" %>
<%@ page import="vn.project.laptopshop.domain.CartDetail" %>
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
    <link rel="stylesheet" type="text/css" href="css/HomePage/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/js" href="/js/HomePage/modernizr.js">
</head>
<body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" tabindex="0">
<jsp:include page="Layout/Header.jsp"/>
<section id="billboard" class="position-relative overflow-hidden bg-light-blue">
    <div class="swiper main-swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-md-6">
                            <div class="banner-content">
                                <h1 class="display-2 text-uppercase text-dark pb-5">Your Products Are Great.</h1>
                                <a href="shop.html" class="btn btn-medium btn-dark text-uppercase btn-rounded-none">Shop Product</a>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="image-holder">
                                <img src="images/HomePage/banner-image.png" alt="banner">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="container">
                    <div class="row d-flex flex-wrap align-items-center">
                        <div class="col-md-6">
                            <div class="banner-content">
                                <h1 class="display-2 text-uppercase text-dark pb-5">Technology Hack You Won't Get</h1>
                                <a href="shop.html" class="btn btn-medium btn-dark text-uppercase btn-rounded-none">Shop Product</a>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="image-holder">
                                <img src="images/HomePage/banner-image.png" alt="banner">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="swiper-icon swiper-arrow swiper-arrow-prev">
        <svg class="chevron-left">
            <use xlink:href="#chevron-left" />
        </svg>
    </div>
    <div class="swiper-icon swiper-arrow swiper-arrow-next">
        <svg class="chevron-right">
            <use xlink:href="#chevron-right" />
        </svg>
    </div>
</section>
<section id="company-services" class="padding-large">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex">
                    <div class="icon-box-icon pe-3 pb-3">
                        <svg class="cart-outline">
                            <use xlink:href="#cart-outline" />
                        </svg>
                    </div>
                    <div class="icon-box-content">
                        <h3 class="card-title text-uppercase text-dark">Free delivery</h3>
                        <p>Consectetur adipi elit lorem ipsum dolor sit amet.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex">
                    <div class="icon-box-icon pe-3 pb-3">
                        <svg class="quality">
                            <use xlink:href="#quality"/>
                        </svg>
                    </div>
                    <div class="icon-box-content">
                        <h3 class="card-title text-uppercase text-dark">Quality guarantee</h3>
                        <p>Dolor sit amet orem ipsu mcons ectetur adipi elit.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex">
                    <div class="icon-box-icon pe-3 pb-3">
                        <svg class="price-tag">
                            <use xlink:href="#price-tag" />
                        </svg>
                    </div>
                    <div class="icon-box-content">
                        <h3 class="card-title text-uppercase text-dark">Daily offers</h3>
                        <p>Amet consectetur adipi elit loreme ipsum dolor sit.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 pb-3">
                <div class="icon-box d-flex">
                    <div class="icon-box-icon pe-3 pb-3">
                        <svg class="shield-plus">
                            <use xlink:href="#shield-plus" />
                        </svg>
                    </div>
                    <div class="icon-box-content">
                        <h3 class="card-title text-uppercase text-dark">100% secure payment</h3>
                        <p>Rem Lopsum dolor sit amet, consectetur adipi elit.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
    <div class="container">
        <div class="row">
            <div class="display-header d-flex justify-content-between pb-3">
                <h2 class="display-7 text-dark text-uppercase">Mobile Products</h2>
                <div class="btn-right">
                    <a href="/Explore?target=Phone" class="btn btn-medium btn-normal text-uppercase">Go to Shop</a>
                </div>
            </div>
            <div class="swiper product-swiper">
                <div class="swiper-wrapper">
                    <%
                        String FullName = (String) request.getAttribute("user");
                        List<Product> PrLists = (List<Product>) request.getAttribute("PrLists");
                        for(Product Prlist : PrLists){
                            if(Prlist.getTarget().equals("Phone")){
                    %>
                    <div class="swiper-slide">
                        <div class="product-card position-relative">
                            <div class="image-holder" style="height: 250px; width: 250px;">
                                <a href="/Product/Detail/<%=Prlist.getId() %>"><img src="images/product/<%=Prlist.getImage()%>" alt="product-item" class="img-fluid"></a>
                            </div>
                            <div class="cart-concern position-absolute">
                                <div class="cart-button d-flex">
                                    <form action="/add-to-cart/<%= Prlist.getId()%>" method="post">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button class="btn btn-medium btn-black">
                                            ADD TO CART
                                            <svg class="cart-outline">
                                                <use xlink:href="#cart-outline"></use>
                                            </svg>
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                <h3 class="card-title text-uppercase" style="margin-top: 6rem;">
                                    <a href="/Product/Detail/<%=Prlist.getId()%>"><%=Prlist.getNameproduct()%></a>
                                </h3>
                                <span class="item-price">$<%=Prlist.getPrice()%></span>
                            </div>
                        </div>
                    </div>
                    <%}
                        }%>
                </div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination position-absolute text-center"></div>
</section>
<section id="smart-watches" class="product-store padding-large position-relative">
    <div class="container">
        <div class="row">
            <div class="display-header d-flex justify-content-between pb-3">
                <h2 class="display-7 text-dark text-uppercase">Laptop</h2>
                <div class="btn-right">
                    <a href="/Explore?target=Laptop" class="btn btn-medium btn-normal text-uppercase">Go to Shop</a>
                </div>
            </div>
            <div class="swiper product-watch-swiper">
                <div class="swiper-wrapper">
                    <%
                        for(Product Prlist : PrLists){
                            if(Prlist.getTarget().equals("Laptop")){
                    %>
                    <div class="swiper-slide">
                        <div class="product-card position-relative">
                            <div class="image-holder">
                                <a href="/Product/Detail/<%=Prlist.getId()%>"><img src="images/product/<%=Prlist.getImage()%>" alt="product-item" height="260" width="260" style="object-fit: contain"></a>
                            </div>
                            <div class="cart-concern position-absolute">
                                <div class="cart-button d-flex">
                                    <form action="/add-to-cart/<%= Prlist.getId()%>" method="post">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button class="btn btn-medium btn-black">
                                            ADD TO CART
                                            <svg class="cart-outline">
                                                <use xlink:href="#cart-outline"></use>
                                            </svg>
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                                <h3 class="card-title text-uppercase">
                                    <a href="/Product/Detail/<%=Prlist.getId()%>"><%= Prlist.getNameproduct() %></a>
                                </h3>
                                <span class="item-price">$<%= Prlist.getPrice()%></span>
                            </div>
                        </div>
                    </div>
                    <%
                    }
                        }%>
                </div>
            </div>
        </div>
    </div>
    <div class="swiper-pagination position-absolute text-center"></div>
</section>

<section id="yearly-sale" class="bg-light-blue overflow-hidden mt-5 padding-xlarge" style="background-position: right; background-repeat: no-repeat;">
    <div class="row d-flex flex-wrap align-items-center">
        <div class="col-md-6 col-sm-12">
            <div class="text-content offset-4 padding-medium">
                <h3>10% off</h3>
                <h2 class="display-2 pb-5 text-uppercase text-dark">New year sale</h2>
                <a href="shop.html" class="btn btn-medium btn-dark text-uppercase btn-rounded-none">Shop Sale</a>
            </div>
        </div>
        <div class="col-md-6 col-sm-12">

        </div>
    </div>
</section>
<section id="latest-blog" class="padding-large">
    <div class="container">
        <div class="row">
            <div class="display-header d-flex justify-content-between pb-3">
                <h2 class="display-7 text-dark text-uppercase">Latest Posts</h2>
                <div class="btn-right">
                    <a href="blog.html" class="btn btn-medium btn-normal text-uppercase">Read Blog</a>
                </div>
            </div>
            <div class="post-grid d-flex flex-wrap justify-content-between">
                <div class="col-lg-4 col-sm-12">
                    <div class="card border-none me-3">
                        <div class="card-image">
                            <img src="images/HomePage/post-item1.jpg" alt="" class="img-fluid">
                        </div>
                    </div>
                    <div class="card-body text-uppercase">
                        <div class="card-meta text-muted">
                            <span class="meta-date">feb 22, 2023</span>
                            <span class="meta-category">- Gadgets</span>
                        </div>
                        <h3 class="card-title">
                            <a href="#">Get some cool gadgets in 2023</a>
                        </h3>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <div class="card border-none me-3">
                        <div class="card-image">
                            <img src="images/HomePage/post-item2.jpg" alt="" class="img-fluid">
                        </div>
                    </div>
                    <div class="card-body text-uppercase">
                        <div class="card-meta text-muted">
                            <span class="meta-date">feb 25, 2023</span>
                            <span class="meta-category">- Technology</span>
                        </div>
                        <h3 class="card-title">
                            <a href="#">Technology Hack You Won't Get</a>
                        </h3>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <div class="card border-none me-3">
                        <div class="card-image">
                            <img src="images/HomePage/post-item3.jpg" alt="" class="img-fluid">
                        </div>
                    </div>
                    <div class="card-body text-uppercase">
                        <div class="card-meta text-muted">
                            <span class="meta-date">feb 22, 2023</span>
                            <span class="meta-category">- Camera</span>
                        </div>
                        <h3 class="card-title">
                            <a href="#">Top 10 Small Camera In The World</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="subscribe" class="container-grid padding-large position-relative overflow-hidden">
    <div class="container">
        <div class="row">
            <div class="subscribe-content bg-dark d-flex flex-wrap justify-content-center align-items-center padding-medium">
                <div class="col-md-6 col-sm-12">
                    <div class="display-header pe-3">
                        <h2 class="display-7 text-uppercase text-light">Subscribe Us Now</h2>
                        <p>Get latest news, updates and deals directly mailed to your inbox.</p>
                    </div>
                </div>
                <div class="col-md-5 col-sm-12">
                    <form class="subscription-form validate">
                        <div class="input-group flex-wrap">
                            <input class="form-control btn-rounded-none" type="email" name="EMAIL" placeholder="Your email address here" required="">
                            <button class="btn btn-medium btn-primary text-uppercase btn-rounded-none" type="submit" name="subscribe">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="Layout/Footer.jsp"/>
</body>
</html>