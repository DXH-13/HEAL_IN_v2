<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">

    <head>
        <title>Thanh toán</title>
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
        <link rel="stylesheet" href="css/checkout.css">
        <link rel="stylesheet" href="css/home.css">
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
                    <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed"
                         data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed"
                         data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed"
                         data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static"
                         data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static"
                         data-lg-stick-up-offset="56px" data-xl-stick-up-offset="56px" data-xxl-stick-up-offset="56px"
                         data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
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
                                                    <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                                                    <div class="unit-body"><a class="phone" href="tel:#">0327992501</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="unit unit-spacing-xs">
                                                    <div class="unit-left"><span class="icon mdi mdi-map-marker"></span>
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
                                            <li class="rd-nav-item "><a class="rd-nav-link"
                                                                        href="landing">Trang chủ</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link"
                                                                       href="about_us">Về chúng tôi</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link"
                                                                       href="pre_game">Trò chơi</a>
                                            </li>
                                            <li class="rd-nav-item "><a class="rd-nav-link" href="landing#shop">Cửa hàng</a>
                                                <ul class="rd-menu rd-navbar-dropdown">
                                                    <li class="rd-dropdown-item "><a class="rd-dropdown-link"
                                                                                     href="single_product?idProduct=1#product">Đoàn Viên</a>
                                                    </li>
                                                    <li class="rd-dropdown-item"><a class="rd-dropdown-link"
                                                                                    href="single_product?idProduct=2#product">Tri Kỷ</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="rd-nav-item active">
                                                <a class="rd-nav-link" href="cart">
                                                    <span class="fa-shopping-basket" style="font-size: 30px"></span>
                                                    <c:choose>
                                                        <c:when test="${sessionScope.userLogin == null}">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:if test="${productInCart > 0}">
                                                                <span class="cart-badge">${productInCart}</span>
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
                                                                <a class="rd-dropdown-link" href="profile_user">Hồ sơ</a>
                                                            </li>
                                                            <li class="rd-dropdown-item">
                                                                <a class="rd-dropdown-link" href="log_out">Đăng Xuất</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
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
                                                    <img src="https://placehold.co/50x50" alt="Avatar"
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
            <section class="bg-gray-7">
                <div class="breadcrumbs-custom box-transform-wrap context-dark">
                    <div class="container">
                        <h3 class="breadcrumbs-custom-title">Thanh toán</h3>
                        <div class="breadcrumbs-custom-decor"></div>
                    </div>
                    <div class="box-transform" style="background-image: url(assets/images/banner/banner_cart.png);"></div>
                </div>
                <div class="container">
                    <ul class="breadcrumbs-custom-path">
                        <li><a href="index.html">Trang chủ</a></li>
                        <li><a href="shop.html">Cửa hàng</a></li>
                        <li class="active">Thanh toán</li>
                    </ul>
                </div>
            </section>
            <!-- Section checkout form-->
            <section class="section section-sm section-first bg-default text-md-left">
                <div class="container">

                    <div class="row row-50 justify-content-center">

                        <div class="col-md-10 col-lg-6">
                            <h5>Địa chỉ giao hàng</h5>
                            <form class="rd-form rd-mailform form-checkout">
                                <div class="row row-14 gutters-14">
                                    <div class="col-sm-12">
                                        <div class="form-wrap">
                                            <input class="form-input" id="checkout-first-name-2" type="text" name="name"
                                                   data-constraints="@Required" />
                                            <label class="form-label" for="checkout-first-name-2">Tên</label>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="form-wrap" >
                                            <select id="provinces" onchange="getProvinces(event)" onfocus="checkDefaultOption(event)" required>
                                                <option  value="">Tỉnh/Thành phố</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-wrap">
                                            <select id="districts" onchange="getDistricts(event)" required>
                                                <option  value="">Quận/Huyện</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-wrap">
                                            <select id="wards" required>
                                                <option value="">Phường/Xã</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-wrap">
                                            <input class="form-input" id="checkout-address-2" type="text" name="name"
                                                   data-constraints="@Required" />
                                            <label class="form-label" for="checkout-address-2">Địa chỉ cụ thể</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-wrap">
                                            <input class="form-input" id="checkout-email-2" type="email" name="email"
                                                   data-constraints="@Email @Required" />
                                            <label class="form-label" for="checkout-email-2">E-Mail</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-wrap">
                                            <input class="form-input" id="checkout-phone-2" type="text" name="phone"
                                                   data-constraints="@Numeric" />
                                            <label class="form-label" for="checkout-phone-2">Số điện thoại </label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Shopping Cart-->
            <section class="section section-sm bg-default text-md-left">
                <div class="container">
                    <h5>Giỏ hàng của bạn</h5>
                    <!-- shopping-cart-->
                    <div class="table-custom-responsive">
                        <table class="table-custom table-cart">
                            <thead>
                                <tr>
                                    <th class="productnameTh">Tên sản phẩm</th>
                                    <th class="priceTh">Đơn giá</th>
                                    <th>Số Lượng</th>
                                    <th>Số Tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cart" items="${cartBuy}" varStatus="loop">
                                    <tr>
                                        <td class="productnameTd">
                                            <a class="table-cart-figure" href="single-product.html">
                                                <img src="${cart.productRepresentativeImage}" alt="" width="195" height="141" />
                                            </a>
                                            <a class="table-cart-link" href="single-product.html">${cart.productName}</a>
                                        </td>

                                        <td class="priceTd" style="text-transform: lowercase;">${cart.productPrice}đ</td>

                                        <td>
                                            <div class="table-cart-stepper">
                                                <input class="form-input" type="number" data-zeros="true" value="${cart.quantity}" min="1"
                                                       max="1000" disabled>
                                            </div>
                                        </td>

                                    <td style="text-transform: lowercase;">${cart.productPrice * cart.quantity}00đ</td>

                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <!-- Section Payment-->
            <section class="section section-sm section-last bg-default text-md-left">
                <div class="container">
                    <div class="row row-50 justify-content-center">
                        <div class="col-md-10 col-lg-6">
                            <h5>Phương thức thanh toán</h5>
                            <div class="box-radio">
                                <div class="radio-panel">
                                    <label class="radio-inline active">
                                        <input name="input-group-radio" value="checkbox-1" type="radio" checked>
                                        Thanh toán khi nhận hàng
                                    </label>
                                    <div class="radio-panel-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed. amet, consectetur
                                            adipiscing elit, sed</p>
                                    </div>
                                </div>
                                <div class="radio-panel">
                                    <label class="radio-inline">
                                        <input name="input-group-radio" value="checkbox-1" type="radio">
                                        Thanh toán qua ngân hàng
                                    </label>
                                    <div class="radio-panel-content">
                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State /
                                            County, Store Postcode.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-10 col-lg-6">
                            <h5>Cart totals</h5>
                            <div class="table-custom-responsive">
                                <table class="table-custom table-custom-primary table-checkout">
                                    <tbody>
                                        <tr>
                                            <td>Cart Subtotal</td>
                                            <td>$39</td>
                                        </tr>
                                        <tr>
                                            <td>Giao hàng</td>
                                            <td>Free</td>
                                        </tr>
                                        <tr>
                                            <td>Tổng thanh toán</td>
                                            <td>$39</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="button-wrap text-center"><a
                            class="button button-lg button-width-240 button-primary button-pipaluk" href="#">Checkout</a>
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
                                        class="d-inline-block wow slideInLeft">Thông tin</span>
                                </h5>
                                <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                                    <li><a href="views/about-us.html">Về chúng tôi</a></li>
                                    <li><a href="#">Dịch vụ của chúng tôi</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Cửa hàng</a></li>
                                    <li><a href="views/contacts.html">Liên hệ ngay</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-xl-5">
                                <h5 class="footer-modern-title oh-desktop"><span
                                        class="d-inline-block wow slideInLeft">Khách hàng mới</span>
                                </h5>
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
                                                type="submit"><span
                                                class="d-none d-xl-inline-block">Đăng ký</span><span
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
                                                src="assets/images/Logo_white.png" alt="" width="198"
                                                height="66" /></a></div>
                                    <div class="col-md-5 col-xl-6">
                                        <div class="iso-1">
                                            <a href="https://www.facebook.com/profile.php?id=61573141550651">
                                                <img src="assets/images/like-icon-58x25.webp" alt="" width="58"
                                                     height="25" />
                                            </a>
                                            <span class="iso-1-big">9.4k
                                            </span>
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
                                            <div class="unit-left"><span class="icon mdi mdi-email"></span>
                                            </div>
                                            <div class="unit-body"><a class="mail"
                                                                      href="mailto:#">healin.fpt@gmail.com</a></div>
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
                            <div class="col-md-6"><span>Km29 Đại lộ Thăng Long - Thạch Thất - Hà Nội</span></div>
                            <div class="col-md-auto">
                                <!-- Rights-->
                                <p class="rights">
                                    <span>&copy;&nbsp;</span><span
                                        class="copyright-year"></span><span></span><span>.&nbsp;</span><span>Tất cả
                                        các quyền được bảo lưu.</span><span>
                                        Thiết kế&nbsp;bởi&nbsp;<a href="https://www.templatemonster.com">Heal
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

        <!--        <script src="js/filter-address.js"></script>-->
        <script src="js/core.min.js"></script>
        <script src="js/script.js"></script>
        <!--        <script src="js/checkout.js"></script>-->
        <!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69" height="0"
                                                     width="0" style="display:none;visibility:hidden"></iframe></noscript>
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
