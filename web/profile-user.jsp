<%-- 
    Document   : profile-user
    Created on : Jan 8, 2025, 9:31:15 AM
    Author     : dangx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">

<head>
    <title>Cart Page</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500%7CSignika">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">

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
                <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static"
                    data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="56px" data-xl-stick-up-offset="56px" data-xxl-stick-up-offset="56px" data-lg-stick-up="true"
                    data-xl-stick-up="true" data-xxl-stick-up="true">
                    <div class="rd-navbar-inner-outer">
                        <div class="rd-navbar-inner">
                            <!-- RD Navbar Panel-->
                            <div class="rd-navbar-panel">
                                <!-- RD Navbar Toggle-->
                                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                                <!-- RD Navbar Brand-->
                                <div class="rd-navbar-brand"><a class="brand" href="index.html"><img class="brand-logo-dark" src="assets/images/logo-198x66.png" alt="" width="189" height="66"/></a></div>
                            </div>
                            <div class="rd-navbar-right rd-navbar-nav-wrap">
                                <div class="rd-navbar-aside">
                                    <ul class="rd-navbar-contacts-2">
                                        <li>
                                            <div class="unit unit-spacing-xs">
                                                <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                                                <div class="unit-body"><a class="phone" href="tel:#">+1 718-999-3939</a></div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="unit unit-spacing-xs">
                                                <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                                                <div class="unit-body"><a class="address" href="#">514 S. Magnolia St. Orlando, FL 32806</a></div>
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
                                        <li class="rd-nav-item"><a class="rd-nav-link" href="index.html">Home</a>
                                        </li>
                                        <li class="rd-nav-item"><a class="rd-nav-link" href="about-us.html">About us</a>
                                        </li>
                                        <li class="rd-nav-item"><a class="rd-nav-link" href="menu.html">Menu</a>
                                        </li>
                                        <li class="rd-nav-item"><a class="rd-nav-link" href="#">News</a>
                                            <!-- RD Navbar Dropdown-->
                                            <ul class="rd-menu rd-navbar-dropdown">
                                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="grid-blog.html">Grid blog</a></li>
                                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="masonry-blog.html">Masonry blog</a></li>
                                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="blog-post.html">Blog post</a></li>
                                            </ul>
                                        </li>
                                        <li class="rd-nav-item active"><a class="rd-nav-link" href="shop.html">Shop</a>
                                            <!-- RD Navbar Dropdown-->
                                            <ul class="rd-menu rd-navbar-dropdown">
                                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="single-product.html">Single product</a></li>
                                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="checkout.html">Checkout</a></li>
                                                <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="cart-page.html">Cart page</a></li>
                                            </ul>
                                        </li>
                                        <li class="rd-nav-item"><a class="rd-nav-link" href="#">Pages</a>
                                            <!-- RD Navbar Megamenu-->
                                            <ul class="rd-menu rd-navbar-megamenu">
                                                <li class="rd-megamenu-item">
                                                    <h6 class="rd-megamenu-title">Services</h6>
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="services.html">Services</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="services-2.html">Services 2</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="services-3.html">Services 3</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="services-4.html">Services 4</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="single-service.html">Single service</a></li>
                                                    </ul>
                                                </li>
                                                <li class="rd-megamenu-item">
                                                    <h6 class="rd-megamenu-title">Additional Pages</h6>
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="404-page.html">404 page</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="coming-soon.html">Coming soon</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="counters.html">Counters</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="icon-lists.html">Icon lists</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="search-results.html">Search results</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="privacy-policy.html">Privacy policy</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="contacts.html">Contacts</a></li>
                                                    </ul>
                                                </li>
                                                <li class="rd-megamenu-item">
                                                    <h6 class="rd-megamenu-title">Elements</h6>
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="typography.html">Typography</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="buttons.html">Buttons</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="forms.html">Forms</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="tabs-and-accordions.html">Tabs and accordions</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="progress-bars.html">Progress bars</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="grid-system.html">Grid system</a></li>
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="tables.html">Tables</a></li>
                                                    </ul>
                                                </li>
                                                <li class="rd-megamenu-item">
                                                    <h6 class="rd-megamenu-title">Gallery</h6>
                                                    <ul class="rd-megamenu-list">
                                                        <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="grid-gallery.html">Grid Gallery</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1" data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap" data-multitoggle-isolate="data-multitoggle-isolate">
                                <div class="project-hamburger"><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span>
                                </div>
                            </div> -->
                            <div class="rd-navbar-project">
                                <div class="rd-navbar-project-header">
                                    <h5 class="rd-navbar-project-title">Gallery</h5>
                                    <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-close" data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap" data-multitoggle-isolate="data-multitoggle-isolate">
                                        <div class="project-close"><span></span><span></span></div>
                                    </div>
                                </div>
                                <div class="rd-navbar-project-content rd-navbar-content">
                                    <div>
                                        <div class="row gutters-20" data-lightgallery="group">
                                            <div class="col-6">
                                                <!-- Thumbnail Creative-->
                                                <article class="thumbnail thumbnail-creative">
                                                    <a href="images/project-1-1200x800-original.jpg" data-lightgallery="item">
                                                        <div class="thumbnail-creative-figure"><img src="images/project-1-195x164.jpg" alt="" width="195" height="164" />
                                                        </div>
                                                        <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div>
                                                    </a>
                                                </article>
                                            </div>
                                            <div class="col-6">
                                                <!-- Thumbnail Creative-->
                                                <article class="thumbnail thumbnail-creative">
                                                    <a href="images/project-2-1200x800-original.jpg" data-lightgallery="item">
                                                        <div class="thumbnail-creative-figure"><img src="images/project-2-195x164.jpg" alt="" width="195" height="164" />
                                                        </div>
                                                        <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div>
                                                    </a>
                                                </article>
                                            </div>
                                            <div class="col-6">
                                                <!-- Thumbnail Creative-->
                                                <article class="thumbnail thumbnail-creative">
                                                    <a href="images/project-3-1200x800-original.jpg" data-lightgallery="item">
                                                        <div class="thumbnail-creative-figure"><img src="images/project-3-195x164.jpg" alt="" width="195" height="164" />
                                                        </div>
                                                        <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div>
                                                    </a>
                                                </article>
                                            </div>
                                            <div class="col-6">
                                                <!-- Thumbnail Creative-->
                                                <article class="thumbnail thumbnail-creative">
                                                    <a href="images/project-4-1200x800-original.jpg" data-lightgallery="item">
                                                        <div class="thumbnail-creative-figure"><img src="images/project-4-195x164.jpg" alt="" width="195" height="164" />
                                                        </div>
                                                        <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div>
                                                    </a>
                                                </article>
                                            </div>
                                            <div class="col-6">
                                                <!-- Thumbnail Creative-->
                                                <article class="thumbnail thumbnail-creative">
                                                    <a href="images/project-5-1200x800-original.jpg" data-lightgallery="item">
                                                        <div class="thumbnail-creative-figure"><img src="images/project-5-195x164.jpg" alt="" width="195" height="164" />
                                                        </div>
                                                        <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div>
                                                    </a>
                                                </article>
                                            </div>
                                            <div class="col-6">
                                                <!-- Thumbnail Creative-->
                                                <article class="thumbnail thumbnail-creative">
                                                    <a href="images/project-6-1200x800-original.jpg" data-lightgallery="item">
                                                        <div class="thumbnail-creative-figure"><img src="images/project-6-195x164.jpg" alt="" width="195" height="164" />
                                                        </div>
                                                        <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div>
                                                    </a>
                                                </article>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            
                        </div>
                    </div>
                </nav>
            </div>
        </header>
        <!-- Breadcrumbs -->
        <!-- <section class="bg-gray-7">
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
        </section> -->
        <!-- Shopping Cart-->
        <iframe src="profile-user-only.jsp" width="100%" height="750px" frameborder="0"></iframe>

        <!-- Page Footer-->
        <footer class="section footer-modern context-dark footer-modern-2">
            <div class="footer-modern-line">
                <div class="container">
                    <div class="row row-50">
                        <div class="col-md-6 col-lg-4">
                            <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">What We Offer</span></h5>
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
                            <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">Information</span></h5>
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
                            <h5 class="footer-modern-title oh-desktop"><span class="d-inline-block wow slideInLeft">Newsletter</span></h5>
                            <p class="wow fadeInRight">Sign up today for the latest news and updates.</p>
                            <!-- RD Mailform-->
                            <form class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop" data-form-output="form-output-global" data-form-type="subscribe" method="post" action="bat/rd-mailform.php">
                                <div class="form-wrap wow slideInUp">
                                    <input class="form-input" id="subscribe-form-2-email" type="email" name="email" data-constraints="@Email @Required" />
                                    <label class="form-label" for="subscribe-form-2-email">Enter your E-mail</label>
                                </div>
                                <div class="form-button form-button-2 wow slideInRight">
                                    <button class="button button-sm button-icon-3 button-primary button-winona" type="submit"><span class="d-none d-xl-inline-block">Subscribe</span><span class="icon mdi mdi-telegram d-xl-none"></span></button>
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
                                <div class="col-md-7 col-xl-6"><a class="brand" href="index.html"><img src="assets/images/logo-inverse-163x57.png" alt="" width="163" height="57"/></a></div>
                                <div class="col-md-5 col-xl-6">
                                    <div class="iso-1"><span><img src="assets/images/like-icon-58x25.png" alt="" width="58" height="25"/></span><span class="iso-1-big">9.4k</span></div>
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
                                        <div class="unit-body"><a class="mail" href="mailto:#">info@demolink.org</a></div>
                                    </div>
                                </div>
                                <div class="wow slideInRight">
                                    <ul class="list-inline footer-social-list footer-social-list-2 footer-social-list-3">
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
                            <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span></span><span>.&nbsp;</span><a href="privacy-policy.html">Privacy policy</a></p>
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
    <!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <script>
        (function(w, d, s, l, i) {
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
