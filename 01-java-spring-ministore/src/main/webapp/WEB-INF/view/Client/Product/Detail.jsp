<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vn.project.laptopshop.domain.Product" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/HomePage/Item/style.css">
    <title>Ministore</title>
</head>

<body>
<header>
    <jsp:include page="../Layout/Header.jsp"/>
</header>
<main>
    <%
        Product product = (Product) request.getAttribute("DetailProduct");
        List<Product> TargetProductLists = (List<Product>) request.getAttribute("ProductListsByTarget");
    %>
    <div class="desktop-product-02">
        <div class="Main-info container">
            <div class="breadcrumb">
                <div class="breadcrumbs-elements">
                    <div class="home d-flex">
                        <a href="/">Home</a>
                        <p> / </p>
                        <a href="/Explore">Products</a>
                        <p> / </p>
                        <a><%=product.getNameproduct()%></a>
                    </div>
                </div>
            </div>
            <div class="d-flex">
            <div class="frame-26087127" style="height: 400px; width: 400px;">
                <img class="image" src="/images/product/<%= product.getImage()%>" />
            </div>
            <div class="frame-26087131">
                <div class="frame-26087130">
                    <div class="frame-26087129">
                        <div class="frame-26087128">
                            <h4 class="">
                               <%=product.getNameproduct()%>
                            </h4>
                        </div>
                        <div class="frame-26086856">
                            <div class="stock">
                                <div class="vuesax-outline-shop">
                                    <img
                                            class="vuesax-outline-shop2"
                                                src="/images/HomePage/vuesax-outline-shop1.svg"
                                    />
                                </div>
                                <div class="in-stock">In Stock</div>
                            </div>
                            <div class="guarantee">
                                <div class="vuesax-outline-verify">
                                    <img
                                            class="vuesax-outline-verify2"
                                            src="/images/HomePage/vuesax-outline-verify1.svg"
                                    />
                                </div>
                                <div class="guaranteed">Guaranteed</div>
                            </div>
                            <div class="delivery">
                                <div class="vuesax-outline-truck">
                                    <img
                                            class="vuesax-outline-truck2"
                                            src="/images/HomePage/vuesax-outline-truck1.svg"
                                    />
                                </div>
                                <div class="free-delivery">Free Delivery</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="info4">
                    <div class="brand">
                        <div class="frame-26086844">
                            <div class="brand2">
                                <ul class="brand-2-span">
                                    <li>Brand</li>
                                </ul>
                            </div>
                        </div>
                        <div class="frame-26086849">
                            <span><%=product.getFactory()%></span>
                        </div>
                    </div>
                    <div class="connectivity">
                        <div class="frame-26086845">
                            <div class="model-name">
                                <ul class="model-name-span">
                                    <li>Model Name</li>
                                </ul>
                            </div>
                        </div>
                        <div class="frame-26086850">
                            <span class=""><%= product.getNameproduct()%></span>
                        </div>
                    </div>
                    <div class="connectivity">
                        <div class="frame-26086845">
                            <div class="screen-size">
                                <ul class="screen-size-span">
                                    <li>Screen Size</li>
                                </ul>
                            </div>
                        </div>
                        <div class="frame-260868502">
                            <div class="_13-3-inches">No Info</div>
                        </div>
                    </div>
                    <div class="connectivity">
                        <div class="frame-26086845">
                            <div class="hard-disk-size">
                                <ul class="hard-disk-size-span">
                                    <li>Hard Disk Size</li>
                                </ul>
                            </div>
                        </div>
                        <div class="frame-260868502">
                            <div class="_256-gb">No Info</div>
                        </div>
                    </div>
                    <div class="memory">
                        <div class="frame-26086846">
                            <div class="cpu-model">
                                <ul class="cpu-model-span">
                                    <li>CPU Model</li>
                                </ul>
                            </div>
                        </div>
                        <div class="frame-26086851">
                            <div class="core-i-5">No Info</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="installments">
                <div class="price-section">
                    <div class="price">
                        <div class="current-price">$ 1299.00</div>
                        <div class="discount">
                            <div class="vuesax-bold-discount-shape">
                                <img
                                        class="vuesax-bold-discount-shape2"
                                        src="/images/HomePage/vuesax-bold-discount-shape1.svg"
                                />
                            </div>
                            <div class="discount-amount">-12%</div>
                        </div>
                    </div>
                </div>
                <div class="frame-26086746">
                    <div class="button">
                        <div class="add-to-cart">Buy Now</div>
                    </div>
                    <div class="button2">
                        <div class="add-to-cart2">Add to cart</div>
                    </div>
                </div>
            </div>
            </div>
            <div class="frame-26087134">
                <div class="frame-26087133">
                    <div class="technical-details">Technical Details</div>
                    <div class="info2">
                        <div class="frame-26086677">
                            <div class="frame-26086675">
                                <div class="display">Display</div>
                            </div>
                            <div class="frame-26086676">
                                <div class="">
                                </div>
                            </div>
                        </div>
                        <div class="frame-26086678">
                            <div class="frame-260866752">
                                <div class="graphics">Graphics</div>
                            </div>
                            <div class="frame-26086676">
                                <div class=""></div>
                            </div>
                        </div>
                        <div class="frame-26086679">
                            <div class="frame-26086675">
                                <div class="processor">Processor</div>
                            </div>
                            <div class="frame-26086676">
                                <div class=""></div>
                            </div>
                        </div>
                        <div class="frame-260866792">
                            <div class="frame-260866752">
                                <div class="in-the-box">In the box</div>
                            </div>
                            <div class="frame-26086676">
                                <div class="">
                                </div>
                            </div>
                        </div>
                        <div class="frame-26086680">
                            <div class="frame-26086675">
                                <div class="height">Height</div>
                            </div>
                            <div class="frame-26086676">
                                <div class=""></div>
                            </div>
                        </div>
                        <div class="frame-26086681">
                            <div class="frame-260866752">
                                <div class="width">Width</div>
                            </div>
                            <div class="frame-26086676">
                                <div class=""></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="frame-26087135">
                <div class="similar-products">Similar Products</div>
                <div class="frame-26086750">
                    <c:if test="<%= TargetProductLists != null %>">
                    <% for (int i = 0; i <=3 ; i++) { %>
                    <div class="product-card">
                        <div class="image2">
                            <img class="image3" src="/images/product/<%=TargetProductLists.get(i).getImage()%>"/>
                        </div>
                        <div class="info3">
                            <span class="title">
                                <%=TargetProductLists.get(i).getNameproduct()%>
                            </span>
                            <div class="price-heart">
                                <div class="price3">
                                    <div class="frame2">
                                        <span class="new-price">$<%=TargetProductLists.get(i).getPrice()%></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <%
                    }
                %>
                    </c:if>
                </div>
                </div>
            </div>
    </div>

