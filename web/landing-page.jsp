<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Home</title>
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport"
              content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
        <!-- Stylesheets-->
        <link rel="stylesheet" type="text/css"
              href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/fonts.css">
        <link rel="stylesheet" href="css/style.css">
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
            <!-- Top Banner<a class="section section-banner text-center d-none d-xl-block" href="https://www.templatemonster.com/intense-multipurpose-html-template.html" style="background-image: url(images/banner/background-04-1920x60.jpg); background-image: -webkit-image-set( url(images/banner/background-04-1920x60.jpg) 1x, url(images/banner/background-04-3840x120.jpg) 2x )"><img src="images/banner/foreground-04-1600x60.png" srcset="images/banner/foreground-04-1600x60.png 1x, images/banner/foreground-04-3200x120.png 2x" alt="" width="1600" height="310"></a> -->
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
                                                class="brand-logo-dark" src="https://placehold.co/198x66"
                                                alt="" width="198" height="66" /></a>
                                    </div>
                                </div>
                                <div class="rd-navbar-right rd-navbar-nav-wrap">
                                    <div class="rd-navbar-aside">
                                        <ul class="rd-navbar-contacts-2">
                                            <li>
                                                <div class="unit unit-spacing-xs">
                                                    <div class="unit-left"><span
                                                            class="icon mdi mdi-phone"></span>
                                                    </div>
                                                    <div class="unit-body"><a class="phone" href="tel:#">+1
                                                            718-999-3939</a></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="unit unit-spacing-xs">
                                                    <div class="unit-left"><span
                                                            class="icon mdi mdi-map-marker"></span></div>
                                                    <div class="unit-body"><a class="address" href="#">514 S.
                                                            Magnolia St. Orlando, FL 32806</a>
                                                    </div>
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
                                            <li class="rd-nav-item active">
                                                <a class="rd-nav-link active" href="landing">Home</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="about_us">About us</a>
                                            </li>                                       
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="/web/views/typography.html">Game</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="#shop">Shop</a>
                                                <ul class="rd-menu rd-navbar-dropdown">
                                                    <li class="rd-dropdown-item ">
                                                        <a class="rd-dropdown-link" href="single_product?idProduct=1#product">Đoàn Viên</a>
                                                    </li>
                                                    <li class="rd-dropdown-item">
                                                        <a class="rd-dropdown-link" href="single_product?idProduct=2#product">Tri Kỷ</a>
                                                    </li>
                                                </ul>
                                            </li>

                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="cart#cart">
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
                                                        <a class="rd-nav-link" href="log_in">Login</a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="rd-nav-item active loginbtn">
                                                        <a class="rd-nav-link" href="shop.html">Avatar</a>
                                                        <ul class="rd-menu rd-navbar-dropdown">
                                                            <li class="rd-dropdown-item">
                                                                <a class="rd-dropdown-link" href="profile_user">Profile user</a>
                                                            </li>
                                                            <li class="rd-dropdown-item">
                                                                <a class="rd-dropdown-link" href="log_out">Log out</a>
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
                                            <a href="log_in" class="loginbtn2">Login</a>
                                        </c:when>
                                        <c:otherwise>
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
                                        </c:otherwise>
                                    </c:choose>

                                    <!-------------------------------------------------------------->
                                </div>

                            </div>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- Swiper-->
            <section class="section swiper-container swiper-slider swiper-slider-2 swiper-slider-3"
                     data-loop="true" data-autoplay="5000" data-simulate-touch="false" data-slide-effect="fade">
                <div class="swiper-wrapper text-sm-left">
                    <div class="swiper-slide context-dark" data-slide-bg="https://placehold.co/1918x753">
                        <div class="swiper-slide-caption section-md">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-9 col-md-8 col-lg-7 col-xl-7 offset-lg-1 offset-xxl-0">
                                        <h1 class="oh swiper-title">
                                            <span class="d-inline-block" data-caption-animate="slideInUp" data-caption-delay="0">ABC</span></h1>
                                        <p class="big swiper-text" data-caption-animate="fadeInLeft"
                                           data-caption-delay="300">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        </p>
                                        <a class="button button-lg button-primary button-winona button-shadow-2"
                                           href="#" data-caption-animate="fadeInUp"
                                           data-caption-delay="300">View
                                            our menu</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide context-dark" data-slide-bg="https://placehold.co/1918x753">
                        <div class="swiper-slide-caption section-md">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-8 col-lg-7 offset-lg-1 offset-xxl-0">
                                        <h1 class="oh swiper-title"><span class="d-inline-block"
                                                                          data-caption-animate="slideInDown"
                                                                          data-caption-delay="0">ABC</span></h1>
                                        <p class="big swiper-text" data-caption-animate="fadeInRight"
                                           data-caption-delay="300">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..</p>
                                        <div class="button-wrap oh"><a
                                                class="button button-lg button-primary button-winona button-shadow-2"
                                                href="#" data-caption-animate="slideInUp"
                                                data-caption-delay="0">View our menu</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Swiper Pagination-->
                <div class="swiper-pagination" data-bullet-custom="true"></div>
                <!-- Swiper Navigation-->
                <div class="swiper-button-prev">
                    <div class="preview">
                        <div class="preview__img"></div>
                    </div>
                    <div class="swiper-button-arrow"></div>
                </div>
                <div class="swiper-button-next">
                    <div class="swiper-button-arrow"></div>
                    <div class="preview">
                        <div class="preview__img"></div>
                    </div>
                </div>
            </section>
            <!-- What We Offer-->
            <section class="section section-md bg-default">
                <div class="container">
                    <h3 class="oh-desktop"><span class="d-inline-block wow slideInDown">Our Menu</span></h3>
                    <div class="row row-md row-30">
                        <div class="col-sm-6 col-lg-4">
                            <div class="oh-desktop">
                                <!-- Services Terri-->
                                <article class="services-terri wow slideInUp">
                                    <div class="services-terri-figure"><img src="https://placehold.co/370x278"
                                                                            alt="" width="370" height="278" />
                                    </div>
                                    <div class="services-terri-caption"><span
                                            class="services-terri-icon linearicons-bubbles"></span>
                                        <h5 class="services-terri-title"><a href="#">Salads</a></h5>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="oh-desktop">
                                <!-- Services Terri-->
                                <article class="services-terri wow slideInDown">
                                    <div class="services-terri-figure"><img src="https://placehold.co/370x278"
                                                                            alt="" width="370" height="278" />
                                    </div>
                                    <div class="services-terri-caption"><span
                                            class="services-terri-icon linearicons-group-work"></span>
                                        <h5 class="services-terri-title"><a href="#">Pizzas</a></h5>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="oh-desktop">
                                <!-- Services Terri-->
                                <article class="services-terri wow slideInUp">
                                    <div class="services-terri-figure"><img src="https://placehold.co/370x278"
                                                                            alt="" width="370" height="278" />
                                    </div>
                                    <div class="services-terri-caption"><span
                                            class="services-terri-icon linearicons-happy-grin"></span>
                                        <h5 class="services-terri-title"><a href="#">Burgers</a></h5>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="oh-desktop">
                                <!-- Services Terri-->
                                <article class="services-terri wow slideInDown">
                                    <div class="services-terri-figure"><img src="https://placehold.co/370x278"
                                                                            alt="" width="370" height="278" />
                                    </div>
                                    <div class="services-terri-caption"><span
                                            class="services-terri-icon linearicons-joystick"></span>
                                        <h5 class="services-terri-title"><a href="#">Desserts</a></h5>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="oh-desktop">
                                <!-- Services Terri-->
                                <article class="services-terri wow slideInUp">
                                    <div class="services-terri-figure"><img src="https://placehold.co/370x278"
                                                                            alt="" width="370" height="278" />
                                    </div>
                                    <div class="services-terri-caption"><span
                                            class="services-terri-icon linearicons-heart-pulse"></span>
                                        <h5 class="services-terri-title"><a href="#">Drinks</a></h5>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="oh-desktop">
                                <!-- Services Terri-->
                                <article class="services-terri wow slideInDown">
                                    <div class="services-terri-figure"><img src="https://placehold.co/370x278"
                                                                            alt="" width="370" height="278" />
                                    </div>
                                    <div class="services-terri-caption"><span
                                            class="services-terri-icon linearicons-bandage"></span>
                                        <h5 class="services-terri-title"><a href="#">Seafood</a></h5>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Section CTA-->
            <section class="primary-overlay section parallax-container"
                     data-parallax-img="https://placehold.co/1920x503">
                <div class="parallax-content section-xl context-dark text-md-left">
                    <div class="container">
                        <div class="row justify-content-end">
                            <div class="col-sm-8 col-md-7 col-lg-5">
                                <div class="cta-modern">
                                    <h3 class="cta-modern-title wow fadeInRight">Best atmosphere</h3>
                                    <p class="lead">PizzaHouse is the place of the best pizza and high-quality
                                        service.</p>
                                    <p class="cta-modern-text oh-desktop" data-wow-delay=".1s"><span
                                            class="cta-modern-decor wow slideInLeft"></span><span
                                            class="d-inline-block wow slideInDown">Ben
                                            Smith, Founder</span></p><a
                                        class="button button-md button-secondary-2 button-winona wow fadeInUp"
                                        href="#" data-wow-delay=".2s">View Our Services</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Our Shop-->
            <section id="shop" class="section section-lg bg-default">
                <div class="container">
                    <h3 class="oh-desktop">
                        <span class="d-inline-block wow slideInUp">Selected Pizzas</span>
                    </h3>
                    <div class="row row-lg row-30 justify-content-center">
                        <c:forEach var="product" items="${productData}" varStatus="loop">
                            <div class="col-sm-12 col-lg-4">
                                <article class="product wow fadeInLeft">
                                    <div class="product-figure"><img src="${product.representativeImage}" alt="" width="210" height="210" />
                                    </div>
                                    <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span
                                            class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span>
                                    </div>
                                    <h6 class="product-title">${product.name}</h6>
                                    <c:choose>
                                        <c:when test="${product.id == 2}">
                                            <div class="product-price-wrap">
                                                <div class="product-price">$24.00</div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="product-price-wrap">
                                                <div class="product-price product-price-old">$40.00</div>
                                                <div class="product-price">${product.price}</div>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>

                                    <div class="product-button">
