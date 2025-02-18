<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html class="wide wow-animation" lang="en">

        <head>
            <title>Sản phẩm</title>
            <meta name="format-detection" content="telephone=no">
            <meta name="viewport"
                content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta charset="utf-8">
            <link rel="icon" href="assets/images/Avatar.png" type="image/x-icon">
            <!-- Stylesheets-->
            <link rel="stylesheet" type="text/css"
                href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500%7CSignika">
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/fonts.css">
            <link rel="stylesheet" href="css/style.css">
            <link rel="stylesheet" href="css/home.css">
            <link rel="stylesheet" href="css/single-product.css">

        </head>

        <body>
            <div class="preloader">
                <div class="wrapper-triangle">
                    <div class="pen">
                        <div class="line-triangle">
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                        </div>
                        <div class="line-triangle">
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                        </div>
                        <div class="line-triangle">
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                            <div class="triangle"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page">
                <!-- Page Header-->
                <header class="section page-header">
                    <!-- RD Navbar-->
                    <div class="rd-navbar-wrap">
                        <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed"
                            data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed"
                            data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static"
                            data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static"
                            data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static"
                            data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="56px"
                            data-xl-stick-up-offset="56px" data-xxl-stick-up-offset="56px" data-lg-stick-up="true"
                            data-xl-stick-up="true" data-xxl-stick-up="true">
                            <div class="rd-navbar-inner-outer">
                                <div class="rd-navbar-inner">
                                    <!-- RD Navbar Panel-->
                                    <div class="rd-navbar-panel">
                                        <!-- RD Navbar Toggle-->
                                        <button class="rd-navbar-toggle"
                                            data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                                        <!-- RD Navbar Brand-->
                                        <div class="rd-navbar-brand"><a class="brand" href="landing"><img
                                                    class="brand-logo-dark" src="assets/images/Logo web.png" alt=""
                                                    width="189" height="66" /></a></div>
                                    </div>
                                    <div class="rd-navbar-right rd-navbar-nav-wrap">
                                        <div class="rd-navbar-aside">
                                            <ul class="rd-navbar-contacts-2">
                                                <li>
                                                    <div class="unit unit-spacing-xs">
                                                        <div class="unit-left"><span class="icon mdi mdi-phone"></span>
                                                        </div>
                                                        <div class="unit-body"><a class="phone"
                                                                href="tel:#">0327992501</a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="unit unit-spacing-xs">
                                                        <div class="unit-left"><span
                                                                class="icon mdi mdi-map-marker"></span>
                                                        </div>
                                                        <div class="unit-body"><a class="address" href="https://maps.app.goo.gl/vj1JjRyS7Lhfwqqb8" target="_blank">Km29 Đại lộ
                                                                Thăng Long - Thạch Thất - Hà Nội</a></div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <ul class="list-share-2">
                                                <li><a class="icon mdi mdi-facebook"  href="https://www.facebook.com/healin.boardgame" target="_blank"></a></li>
                                                <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                                                <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                                                <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                                            </ul>
                                        </div>
                                        <div class="rd-navbar-main">
                                            <!-- RD Navbar Nav-->
                                            <ul class="rd-navbar-nav">

                                                <li class="rd-nav-item"><a class="rd-nav-link" href="landing">Trang
                                                        chủ</a>
                                                </li>
                                                <li class="rd-nav-item"><a class="rd-nav-link" href="about_us">Về chúng
                                                        tôi</a>
                                                </li>
                                                <li class="rd-nav-item"><a class="rd-nav-link"
                                                        href="pre_game">Trò chơi</a>
                                                </li>
                                                <li class="rd-nav-item active">
                                                    <a class="rd-nav-link" href="landing#shop">Cửa hàng</a>
                                                    <ul class="rd-menu rd-navbar-dropdown">
                                                        <li class="rd-dropdown-item active">
                                                            <a class="rd-dropdown-link"
                                                                href="single_product?idProduct=1#product">Đoàn Viên</a>
                                                        </li>
                                                        <li class="rd-dropdown-item">
                                                            <a class="rd-dropdown-link"
                                                                href="single_product?idProduct=2#product">Tri Kỷ</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="rd-nav-item">
                                                    <a class="rd-nav-link" href="cart">
                                                        <span class="fa-shopping-basket" style="font-size: 30px"></span>
                                                        <c:choose>
                                                            <c:when test="${sessionScope.userLogin == null}">
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:if test="${productInCart > 0}">
                                                                    <span class="cart-badge"
                                                                        id="cartCount">${productInCart}</span>
                                                                </c:if>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </a>
                                                </li>

                                                <c:choose>
                                                    <c:when test="${sessionScope.userLogin == null}">
                                                        <li class="rd-nav-item loginbtn">
                                                            <a class="rd-nav-link" href="log_in">Đăng nhập</a>
                                                        </li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li class="rd-nav-item active loginbtn">
                                                            <a class="rd-nav-link" href="shop.html">Avatar</a>
                                                            <ul class="rd-menu rd-navbar-dropdown">
                                                                <li class="rd-dropdown-item">
                                                                    <a class="rd-dropdown-link" href="profile_user">Hồ
                                                                        sơ</a>
                                                                </li>
                                                                <li class="rd-dropdown-item">
                                                                    <a class="rd-dropdown-link" href="log_out">Đăng
                                                                        xuất</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </ul>
                                            </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1"
                                        data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap"
                                        data-multitoggle-isolate="data-multitoggle-isolate">

                                        <!-------------------------------------------------------------->

                                        <c:choose>
                                            <c:when test="${sessionScope.userLogin == null}">
                                                <a href="log_in" class="loginbtn2">Đăng nhập</a>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="dropdown">
                                                    <button class="dropbtn">
                                                        <img src="${sessionScope.userLogin.image}" alt="Avatar"
                                                            class="avatar">
                                                    </button>
                                                    <div class="dropdown-content">
                                                        <a href="profile_user">Hồ sơ</a>
                                                        <a href="log_out">Đăng xuất</a>
                                                    </div>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>


                                        <!-------------------------------------------------------------->
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                </header>
                <!-- Breadcrumbs -->
                <section id="breadcrumbs" class="bg-gray-7">
                    <div class="breadcrumbs-custom box-transform-wrap context-dark">
                        <div class="container">
                            <h3 class="breadcrumbs-custom-title">${product.name}</h3>
                            <div class="breadcrumbs-custom-decor"></div>
                        </div>
                        <div class="box-transform" style="background-image: url(assets/images/banner/cover_doanvien.png);">
                        </div>
                    </div>
                    <div class="container">
                        <ul class="breadcrumbs-custom-path">
                            <li><a href="views/home.html">Trang chủ</a></li>
                            <li><a href="shop.html">Cửa hàng</a></li>
                            <li class="active">${product.name}</li>
                        </ul>
                    </div>
                </section>
                <!-- Single Product-->
                <section id="product" class="section section-sm section-first bg-default">
                    <div class="container">
                        <div class="row row-30">
                            <div class="col-lg-6">
                                <div class="slick-vertical slick-product">
                                    <!-- Slick Carousel-->

                                    <div class="slick-slider carousel-parent" data-swipe="true" data-items="1"
                                        data-child="#child-carousel-6" data-for="#child-carousel-6">
                                        <c:forEach var="image" items="${images}">
                                            <div class="item">
                                                <div class="slick-product-figure">
                                                    <img src="${image.imagePath}" alt="Product Image" width="530"
                                                        height="480" />
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>

                                    <div class="slick-slider child-carousel" id="child-carousel-6"
                                        data-for=".carousel-parent" data-arrows="true" data-items="3" data-sm-items="3"
                                        data-md-items="3" data-lg-items="3" data-xl-items="3" data-slide-to-scroll="1"
                                        data-md-vertical="true">
                                        <c:forEach var="image" items="${images}">
                                            <div class="item">
                                                <div class="slick-product-figure">
                                                    <img src="${image.imagePath}" alt="" width="530" height="480" />
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <form id="addToCartForm">
                                    <input type="hidden" name="productId" id="productId" value="${product.id}">
                                    <div class="single-product">
                                        <h4 class="text-transform-none text-spacing-50">${product.name}</h4>
                                        <div class="group-md group-middle">
                                            <div class="single-product-price">${product.price}đ</div>
                                            <div class="single-product-rating"><span class="mdi mdi-star"></span><span
                                                    class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span
                                                    class="mdi mdi-star"></span><span class="mdi mdi-star-half"></span>
                                            </div>
                                        </div>
                                        <p>${product.description}</p>
                                        <hr class="hr-gray-300">
                                        <ul class="list list-description d-inline-block d-md-block">
                                            <li><span>Độ tuổi khuyến nghị:</span><span>Từ 15 - 45 tuổi</span></li>
                                            <li><span>Số người chơi:</span><span>Từ 2 - 8 người.</span></li>
                                            <li><span>Thời gian chơi:</span><span>30 - 45 phút. </span></li>
                                            <li><span>Chất liệu:</span><span>Giấy cao cấp; hình ảnh minh họa phong phú,
                                                    bắt mắt.</span></li>
                                        </ul>
                                        <div class="group-lg group-middle">
                                            <div class="product-stepper">
                                                <input class="form-input" type="number" id="quantity" name="quantity"
                                                    data-zeros="true" value="1" min="1" max="50">
                                            </div>
                                            <div>
                                                <button type="submit"
                                                    class="button button-lg button-secondary button-winona">Thêm vào giỏ
                                                    hàng</button>
                                            </div>
                                        </div>
                                        <hr class="hr-gray-300">
                                        <div class="group-sm group-middle"><span
                                                class="single-product-social-title">Chia sẻ</span>
                                            <div>
                                                <ul class="list-inline single-product-social-list list-inline-sm">
                                                    <li><a class="icon mdi mdi-facebook" href="#"></a></li>
                                                    <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                                                    <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                                                    <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                                <!--------------------Pop up thong bao--------------------->
                                <div id="cartPopup" class="cart-popup">
                                    <span class="popup-icon">&#10003;</span>
                                    <p id="cartPopupMessage"></p>
                                </div>
                                <!----------------------------------------->


                            </div>
                        </div>
                        <!-- Bootstrap tabs-->
                        <div class="tabs-custom tabs-horizontal tabs-corporate" id="tabs-3">
                            <!-- Nav tabs-->
                            <ul class="nav nav-tabs">
                                <li class="nav-item" role="presentation"><a class="nav-link active" href="#tabs-3-1"
                                        data-toggle="tab">Bình Luận</a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-3-2"
                                        data-toggle="tab">Thông tin bổ</a></li>
                                <li class="nav-item" role="presentation"><a class="nav-link" href="#tabs-3-3"
                                        data-toggle="tab">Phương thức vận chuyển và thanh toán</a></li>
                            </ul>
                            <!-- Tab panes-->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="tabs-3-1">
                                    <div class="box-comment-wrap">
                                        <div class="box-comment box-comment-product">
                                            <div class="unit flex-column flex-md-row">
                                                <div class="unit-left"><a class="box-comment-figure" href="#"><img
                                                            src="assets/images/coco.jpg" alt="" width="83"
                                                            height="83" /></a></div>
                                                <div class="unit-body">
                                                    <div class="group-md group-justify">
                                                        <div>
                                                            <div class="group-md group-middle">
                                                                <p class="box-comment-author"><a href="#">Co Co</a>
                                                                </p>
                                                                <div class="box-rating"><span
                                                                        class="mdi mdi-star"></span><span
                                                                        class="mdi mdi-star"></span><span
                                                                        class="mdi mdi-star"></span><span
                                                                        class="mdi mdi-star"></span><span
                                                                        class="mdi mdi-star-half"></span></div>
                                                            </div>
                                                        </div>
                                                        <div class="box-comment-time">
                                                            <time datetime="2018-11-30">Feb 8, 2025</time>
                                                        </div>
                                                    </div>
                                                    <p class="box-comment-text">Hối hận chính là liều thuốc quý để trị
                                                        bệnh, quý ở chỗ biết sửa đổi. Tuy nhiên nếu như cứ mãi ôm chặt
                                                        sự hối hận trong lòng thì lại vì thuốc mà sinh bệnh.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h5>Bình luận của bạn</h5>
                                    <form class="rd-form rd-mailform">
                                        <div class="row row-14 gutters-14">
                                            <div class="col-md-4">
                                                <div class="form-wrap">
                                                    <input class="form-input" id="contact-your-name-3" type="text"
                                                        name="name" data-constraints="@Required" />
                                                    <label class="form-label" for="contact-your-name-3">Tên của
                                                        bạn*</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-wrap">
                                                    <input class="form-input" id="contact-email-3" type="email"
                                                        name="email" data-constraints="@Email @Required" />
                                                    <label class="form-label" for="contact-email-3">E-mail của
                                                        bạn*</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-wrap">
                                                    <input class="form-input" id="contact-phone-3" type="text"
                                                        name="phone" data-constraints="@Numeric" />
                                                    <label class="form-label" for="contact-phone-3">Số điện
                                                        thoại</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-wrap">
                                                    <label class="form-label" for="contact-message-3">Tin nhắn*</label>
                                                    <textarea class="form-input textarea-lg" id="contact-message-3"
                                                        name="message" data-constraints="@Required"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="button button-secondary button-winona" type="submit">Gửi</button>
                                    </form>
                                </div>
                                <div class="tab-pane fade" id="tabs-3-2">
                                    <div class="unit unit-spacing-1 flex-column flex-md-row align-items-lg-center">
                                        <div class="unit-left"><span
                                                class="icon-xxxl text-gray-800-01 mdi mdi-information-outline"></span>
                                        </div>
                                        <div class="unit-body">
                                            <p class="text-spacing-50">${product.additionalInfor}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tabs-3-3">
                                    <div class="unit unit-spacing-1 flex-column flex-md-row align-items-lg-center">
                                        <div class="unit-left"><span
                                                class="icon-xxxl text-gray-800-01 mdi mdi-information-outline"></span>
                                        </div>
                                        <div class="unit-body">
                                            <p class="text-spacing-50">- Đối với hình thức vận chuyển: Chúng tôi sẽ giao đơn hàng đến tận tay các bạn trong thời gian ngắn nhất. Đối với khu vực nội thành Hà Nội sẽ được miễn phí vận chuyển. Còn các tỉnh thành khác sẽ có thêm phí vận chuyển tùy thuộc vào khoảng cách.<br>
                                            - Đối với hình thức thanh toán: Chúng tôi cung cấp 2 hình thức thanh toán đó là thanh toán khi nhận hàng và thanh toán qua tài khoản ngân hàng. </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Related Products-->
                <section class="section section-sm section-last bg-default">
                    <div class="container">
                        <h5>Sản phẩm liên quan</h5>
                        <div class="row row-lg row-30">
                            <!-- <div class="col-sm-6 col-lg-4 col-xl-3">
                                <article class="product">
                                    <div class="product-figure"><img src="https://placehold.co/195x141" alt=""
                                            width="195" height="141" />
                                    </div>
                                    <div class="product-rating"><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                                    </div>
                                    <h6 class="product-title">Mushroom Pizza</h6>
                                    <div class="product-price-wrap">
                                        <div class="product-price">$23.00</div>
                                    </div>
                                    <div class="product-button">
                                        <div class="button-wrap"><a
                                                class="button button-xs button-primary button-winona"
                                                href="cart-page.html">Add to cart</a></div>
                                        <div class="button-wrap"><a
                                                class="button button-xs button-secondary button-winona"
                                                href="single-product">View Product</a></div>
                                    </div>
                                </article>
                            </div> -->
                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <!-- Product-->
                                <article class="product">
                                    <div class="product-figure"><img src="https://placehold.co/195x141" alt=""
                                            width="195" height="141" />
                                    </div>
                                    <div class="product-rating"><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star"></span>
                                    </div>
                                    <h6 class="product-title">Tri kỷ</h6>
                                    <div class="product-price-wrap">
                                        <div class="product-price">1?9.000đ</div>
                                    </div>
                                    <div class="product-button">
                                        <!-- <div class="button-wrap"><a
                                                class="button button-xs button-primary button-winona"
                                                href="cart-page.html">Thêm vào giỏ hàng</a></div> -->
                                        <div class="button-wrap"><a
                                                class="button button-xs button-secondary button-winona"
                                                href="single-product">Xem sản phẩm</a></div>
                                    </div><span class="product-badge product-badge-new">Mới</span>
                                </article>
                            </div>
                            <!-- <div class="col-sm-6 col-lg-4 col-xl-3">
                                <article class="product">
                                    <div class="product-figure"><img src="https://placehold.co/195x141" alt=""
                                            width="195" height="141" />
                                    </div>
                                    <div class="product-rating"><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star"></span>
                                    </div>
                                    <h6 class="product-title">Pesto Pizza</h6>
                                    <div class="product-price-wrap">
                                        <div class="product-price">$28.00</div>
                                    </div>
                                    <div class="product-button">
                                        <div class="button-wrap"><a
                                                class="button button-xs button-primary button-winona"
                                                href="cart-page.html">Add to cart</a></div>
                                        <div class="button-wrap"><a
                                                class="button button-xs button-secondary button-winona"
                                                href="single-product">View Product</a></div>
                                    </div>
                                </article>
                            </div> -->
                            <!-- <div class="col-sm-6 col-lg-4 col-xl-3">
                                <article class="product">
                                    <div class="product-figure"><img src="https://placehold.co/195x141" alt=""
                                            width="195" height="141" />
                                    </div>
                                    <div class="product-rating"><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                                    </div>
                                    <h6 class="product-title">Pepperoni Pizza</h6>
                                    <div class="product-price-wrap">
                                        <div class="product-price">$22.00</div>
                                    </div>
                                    <div class="product-button">
                                        <div class="button-wrap"><a
                                                class="button button-xs button-primary button-winona"
                                                href="cart-page.html">Add to cart</a></div>
                                        <div class="button-wrap"><a
                                                class="button button-xs button-secondary button-winona"
                                                href="single-product">View Product</a></div>
                                    </div>
                                </article>
                            </div> -->
                        </div>
                    </div>
                </section>

                <!-- Page Footer-->
                <footer class="section footer-modern context-dark footer-modern-2">
                    <div class="footer-modern-line">
                        <div class="container">
                            <div class="row row-50">
                                <div class="col-md-6 col-lg-4">
                                    <h5 class="footer-modern-title oh-desktop"><span
                                            class="d-inline-block wow slideInLeft">Những gì chúng tôi cung cấp</span>
                                    </h5>
                                    <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                                        <li><a href="#">abc</a></li>
                                        <li><a href="#">abc</a></li>
                                        <li><a href="#">abc</a></li>
                                        <li><a href="#">abc</a></li>
                                        <li><a href="#">abc</a></li>
                                        <li><a href="#">abc</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <h5 class="footer-modern-title oh-desktop"><span
                                            class="d-inline-block wow slideInLeft">Thông tin</span></h5>
                                    <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                                        <li><a href="about-us.html">Về chúng tôi</a></li>
                                        <li><a href="grid-blog.html">Dịch vụ của chúng tôi</a></li>
                                        <li><a href="#">FAQ</a></li>
                                        <li><a href="shop.html">Cửa hàng</a></li>
                                        <li><a href="contacts.html">Liên hệ ngay</a></li>
                                    </ul>
                                </div>
                                <div class="col-lg-4 col-xl-5">
                                    <h5 class="footer-modern-title oh-desktop"><span
                                            class="d-inline-block wow slideInLeft">Khách hàng mới</span></h5>
                                    <p class="wow fadeInRight">Đăng ký ngay hôm nay để nhận tin tức và cập nhật mới
                                        nhất.</p>
                                    <!-- RD Mailform-->
                                    <form class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop"
                                        data-form-output="form-output-global" data-form-type="subscribe" method="post"
                                        action="bat/rd-mailform.php">
                                        <div class="form-wrap wow slideInUp">
                                            <input class="form-input" id="subscribe-form-2-email" type="email"
                                                name="email" data-constraints="@Email @Required" />
                                            <label class="form-label" for="subscribe-form-2-email">Nhập
                                                E-mail của bạn</label>
                                        </div>
                                        <div class="form-button form-button-2 wow slideInRight">
                                            <button class="button button-sm button-icon-3 button-primary button-winona"
                                                type="submit"><span class="d-none d-xl-inline-block">Đăng ký</span><span
                                                    class="icon mdi mdi-telegram d-xl-none"></span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-modern-line-2">
                        <div class="container">
                            <div class="row row-30 align-items-center">
                                <div class="col-sm-6 col-md-7 col-lg-4 col-xl-4">
                                    <div class="row row-30 align-items-center text-lg-center">
                                        <div class="col-md-7 col-xl-6"><a class="brand" href="landing"><img
                                                    src="assets/images/Logo_white.png" alt="" width="163"
                                                    height="57" /></a></div>
                                        <div class="col-md-5 col-xl-6">
                                            <div class="iso-1">
                                                <a href="https://www.facebook.com/profile.php?id=61573141550651">
                                                    <img src="assets/images/like-icon-58x25.webp" alt="" width="58"
                                                        height="25" />
                                                </a>
                                                <span class="iso-1-big">9.4k</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-12 col-lg-8 col-xl-8 oh-desktop">
                                    <div class="group-xmd group-sm-justify">
                                        <div class="footer-modern-contacts wow slideInUp">
                                            <div class="unit unit-spacing-sm align-items-center">
                                                <div class="unit-left"><span class="icon icon-24 mdi mdi-phone"></span>
                                                </div>
                                                <div class="unit-body"><a class="phone" href="tel:#">0327992501</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer-modern-contacts wow slideInDown">
                                            <div class="unit unit-spacing-sm align-items-center">
                                                <div class="unit-left"><span class="icon mdi mdi-email"></span></div>
                                                <div class="unit-body"><a class="mail"
                                                        href="mailto:#">healin.fpt@gmail.com</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="wow slideInRight">
                                            <ul
                                                class="list-inline footer-social-list footer-social-list-2 footer-social-list-3">
                                                <li><a class="icon mdi mdi-facebook" href="#"></a></li>
                                                <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                                                <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                                                <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-modern-line-3">
                        <div class="container">
                            <div class="row row-10 justify-content-between">
                                <div class="col-md-6"><a href="#">Km29 Đại lộ Thăng Long - Thạch Thất - Hà Nội</a></div>
                                <div class="col-md-auto">
                                    <!-- Rights-->
                                    <p class="rights">
                                        <span>&copy;&nbsp;</span><span
                                            class="copyright-year"></span><span></span><span>.&nbsp;</span><span>Tất cả
                                            các quyền được bảo lưu.</span><span>
                                            Thiết kế&nbsp;bởi&nbsp;<a href="#">Heal
                                                In</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>


            <!-- Global Mailform Output-->
            <div class="snackbars" id="form-output-global"></div>
            <!-- Javascript-->
            <script src="js/core.min.js"></script>
            <script src="js/script.js"></script>
            <script src="js/single-product.js"></script>
            <!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69"
                    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
            <script>
                (function (w, d, s, l, i) {
                    w[l] = w[l] || [];
                    w[l].push({
                        'gtm.start': new Date().getTime(),
                        event: 'gtm.js'
                    });
                    var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s),
                        dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
                })(window, document, 'script', 'dataLayer', 'GTM-P9FT69');
            </script>
            <!-- End Google Tag Manager -->
        </body>

        </html>