<%--        <div class="comments">--%>
<%--            <div class="comment">--%>
<%--                <div class="frame-26086672">--%>
<%--                    <img class="ellipse-398" src="ellipse-3980.png"/>--%>
<%--                    <div class="frame-26086670">--%>
<%--                        <div class="frame-26086669">--%>
<%--                            <div class="jimmy-smith">Gabriel</div>--%>
<%--                            <div class="may-28-2023">July 28, 2023</div>--%>
<%--                        </div>--%>
<%--                        <div class="rate-star">--%>
<%--                            <img class="star-1" src="star-10.svg"/>--%>
<%--                            <div class="_4-0">4.8</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="frame-26086673">--%>
<%--                    <div--%>
<%--                            class="this-macbook-air-at-first-feels-just-so-big-to-me-using-it-for-school-and-after-a-while-it-felt-as-a-perfect-size-i-look-at-it-sometimes-and-realize-how-portable-and-small-it-is-but-it-feels-as-big-as-like-a-tv-screen-it-s-not-a-huge-computer-but-when-your-doing-work-and-typing-or-whatever-watching-youtube-it-feels-like-a-movie-screen-beautiful-i-never-had-such-a-good-computer-that-just-feels-like-a-breath-of-fresh-air-if-you-are-contemplating-on-buying-one-i-would-get-512-gb-of-storage-and-16-ram-you-will-not-be-disappointed-if-you-buy-this-no-matter-what-i-strongly-recommend-it-this-macbook-air-at-first-feels-just-so-big-to-me-using-it-for-school-and-after-a-while-it-felt-as-a-perfect-size-i-look-at-it-sometimes-and-realize-how-portable-and-small-it-is-but-it-feels-as-big-as-like-a-tv-screen"--%>
<%--                    >--%>
<%--                        I needed a fast, efficient laptop for on the go use. Battery life is--%>
<%--                        amazing. Build quality is fantastic. Perfect fit for my needs.--%>
<%--                    </div>--%>
<%--                    <div class="button3">--%>
<%--                        <div class="vuesax-outline-arrow-down4">--%>
<%--                            <img--%>
<%--                                    class="vuesax-outline-arrow-down5"--%>
<%--                                    src="vuesax-outline-arrow-down5.svg"--%>
<%--                            />--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="frame-26086671">--%>
<%--                        <div class="button4">--%>
<%--                            <div class="vuesax-outline-like">--%>
<%--                                <img--%>
<%--                                        class="vuesax-outline-like2"--%>
<%--                                        src="vuesax-outline-like1.svg"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="_18">15</div>--%>
<%--                        <img class="line-10" src="line-100.svg"/>--%>
<%--                        <div class="button4">--%>
<%--                            <div class="vuesax-outline-dislike">--%>
<%--                                <img--%>
<%--                                        class="vuesax-outline-dislike2"--%>
<%--                                        src="vuesax-outline-dislike1.svg"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="_123">2</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="comment">--%>
<%--                <div class="frame-26086672">--%>
<%--                    <img class="ellipse-398" src="ellipse-3981.png"/>--%>
<%--                    <div class="frame-26086670">--%>
<%--                        <div class="frame-26086669">--%>
<%--                            <div class="jimmy-smith">Jimmy Smith</div>--%>
<%--                            <div class="may-28-2023">May 28, 2023</div>--%>
<%--                        </div>--%>
<%--                        <div class="rate-star">--%>
<%--                            <img class="star-12" src="star-11.svg"/>--%>
<%--                            <div class="_4-0">5.0</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="frame-26086673">--%>
<%--                    <div--%>
<%--                            class="this-macbook-air-at-first-feels-just-so-big-to-me-using-it-for-school-and-after-a-while-it-felt-as-a-perfect-size-i-look-at-it-sometimes-and-realize-how-portable-and-small-it-is-but-it-feels-as-big-as-like-a-tv-screen-it-s-not-a-huge-computer-but-when-your-doing-work-and-typing-or-whatever-watching-youtube-it-feels-like-a-movie-screen-beautiful-i-never-had-such-a-good-computer-that-just-feels-like-a-breath-of-fresh-air-if-you-are-contemplating-on-buying-one-i-would-get-512-gb-of-storage-and-16-ram-you-will-not-be-disappointed-if-you-buy-this-no-matter-what-i-strongly-recommend-it-this-macbook-air-at-first-feels-just-so-big-to-me-using-it-for-school-and-after-a-while-it-felt-as-a-perfect-size-i-look-at-it-sometimes-and-realize-how-portable-and-small-it-is-but-it-feels-as-big-as-like-a-tv-screen"--%>
<%--                    >--%>
<%--                        This macbook air at first feels just so big to me using it for school,--%>
<%--                        and after a while, it felt as a perfect size. I look at it sometimes--%>
<%--                        and realize how portable and small it is, but IT FEELS AS BIG AS LIKE--%>
<%--                        A TV SCREEN. It&#039;s not a huge computer, but when your doing work--%>
<%--                        and typing or whatever watching youtube it feels like a movie screen,--%>
<%--                        beautiful. I never had such a good computer that just feels like a--%>
<%--                        breath of fresh air. If you are contemplating on buying one, I would--%>
<%--                        get 512 GB of storage and 16 ram. You will not be disappointed if you--%>
<%--                        buy this no matter what, I strongly recommend it.--%>
<%--                    </div>--%>
<%--                    <div class="button3">--%>
<%--                        <div class="add-to-cart3">Show More</div>--%>
<%--                        <div class="vuesax-outline-arrow-down4">--%>
<%--                            <img--%>
<%--                                    class="vuesax-outline-arrow-down6"--%>
<%--                                    src="vuesax-outline-arrow-down7.svg"--%>
<%--                            />--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="frame-26086671">--%>
<%--                        <div class="button4">--%>
<%--                            <div class="vuesax-outline-like">--%>
<%--                                <img--%>
<%--                                        class="vuesax-outline-like3"--%>
<%--                                        src="vuesax-outline-like3.svg"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="_18">8</div>--%>
<%--                        <img class="line-102" src="line-101.svg"/>--%>
<%--                        <div class="button4">--%>
<%--                            <div class="vuesax-outline-dislike">--%>
<%--                                <img--%>
<%--                                        class="vuesax-outline-dislike3"--%>
<%--                                        src="vuesax-outline-dislike3.svg"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="_123">0</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="comment">--%>
<%--                <div class="frame-26086672">--%>
<%--                    <img class="ellipse-398" src="ellipse-3982.png"/>--%>
<%--                    <div class="frame-26086670">--%>
<%--                        <div class="frame-26086669">--%>
<%--                            <div class="jimmy-smith">sarah Anderson</div>--%>
<%--                            <div class="may-28-2023">April 20, 2023</div>--%>
<%--                        </div>--%>
<%--                        <div class="rate-star">--%>
<%--                            <img class="star-13" src="star-12.svg"/>--%>
<%--                            <div class="_4-0">4.2</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="frame-26086673">--%>
<%--                    <div--%>
<%--                            class="this-macbook-air-at-first-feels-just-so-big-to-me-using-it-for-school-and-after-a-while-it-felt-as-a-perfect-size-i-look-at-it-sometimes-and-realize-how-portable-and-small-it-is-but-it-feels-as-big-as-like-a-tv-screen-it-s-not-a-huge-computer-but-when-your-doing-work-and-typing-or-whatever-watching-youtube-it-feels-like-a-movie-screen-beautiful-i-never-had-such-a-good-computer-that-just-feels-like-a-breath-of-fresh-air-if-you-are-contemplating-on-buying-one-i-would-get-512-gb-of-storage-and-16-ram-you-will-not-be-disappointed-if-you-buy-this-no-matter-what-i-strongly-recommend-it-this-macbook-air-at-first-feels-just-so-big-to-me-using-it-for-school-and-after-a-while-it-felt-as-a-perfect-size-i-look-at-it-sometimes-and-realize-how-portable-and-small-it-is-but-it-feels-as-big-as-like-a-tv-screen"--%>
<%--                    >--%>
<%--                        This was my first personal Mac purchase. We are using a combination of--%>
<%--                        Mac &amp; PC at work and while my PC skills are good the Mac side--%>
<%--                        needs work.--%>
<%--                        <br/>--%>
<%--                        So far I like the experience, although not all my apps will run on the--%>
<%--                        Mac, I am finding workarounds.--%>
<%--                        <br/>--%>
<%--                        One person found this helpful--%>
<%--                    </div>--%>
<%--                    <div class="button3">--%>
<%--                        <div class="add-to-cart3">Show More</div>--%>
<%--                        <div class="vuesax-outline-arrow-down4">--%>
<%--                            <img--%>
<%--                                    class="vuesax-outline-arrow-down7"--%>
<%--                                    src="vuesax-outline-arrow-down9.svg"--%>
<%--                            />--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="frame-26086671">--%>
<%--                        <div class="button4">--%>
<%--                            <div class="vuesax-outline-like">--%>
<%--                                <img--%>
<%--                                        class="vuesax-outline-like4"--%>
<%--                                        src="vuesax-outline-like5.svg"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="_18">34</div>--%>
<%--                        <img class="line-103" src="line-102.svg"/>--%>
<%--                        <div class="button4">--%>
<%--                            <div class="vuesax-outline-dislike">--%>
<%--                                <img--%>
<%--                                        class="vuesax-outline-dislike4"--%>
<%--                                        src="vuesax-outline-dislike5.svg"--%>
<%--                                />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="_123">5</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="frame-26087137">--%>
<%--            <div class="frame-26087136">--%>
<%--                <div class="comments2">Comments</div>--%>
<%--            </div>--%>
<%--            <div class="frame-26086749">--%>
<%--                <div class="frame-26086747">--%>
<%--                    <textarea class="your-comment" placeholder="Type your comment "></textarea>--%>
<%--                    <button class="button5 text-primary">Submit</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
</main>
<footer>
    <jsp:include page="../Layout/Footer.jsp"/>
</footer>
</body>
</html>