<!--                                        <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Add to
                                                cart</a></div>-->
                                        <div class="button-wrap">
                                            <a class="button button-xs button-secondary button-winona" href="single_product?id=${sessionScope.userLogin.normalUserId}&idProduct=${product.id}#product">View Product</a>
                                        </div>
                                    </div>
                                    <c:choose>
                                        <c:when test="${product.id == 2}">
                                            <span class="product-badge product-badge-new">New</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="product-badge product-badge-sale">Sale</span>
                                        </c:otherwise>
                                    </c:choose>
                                </article>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>

            <!-- Section CTA-->
            <section class="primary-overlay section parallax-container"
                     data-parallax-img="https://placehold.co/1920x558">
                <div class="parallax-content section-xxl context-dark text-md-left">
                    <div class="container">
                        <div class="row justify-content-end">
                            <div class="col-sm-9 col-md-7 col-lg-5">
                                <div class="cta-modern">
                                    <h3 class="cta-modern-title cta-modern-title-2 oh-desktop"><span
                                            class="d-inline-block wow fadeInLeft">-30% on all salads &
                                            drinks</span>
                                    </h3>
                                    <p class="cta-modern-text cta-modern-text-2 oh-desktop"
                                       data-wow-delay=".1s">
                                        <span
                                            class="cta-modern-decor cta-modern-decor-2 wow slideInLeft"></span><span
                                            class="d-inline-block wow slideInUp">Taste some of the best
                                            PizzaHouse
                                            salads!</span>
                                    </p><a
                                        class="button button-lg button-secondary button-winona wow fadeInRight"
                                        href="views/contacts.html" data-wow-delay=".2s">contact us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- What We Offer-->
            <section class="section section-xl bg-default">
                <div class="container">
                    <h3 class="wow fadeInLeft">What People Say</h3>
                </div>
                <div class="container container-style-1">
                    <div class="owl-carousel owl-style-12" data-items="1" data-sm-items="2" data-lg-items="3"
                         data-margin="30" data-xl-margin="45" data-autoplay="true" data-nav="true"
                         data-center="true" data-smart-speed="400">
                        <!-- Quote Tara-->
                        <article class="quote-tara">
                            <div class="quote-tara-caption">
                                <div class="quote-tara-text">
                                    <p class="q">PizzaHouse is the longest lasting pizza place in the city and
                                        is
                                        well run and staffed.
                                        Prices are great and allow me to keep coming back.</p>
                                </div>
                                <div class="quote-tara-figure"><img src="https://placehold.co/115x115" alt=""
                                                                    width="115" height="115" />
                                </div>
                            </div>
                            <h6 class="quote-tara-author">Ashley Fitzgerald</h6>
                            <div class="quote-tara-status">Client</div>
                        </article>
                        <!-- Quote Tara-->
                        <article class="quote-tara">
                            <div class="quote-tara-caption">
                                <div class="quote-tara-text">
                                    <p class="q">I am a real pizza addict, and even when I’m home I prefer your
                                        pizzas to all others. They
                                        taste awesome and are very affordable.</p>
                                </div>
                                <div class="quote-tara-figure"><img src="https://placehold.co/115x115" alt=""
                                                                    width="115" height="115" />
                                </div>
                            </div>
                            <h6 class="quote-tara-author">Stephanie Williams</h6>
                            <div class="quote-tara-status">Client</div>
                        </article>
                        <!-- Quote Tara-->
                        <article class="quote-tara">
                            <div class="quote-tara-caption">
                                <div class="quote-tara-text">
                                    <p class="q">PizzaHouse has amazing pizza. Not only do you get served with a
                                        great attitude, you also
                                        get delicious pizza at a great price!</p>
                                </div>
                                <div class="quote-tara-figure"><img src="https://placehold.co/115x115" alt=""
                                                                    width="115" height="115" />
                                </div>
                            </div>
                            <h6 class="quote-tara-author">Bill Johnson</h6>
                            <div class="quote-tara-status">Client</div>
                        </article>
                        <!-- Quote Tara-->
                        <article class="quote-tara">
                            <div class="quote-tara-caption">
                                <div class="quote-tara-text">
                                    <p class="q">PizzaHouse has great pizza. Not only do you get served with a
                                        great
                                        attitude and delivered
                                        delicious pizza, you get a great price.</p>
                                </div>
                                <div class="quote-tara-figure"><img src="https://placehold.co/115x115" alt=""
                                                                    width="115" height="115" />
                                </div>
                            </div>
                            <h6 class="quote-tara-author">Aaron Wilson</h6>
                            <div class="quote-tara-status">Client</div>
                        </article>
                    </div>
                </div>
            </section>

            <section class="section section-last bg-default">
                <div class="container-fluid container-inset-0 isotope-wrap">
                    <div class="row row-10 gutters-10 isotope" data-isotope-layout="masonry"
                         data-isotope-group="gallery" data-lightgallery="group">
                        <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
                            <!-- Thumbnail Mary-->
                            <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInLeft"><a
                                    class="thumbnail-mary-figure" href="https://placehold.co/1200x800"
                                    data-lightgallery="item"><img src="https://placehold.co/310x585" alt=""
                                                              width="310" height="585" /></a>
                                <div class="thumbnail-mary-caption">
                                    <div>
                                        <h6 class="thumbnail-mary-title"><a href="#">Best Ingredients</a></h6>
                                        <div class="thumbnail-mary-location">Tasty Pizza</div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-xs-6 col-sm-8 col-xl-4 isotope-item oh-desktop">
                            <!-- Thumbnail Mary-->
                            <article class="thumbnail thumbnail-mary thumbnail-mary-big wow slideInRight"><a
                                    class="thumbnail-mary-figure" href="https://placehold.co/1200x800"
                                    data-lightgallery="item"><img src="https://placehold.co/631x587" alt=""
                                                              width="631" height="587" /></a>
                                <div class="thumbnail-mary-caption">
                                    <div>
                                        <h6 class="thumbnail-mary-title"><a href="#">Comfortable interior</a>
                                        </h6>
                                        <div class="thumbnail-mary-location">Modern Design</div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
                            <!-- Thumbnail Mary-->
                            <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInDown"><a
                                    class="thumbnail-mary-figure" href="https://placehold.co/1200x800"
                                    data-lightgallery="item"><img src="https://placehold.co/311x289" alt=""
                                                              width="311" height="289" /></a>
                                <div class="thumbnail-mary-caption">
                                    <div>
                                        <h6 class="thumbnail-mary-title"><a href="#">quality Dishware</a></h6>
                                        <div class="thumbnail-mary-location">Top-notch utensils</div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-xs-6 col-sm-8 col-xl-4 isotope-item oh-desktop">
                            <!-- Thumbnail Mary-->
                            <article class="thumbnail thumbnail-mary wow slideInUp"><a
                                    class="thumbnail-mary-figure" href="https://placehold.co/1200x800"
                                    data-lightgallery="item"><img src="https://placehold.co/631x289" alt=""
                                                              width="631" height="289" /></a>
                                <div class="thumbnail-mary-caption">
                                    <div>
                                        <h6 class="thumbnail-mary-title"><a href="#">Refreshing cocktails</a>
                                        </h6>
                                        <div class="thumbnail-mary-location">Exclusive selection</div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
                            <!-- Thumbnail Mary-->
                            <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInUp"><a
                                    class="thumbnail-mary-figure" href="https://placehold.co/1200x800"
                                    data-lightgallery="item"><img src="https://placehold.co/311x289" alt=""
                                                              width="311" height="289" /></a>
                                <div class="thumbnail-mary-caption">
                                    <div>
                                        <h6 class="thumbnail-mary-title"><a href="#">Exotic Salads</a></h6>
                                        <div class="thumbnail-mary-location">Summer Taste</div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
                            <!-- Thumbnail Mary-->
                            <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInRight"><a
                                    class="thumbnail-mary-figure" href="https://placehold.co/1200x800"
                                    data-lightgallery="item"><img src="https://placehold.co/311x289" alt=""
                                                              width="311" height="289" /></a>
                                <div class="thumbnail-mary-caption">
                                    <div>
                                        <h6 class="thumbnail-mary-title"><a href="#">All Types of pizza</a></h6>
                                        <div class="thumbnail-mary-location">Special Recipes</div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
                            <!-- Thumbnail Mary-->
                            <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInLeft"><a
                                    class="thumbnail-mary-figure" href="https://placehold.co/1200x800"
                                    data-lightgallery="item"><img src="https://placehold.co/311x289" alt=""
                                                              width="311" height="289" /></a>
                                <div class="thumbnail-mary-caption">
                                    <div>
                                        <h6 class="thumbnail-mary-title"><a href="#">Diverse menu</a></h6>
                                        <div class="thumbnail-mary-location">Pick Your Favorite dish</div>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Tell-->
            <section class="section section-sm section-first bg-default">
                <div class="container">
                    <h3 class="heading-3">Book your Table</h3>
                    <form class="rd-form rd-mailform form-style-1" data-form-output="form-output-global"
                          data-form-type="contact" method="post" action="bat/rd-mailform.php">
                        <div class="row row-20 gutters-20">
                            <div class="col-md-6 col-lg-4 oh-desktop">
                                <div class="form-wrap wow slideInDown">
                                    <input class="form-input" id="contact-your-name-6" type="text" name="name"
                                           data-constraints="@Required">
                                    <label class="form-label" for="contact-your-name-6">Your Name*</label>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 oh-desktop">
                                <div class="form-wrap wow slideInUp">
                                    <input class="form-input" id="contact-email-6" type="email" name="email"
                                           data-constraints="@Email @Required">
                                    <label class="form-label" for="contact-email-6">Your E-mail*</label>
                                </div>
                            </div>
                            <div class="col-lg-4 oh-desktop">
                                <div class="form-wrap wow slideInDown">
                                    <!--Select 2-->
                                    <select class="form-input" data-minimum-results-for-search="Infinity"
                                            data-constraints="@Required">
                                        <option value="1">Select a Service</option>
                                        <option value="2">Dine-In</option>
                                        <option value="3">Carry-Out</option>
                                        <option value="4">Event Catering</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-wrap wow fadeIn">
                                    <label class="form-label" for="contact-message-6">Message</label>
                                    <textarea class="form-input textarea-lg" id="contact-message-6"
                                              name="message" data-constraints="@Required"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="group-custom-1 group-middle oh-desktop">
                            <button class="button button-lg button-primary button-winona wow fadeInRight"
                                    type="submit">Send
                                message</button>
                            <!-- Quote Classic-->
                            <article class="quote-classic quote-classic-3 wow slideInDown">
                                <div class="quote-classic-text">
                                    <p class="q">Please reserve your table at least 1 day in advance.</p>
                                </div>
                            </article>
                        </div>
                    </form>
                </div>
            </section>

            <!-- Section Services  Last section-->
            <section class="section section-sm bg-default">
                <div class="container">
                    <div class="owl-carousel owl-style-11 dots-style-2" data-items="1" data-sm-items="1"
                         data-lg-items="2" data-xl-items="4" data-margin="30" data-dots="true"
                         data-mouse-drag="true" data-rtl="true">
                        <article class="box-icon-megan wow fadeInUp">
                            <div class="box-icon-megan-header">
                                <div class="box-icon-megan-icon linearicons-bag"></div>
                            </div>
                            <h5 class="box-icon-megan-title"><a href="#">Free Delivery</a></h5>
                            <p class="box-icon-megan-text">If you order more than 3 pizzas, we will gladly
                                deliver
                                them to you for free.
                            </p>
                        </article>
                        <article class="box-icon-megan wow fadeInUp" data-wow-delay=".05s">
                            <div class="box-icon-megan-header">
                                <div class="box-icon-megan-icon linearicons-map2"></div>
                            </div>
                            <h5 class="box-icon-megan-title"><a href="#">Convenient Location</a></h5>
                            <p class="box-icon-megan-text">Our pizzeria is situated in the downtown and is very
                                easy
                                to reach even on
                                weekends.</p>
                        </article>
                        <article class="box-icon-megan wow fadeInUp" data-wow-delay=".1s">
                            <div class="box-icon-megan-header">
                                <div class="box-icon-megan-icon linearicons-radar"></div>
                            </div>
                            <h5 class="box-icon-megan-title"><a href="#">Free Wi-Fi</a></h5>
                            <p class="box-icon-megan-text">We have free Wi-Fi available to all clients and
                                visitors
                                of our pizzeria.</p>
                        </article>
                        <article class="box-icon-megan wow fadeInUp" data-wow-delay=".15s">
                            <div class="box-icon-megan-header">
                                <div class="box-icon-megan-icon linearicons-thumbs-up"></div>
                            </div>
                            <h5 class="box-icon-megan-title"><a href="#">Best Service</a></h5>
                            <p class="box-icon-megan-text">The client is our #1 priority as we deliver top-notch
                                customer service.</p>
                        </article>
                    </div>
                </div>
            </section>

            <!-- Bottom Banner<a class="section section-banner" href="https://www.templatemonster.com/intense-multipurpose-html-template.html" style="background-image: url(images/banner/background-03-1920x310.jpg); background-image: -webkit-image-set( url(images/banner/background-03-1920x310.jpg) 1x, url(images/banner/background-03-3840x620.jpg) 2x )"><img src="images/banner/foreground-03-1600x310.png" srcset="images/banner/foreground-03-1600x310.png 1x, images/banner/foreground-03-3200x620.png 2x" alt="" width="1600" height="310"></a> -->
            <!-- Page Footer-->
            <footer class="section footer-modern context-dark footer-modern-2">
                <div class="footer-modern-line">
                    <div class="container">
                        <div class="row row-50">
                            <div class="col-md-6 col-lg-4">
                                <h5 class="footer-modern-title oh-desktop"><span
                                        class="d-inline-block wow slideInLeft">What We
                                        Offer</span></h5>
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
                                        class="d-inline-block wow slideInLeft">Information</span>
                                </h5>
                                <ul class="footer-modern-list d-inline-block d-sm-block wow fadeInUp">
                                    <li><a href="views/about-us.html">About us</a></li>
                                    <li><a href="#">Latest News</a></li>
                                    <li><a href="#">Our Menu</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Shop</a></li>
                                    <li><a href="views/contacts.html">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-xl-5">
                                <h5 class="footer-modern-title oh-desktop"><span
                                        class="d-inline-block wow slideInLeft">Newsletter</span>
                                </h5>
                                <p class="wow fadeInRight">Sign up today for the latest news and updates.</p>
                                <!-- RD Mailform-->
                                <form class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop"
                                      data-form-output="form-output-global" data-form-type="subscribe"
                                      method="post" action="bat/rd-mailform.php">
                                    <div class="form-wrap wow slideInUp">
                                        <input class="form-input" id="subscribe-form-2-email" type="email"
                                               name="email" data-constraints="@Email @Required" />
                                        <label class="form-label" for="subscribe-form-2-email">Enter your
                                            E-mail</label>
                                    </div>
                                    <div class="form-button form-button-2 wow slideInRight">
                                        <button
                                            class="button button-sm button-icon-3 button-primary button-winona"
                                            type="submit"><span
                                                class="d-none d-xl-inline-block">Subscribe</span><span
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
                                    <div class="col-md-7 col-xl-6"><a class="brand" href="views/home.html"><img
                                                src="assets/images/logo-inverse-198x66.png" alt="" width="198"
                                                height="66" /></a></div>
                                    <div class="col-md-5 col-xl-6">
                                        <div class="iso-1"><span><img src="assets/images/like-icon-58x25.png"
                                                                      alt="" width="58" height="25" /></span><span
                                                class="iso-1-big">9.4k</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-12 col-lg-8 col-xl-8 oh-desktop">
                                <div class="group-xmd group-sm-justify">
                                    <div class="footer-modern-contacts wow slideInUp">
                                        <div class="unit unit-spacing-sm align-items-center">
                                            <div class="unit-left"><span
                                                    class="icon icon-24 mdi mdi-phone"></span>
                                            </div>
                                            <div class="unit-body"><a class="phone" href="tel:#">+1
                                                    718-999-3939</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="footer-modern-contacts wow slideInDown">
                                        <div class="unit unit-spacing-sm align-items-center">
                                            <div class="unit-left"><span class="icon mdi mdi-email"></span>
                                            </div>
                                            <div class="unit-body"><a class="mail"
                                                                      href="mailto:#">info@demolink.org</a></div>
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
                            <div class="col-md-6"><span>514 S. Magnolia St. Orlando, FL 32806</span></div>
                            <div class="col-md-auto">
                                <!-- Rights-->
                                <p class="rights"><span>&copy;&nbsp;</span><span
                                        class="copyright-year"></span><span></span><span>.&nbsp;</span><span>All
                                        Rights Reserved.</span><span>
                                        Design&nbsp;by&nbsp;<a
                                            href="https://www.templatemonster.com">TemplateMonster</a></span>
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
        <script src="js/home.js"></script>
        <!-- coded by Himic-->
    </body>

</html>