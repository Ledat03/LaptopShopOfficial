<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/HomePage/Item/styleProductList.css">
    <script src="/js/HomePage/ProductList.js"></script>
    <style>
        a,
        button,
        input,
        select,
        h1,
        h2,
        h3,
        h4,
        h5,
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            border: none;
            text-decoration: none;
            background: none;

            -webkit-font-smoothing: antialiased;
        }

        menu, ol, ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
    </style>
    <title>Document</title>
</head>
<body>
<header>
    <jsp:include page="../Layout/Header.jsp"/>
</header>
<main>
<div class="desktop-products-01">
    <div class="categories">
        <a class="product-categories">
            <div class="vuesax-outline-mobile">
                <img class="vuesax-outline-mobile2" src="/images/HomePage/vuesax-outline-mobile1.svg" />
            </div>
            <div class="mobile">Mobile</div>
        </a>
        <a class="product-categories2">
            <div class="vuesax-outline-monitor">
                <img
                        class="vuesax-outline-monitor2"
                        src="/images/HomePage/vuesax-outline-monitor1.svg"
                />
            </div>
            <div class="mobile">Laptop</div>
        </a>
        <a class="product-categories">
            <div class="vuesax-outline-mobile3">
                <img class="vuesax-outline-mobile4" src="/images/HomePage/vuesax-outline-mobile3.svg" />
            </div>
            <div class="tablet">Tablet</div>
        </a>
        <a class="product-categories">
            <div class="vuesax-outline-headphones">
                <img
                        class="vuesax-outline-headphones2"
                        src="/images/HomePage/vuesax-outline-headphones1.svg"
                />
            </div>
            <div class="mobile">Audio</div>
        </a>
        <a class="product-categories" href="/">
            <div class="vuesax-outline-watch-status">
                <img
                        class="vuesax-outline-watch-status2"
                        src="/images/HomePage/vuesax-outline-watch-status1.svg"
                />
            </div>
            <div class="mobile">Wearable</div>
        </a>
        <a class="product-categories">
            <div class="vuesax-outline-camera">
                <img class="vuesax-outline-camera2" src="/images/HomePage/vuesax-outline-camera1.svg" />
            </div>
            <div class="mobile">Camera</div>
        </a>
        <a class="product-categories">
            <div class="vuesax-outline-game">
                <img class="vuesax-outline-game2" src="/images/HomePage/vuesax-outline-game1.svg" />
            </div>
            <div class="mobile">Gaming</div>
        </a>
        <a class="product-categories">
            <div class="vuesax-outline-data">
                <img class="vuesax-outline-data2" src="/images/HomePage/vuesax-outline-data1.svg" />
            </div>
            <div class="mobile">Network</div>
        </a>
        <a class="product-categories">
            <div class="vuesax-outline-devices">
                <img
                        class="vuesax-outline-devices2"
                        src="/images/HomePage/vuesax-outline-devices1.svg"
                />
            </div>
            <div class="mobile">Accessories</div>
        </a>
    </div>
    <div class="breadcrumb">
        <div class="breadcrumbs-elements d-flex">
            <a href="/">Home</a>
            <span>/</span>
            <a>Products</a>
        </div>
    </div>
    <div class="our-services">
        <div class="tech">
            <div class="icon">
                <img class="group-61428" src="/images/HomePage/group-614280.svg" />
            </div>
            <div class="latest-and-greatest-tech">Latest and Greatest Tech</div>
        </div>
        <div class="gurantee">
            <div class="icon2">
                <img class="group-7" src="/images/HomePage/group-70.svg" />
            </div>
            <div class="guarantee">Guarantee</div>
        </div>
        <div class="shiping">
            <div class="frame-26086041">
                <img class="group-4" src="/images/HomePage/group-40.svg" />
            </div>
            <div class="free-shipping-over-1000">Free Shipping over 1000$</div>
        </div>
        <div class="support">
            <div class="icon3">
                <img class="group-15" src="/images/HomePage/group-150.svg" />
            </div>
            <div class="_24-7-support">24/7 Support</div>
        </div>
    </div>
    <div class="filter-s-categories">
        <div class="filter">
            <div class="filters">Filters</div>
            <div class="button">
                <div class="add-to-cart">Clear all</div>
            </div>
        </div>
        <div class="filters-general">
            <div class="brand">
                <div class="brand-title">Brand</div>
                <img src="/images/HomePage/vuesax-outline-arrow-down19.svg" class="dropdown-icon">
            </div>
            <div id="brandFilterContainer">
                <div class="device">
                    <div class="frame-26086749">
                        <div class="asus">Asus</div>
                        <div class="_183">(183)</div>
                    </div>
                    <div class="check-box">
                        <div class="vuesax-outline-tick-square">
                            <img
                                    class="vuesax-outline-tick-square2"
                                    src="/images/HomePage/vuesax-outline-tick-square1.svg"
                            />
                        </div>
                    </div>
                </div>
                <div class="device2">
                    <div class="frame-26086749">
                        <div class="asus">Acer</div>
                        <div class="_183">(78)</div>
                    </div>
                    <div class="check-box">
                        <div class="vuesax-outline-tick-square">
                            <img
                                    class="vuesax-outline-tick-square3"
                                    src="/images/HomePage/vuesax-outline-tick-square3.svg"
                            />
                        </div>
                    </div>
                </div>
                <div class="device3">
                    <div class="frame-26086749">
                        <div class="asus">Apple</div>
                        <div class="_183">(223)</div>
                    </div>
                    <div class="check-box">
                        <div class="vuesax-bold-tick-square">
                            <img
                                    class="vuesax-bold-tick-square2"
                                    src="/images/HomePage/vuesax-outline-tick-square1.svg"
                            />
                        </div>
                    </div>
                </div>
                <div class="device4">
                    <div class="frame-26086749">
                        <div class="asus">Dell</div>
                        <div class="_183">(53)</div>
                    </div>
                    <div class="check-box">
                        <div class="vuesax-outline-tick-square">
                            <img
                                    class="vuesax-outline-tick-square4"
                                    src="/images/HomePage/vuesax-outline-tick-square1.svg"
                            />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="component-9">
            <div class="price">
                <div class="price-title">Price</div>
                <img src="/images/HomePage/vuesax-outline-arrow-down19.svg" class="dropdown-icon">
            </div>
            <input type="number" id="minPrice" placeholder="Min">
            <input type="number" id="maxPrice" placeholder="Max">
        </div>
    </div>
    <div class="sort">
        <div class="sort-container">
            <div class="dropdown-header d-flex">
                <span class="sort-label">Sort by:</span>
                <div class="current-selection">
                    <img class="dropdown-arrow" src="/images/HomePage/vuesax-outline-arrow-down19.svg" alt="Dropdown arrow">
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
    <div class="frame-26087126">
        <div class="frame-26087120">
            <div class="product-card">
                <div
                        class="image"
                        style="
              background: url(image0.png) center;
              background-size: contain;
              background-repeat: no-repeat;
            "
                >
                    <div class="image2"></div>
                </div>
                <img class="line-3" src="line-30.svg" />
                <div class="info">
                    <div class="title">
                        Apple MacBook Air 15&quot; w/ Touch ID (2023) - Space Grey (Apple M2
                        Chip / 256GB SSD / 8GB RAM) - French
                    </div>
                    <div class="price-heart">
                        <div class="button2">
                            <div class="vuesax-outline-shopping-cart">
                                <img
                                        class="vuesax-outline-shopping-cart2"
                                        src="vuesax-outline-shopping-cart1.svg"
                                />
                            </div>
                            <div class="add-to-cart2">Add to cart</div>
                        </div>
                        <div class="price-rate">
                            <div class="price3">
                                <div class="frame3">
                                    <div class="last-price">$1410.87</div>
                                    <div class="new-price">$1299.00</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</main>
<footer>
    <jsp:include page="../Layout/Footer.jsp"/>
</footer>
</body>
</html>