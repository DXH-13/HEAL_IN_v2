<%-- 
    Document   : cart-page
    Created on : Jan 29, 2025, 7:18:26 PM
    Author     : dangx
--%>
<%@ page import="model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">

    <head>
        <title>Cart Page</title>
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport"
              content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
        <!-- Stylesheets-->
        <link rel="stylesheet" type="text/css"
              href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500%7CSignika">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/fonts.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/cart-page.css">
        <!--[if lt IE 10]>
        <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="https://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
        <script src="js/html5shiv.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <% User user=(User) session.getAttribute("userLogin"); %>
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
                                    <div class="rd-navbar-brand"><a class="brand" href="landing?id=${sessionScope.userLogin.normalUserId}"><img
                                                class="brand-logo-dark" src="https://placehold.co/198x66" alt=""
                                                width="189" height="66" /></a></div>
                                </div>
                                <div class="rd-navbar-right rd-navbar-nav-wrap">
                                    <div class="rd-navbar-aside">
                                        <ul class="rd-navbar-contacts-2">
                                            <li>
                                                <div class="unit unit-spacing-xs">
                                                    <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                                                    <div class="unit-body"><a class="phone" href="tel:#">+1 718-999-3939</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="unit unit-spacing-xs">
                                                    <div class="unit-left"><span class="icon mdi mdi-map-marker"></span>
                                                    </div>
                                                    <div class="unit-body"><a class="address" href="#">514 S. Magnolia St.
                                                            Orlando, FL 32806</a></div>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="list-share-2">
                                            <li><a class="icon mdi mdi-facebook" href="#"></a></li>
                                            <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                                            <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                                            <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                                        </ul>
                                    </div>
                                    <div class="rd-navbar-main">
                                        <!-- RD Navbar Nav-->
                                        <ul class="rd-navbar-nav">
                                            <li class="rd-nav-item"><a class="rd-nav-link"
                                                                       href="landing?id=${sessionScope.userLogin.normalUserId}">Home</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link"
                                                                       href="views/about-us.html">About us</a>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link"
                                                                       href="views/typography.html">Game</a>
                                            </li>
                                            <li class="rd-nav-item active"><a class="rd-nav-link" href="#shop">Shop</a>
                                                <ul class="rd-menu rd-navbar-dropdown">
                                                    <li class="rd-dropdown-item "><a class="rd-dropdown-link"
                                                                                     href="single_product?id=${sessionScope.userLogin.normalUserId}&idProduct=1#product">Đoàn Viên</a>
                                                    </li>
                                                    <li class="rd-dropdown-item"><a class="rd-dropdown-link"
                                                                                    href="single_product?id=${sessionScope.userLogin.normalUserId}&idProduct=2#product">Tri Kỷ</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="rd-nav-item"><a class="rd-nav-link"
                                                                       href="views/contacts.html">Contacts</a>
                                            </li>
                                            <% if (user==null) { %>
                                            <li class="rd-nav-item loginbtn">
                                                <a class="rd-nav-link" href="log_in">Login</a>
                                            </li>
                                            <% } else { %>
                                            <li class="rd-nav-item active loginbtn"><a class="rd-nav-link" href="shop.html">Avatar</a>
                                                <ul class="rd-menu rd-navbar-dropdown">
                                                    <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="profile_user">Profile user</a></li>
                                                    <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="log_out">Log out</a></li>
                                                </ul>
                                            </li>
                                            <% } %>

                                        </ul>
                                    </div>
                                </div>
                                <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1"
                                     data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap"
                                     data-multitoggle-isolate="data-multitoggle-isolate">
                                    <!-------------------------------------------------------------->

                                    <% if (user==null) { %>
                                    <a href="log_in" class="loginbtn2">Login</a>
                                    <% } else { %>
                                    <div class="dropdown">
                                        <button class="dropbtn">
                                            <img src="https://placehold.co/50x50" alt="Avatar"
                                                 class="avatar">
                                        </button>
                                        <div class="dropdown-content">
                                            <a href="profile_user">Profile</a>
                                            <a href="log_out">Logout</a>
                                        </div>
                                    </div>
                                    <% } %>


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
                        <h3 class="breadcrumbs-custom-title">Cart Page</h3>
                        <div class="breadcrumbs-custom-decor"></div>
                    </div>
                    <div class="box-transform" style="background-image: url(assets/images/bg-1.jpg);"></div>
                </div>
                <div class="container">
                    <ul class="breadcrumbs-custom-path">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="shop.html">Shop</a></li>
                        <li class="active">Cart Page</li>
                    </ul>
                </div>
            </section>
            <!-- Shopping Cart-->
            <section class="section section-lg bg-default">
                <div class="container">
                    <!-- shopping-cart-->
                    <div class="table-custom-responsive">

                        <table class="table-custom table-cart">
                            <thead>
                                <tr>
                                    <th>
                                        <label class="containerCK">
                                            <input type="checkbox" checked="checked">
                                            <div class="checkmark"></div>
                                        </label>
                                    </th>
                                    <th>Product name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cart" items="${cart}" varStatus="loop">
                                    <tr>
                                        <td>
                                            <label class="containerCK">
                                                <input type="checkbox" checked="checked">
                                                <div class="checkmark"></div>
                                            </label>
                                        </td>
                                        <td>
                                            <a class="table-cart-figure" href="single-product.html">
                                                <img src="https://placehold.co/195x141" alt="" width="195" height="141" />
                                            </a>
                                            <a class="table-cart-link" href="single-product.html">Waldorf Salad</a>
                                        </td>
                                        <td>$24</td>
                                        <td>
                                            <div class="table-cart-stepper">
                                                <input class="form-input" type="number" data-zeros="true" value="1" min="1"
                                                       max="50">
                                            </div>
                                        </td>
                                        <td>$24</td>
                                        <td>
                                            <button class="deleteProbtn">
                                                <svg viewBox="0 0 15 17.5" height="17.5" width="15"
                                                     xmlns="http://www.w3.org/2000/svg" class="iconDelete">
                                                <path transform="translate(-2.5 -1.25)"
                                                      d="M15,18.75H5A1.251,1.251,0,0,1,3.75,17.5V5H2.5V3.75h15V5H16.25V17.5A1.251,1.251,0,0,1,15,18.75ZM5,5V17.5H15V5Zm7.5,10H11.25V7.5H12.5V15ZM8.75,15H7.5V7.5H8.75V15ZM12.5,2.5h-5V1.25h5V2.5Z"
                                                      id="Fill"></path>
                                                </svg>
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                    </div>
                    <div class="group-xxxl group-middle justify-content-md-end">
                        <div>
                            <div class="group-xxl group-middle">
                                <p class="big text-gray-500">Total</p>
                                <h4 class="text-spacing-75">$39</h4>
                            </div>
                        </div><a class="button button-lg button-width-240 button-primary button-winona"
                                 href="checkout.html">Checkout</a>
                    </div>

                    <div id="emptyCartMessage" style="display: none; text-align: center;">
                        <img src="assets/images/empty_cart.png" width="400" height="400" alt="empty_cart">
                        <h3 style="font-size: 20px; margin-bottom: 50px;">Your shopping cart is empty</h3>
                        <a href="#" class="goShopbtn"> Go Shopping Now </a>
                    </div>


                </div>

            </section>

            <!-- Page Footer-->
            <footer class="section footer-modern context-dark footer-modern-2">
                <div class="footer-modern-line">
                    <div class="container">
                        <div class="row row-50">
                            <div class="col-md-6 col-lg-4">
                                <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">What
                                        We Offer</span></h5>
                                <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                                    <li><a href="#">Pizzas</a></li>
                                    <li><a href="#">Burgers</a></li>
                                    <li><a href="#">Salads</a></li>
                                    <li><a href="#">Drinks</a></li>
                                    <li><a href="#">Seafood</a></li>
                                    <li><a href="#">Drinks</a></li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <h5 class="footer-modern-title oh-desktop"><span
                                        class="d-inline-block wow slideInLeft">Information</span></h5>
                                <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                                    <li><a href="about-us.html">About us</a></li>
                                    <li><a href="grid-blog.html">Latest News</a></li>
                                    <li><a href="menu.html">Our Menu</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="contacts.html">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-xl-5">
                                <h5 class="footer-modern-title oh-desktop"><span
                                        class="d-inline-block wow slideInLeft">Newsletter</span></h5>
                                <p class="wow fadeInRight">Sign up today for the latest news and updates.</p>
                                <!-- RD Mailform-->
                                <form class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop"
                                      data-form-output="form-output-global" data-form-type="subscribe" method="post"
                                      action="bat/rd-mailform.php">
                                    <div class="form-wrap wow slideInUp">
                                        <input class="form-input" id="subscribe-form-2-email" type="email" name="email"
                                               data-constraints="@Email @Required" />
                                        <label class="form-label" for="subscribe-form-2-email">Enter your E-mail</label>
                                    </div>
                                    <div class="form-button form-button-2 wow slideInRight">
                                        <button class="button button-sm button-icon-3 button-primary button-winona"
                                                type="submit"><span class="d-none d-xl-inline-block">Subscribe</span><span
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
                                    <div class="col-md-7 col-xl-6"><a class="brand" href="index.html"><img
                                                src="assets/images/logo-inverse-163x57.png" alt="" width="163"
                                                height="57" /></a></div>
                                    <div class="col-md-5 col-xl-6">
                                        <div class="iso-1"><span><img src="assets/images/like-icon-58x25.png" alt=""
                                                                      width="58" height="25" /></span><span class="iso-1-big">9.4k</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-12 col-lg-8 col-xl-8 oh-desktop">
                                <div class="group-xmd group-sm-justify">
                                    <div class="footer-modern-contacts wow slideInUp">
                                        <div class="unit unit-spacing-sm align-items-center">
                                            <div class="unit-left"><span class="icon icon-24 mdi mdi-phone"></span></div>
                                            <div class="unit-body"><a class="phone" href="tel:#">+1 718-999-3939</a></div>
                                        </div>
                                    </div>
                                    <div class="footer-modern-contacts wow slideInDown">
                                        <div class="unit unit-spacing-sm align-items-center">
                                            <div class="unit-left"><span class="icon mdi mdi-email"></span></div>
                                            <div class="unit-body"><a class="mail" href="mailto:#">info@demolink.org</a>
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
                            <div class="col-md-6"><a href="#">514 S. Magnolia St. Orlando, FL 32806</a></div>
                            <div class="col-md-auto">
                                <!-- Rights-->
                                <p class="rights"><span>&copy;&nbsp;</span><span
                                        class="copyright-year"></span><span>&nbsp;</span><span></span><span>.&nbsp;</span><a
                                        href="privacy-policy.html">Privacy policy</a></p>
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
        <script src="js/cart-page.js   "></script>
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
