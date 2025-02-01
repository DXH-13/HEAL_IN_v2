<%-- Document : profile-user Created on : Jan 13, 2025, 9:05:16 AM Author : dangx --%>
<%@ page import="model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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


        <link rel="stylesheet" href="css/profileuser.css">
        <link rel="stylesheet"
              href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
        <link rel="stylesheet" href="css/profileuser.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
        <link rel="stylesheet" href="css/fonts.css">
        <link rel="stylesheet" href="css/style.css">
        <style>
            html,
            body {
                margin: 0;
                padding: 0;
            }
        </style>
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
                    <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed"
                         data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed"
                         data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static"
                         data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static"
                         data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static"
                         data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="56px"
                         data-xl-stick-up-offset="56px" data-xxl-stick-up-offset="56px"
                         data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
                        <div class="rd-navbar-inner-outer">
                            <div class="rd-navbar-inner">
                                <!-- RD Navbar Panel-->
                                <div class="rd-navbar-panel">
                                    <!-- RD Navbar Toggle-->
                                    <button class="rd-navbar-toggle"
                                            data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                                    <!-- RD Navbar Brand-->
                                    <div class="rd-navbar-brand"><a class="brand" href="index.html"><img
                                                class="brand-logo-dark"
                                                src="https://placehold.co/198x66" alt="" width="189"
                                                height="66" /></a>
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
                                                    <div class="unit-body"><a class="phone"
                                                                              href="tel:#">+1
                                                            718-999-3939</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="unit unit-spacing-xs">
                                                    <div class="unit-left"><span
                                                            class="icon mdi mdi-map-marker"></span>
                                                    </div>
                                                    <div class="unit-body"><a class="address"
                                                                              href="#">514 S.
                                                            Magnolia St.
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
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="landing?id=${userLogin.normalUserId}">Home</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="about-us.html">About us</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="views/contacts.html">Contacts</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="/web/views/typography.html">Game</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="landing?id=${userLogin.normalUserId}#shop">Shop</a>
                                                <ul class="rd-menu rd-navbar-dropdown">
                                                    <li class="rd-dropdown-item ">
                                                        <a class="rd-dropdown-link" href="single_product?id=${sessionScope.userLogin.normalUserId}&idProduct=1#product">Đoàn Viên</a>
                                                    </li>
                                                    <li class="rd-dropdown-item">
                                                        <a class="rd-dropdown-link" href="single_product?id=${sessionScope.userLogin.normalUserId}&idProduct=2#product">Tri Kỷ</a>
                                                    </li>
                                                </ul>
                                            </li>

                                            <li class="rd-nav-item"><a class="rd-nav-link" href="cart?id=${sessionScope.userLogin.normalUserId}">
                                                    <span class="fa-shopping-basket" style="font-size: 30px"></span>
                                                    <% if (user==null) { %>
                                                    <% } else { %>
                                                    <span class="cart-badge">${sessionScope.productInCart}</span>
                                                    <% } %>
                                                </a>
                                            </li>

                                            <% if (user==null) { %>
                                            <li class="rd-nav-item loginbtn">
                                                <a class="rd-nav-link" href="log_in">Login</a>
                                            </li>
                                            <% } else { %>
                                            <li class="rd-nav-item active loginbtn"><a
                                                    class="rd-nav-link"
                                                    href="shop.html">Avatar</a>
                                                <ul class="rd-menu rd-navbar-dropdown">
                                                    <li class="rd-dropdown-item"><a
                                                            class="rd-dropdown-link"
                                                            href="/web/views/single-product.html">Profile
                                                            user</a></li>
                                                    <li class="rd-dropdown-item"><a
                                                            class="rd-dropdown-link"
                                                            href="log_out">Log out</a></li>
                                                </ul>
                                            </li>
                                            <% } %>

                                        </ul>
                                    </div>
                                </div>
                                <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1"
                                     data-multitoggle=".rd-navbar-inner"
                                     data-multitoggle-blur=".rd-navbar-wrap"
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


                                <div class="rd-navbar-project">
                                    <div class="rd-navbar-project-header">
                                        <h5 class="rd-navbar-project-title">Gallery</h5>
                                        <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-close"
                                             data-multitoggle=".rd-navbar-inner"
                                             data-multitoggle-blur=".rd-navbar-wrap"
                                             data-multitoggle-isolate="data-multitoggle-isolate">
                                            <div class="project-close"><span></span><span></span></div>
                                        </div>
                                    </div>
                                    <div class="rd-navbar-project-content rd-navbar-content">
                                        <div>
                                            <div class="row gutters-20" data-lightgallery="group">
                                                <div class="col-6">
                                                    <!-- Thumbnail Creative-->
                                                    <article class="thumbnail thumbnail-creative">
                                                        <a href="images/project-1-1200x800-original.jpg"
                                                           data-lightgallery="item">
                                                            <div class="thumbnail-creative-figure"><img
                                                                    src="images/project-1-195x164.jpg"
                                                                    alt="" width="195" height="164" />
                                                            </div>
                                                            <div class="thumbnail-creative-caption">
                                                                <span
                                                                    class="icon thumbnail-creative-icon linearicons-magnifier"></span>
                                                            </div>
                                                        </a>
                                                    </article>
                                                </div>
                                                <div class="col-6">
                                                    <!-- Thumbnail Creative-->
                                                    <article class="thumbnail thumbnail-creative">
                                                        <a href="images/project-2-1200x800-original.jpg"
                                                           data-lightgallery="item">
                                                            <div class="thumbnail-creative-figure"><img
                                                                    src="images/project-2-195x164.jpg"
                                                                    alt="" width="195" height="164" />
                                                            </div>
                                                            <div class="thumbnail-creative-caption">
                                                                <span
                                                                    class="icon thumbnail-creative-icon linearicons-magnifier"></span>
                                                            </div>
                                                        </a>
                                                    </article>
                                                </div>
                                                <div class="col-6">
                                                    <!-- Thumbnail Creative-->
                                                    <article class="thumbnail thumbnail-creative">
                                                        <a href="images/project-3-1200x800-original.jpg"
                                                           data-lightgallery="item">
                                                            <div class="thumbnail-creative-figure"><img
                                                                    src="images/project-3-195x164.jpg"
                                                                    alt="" width="195" height="164" />
                                                            </div>
                                                            <div class="thumbnail-creative-caption">
                                                                <span
                                                                    class="icon thumbnail-creative-icon linearicons-magnifier"></span>
                                                            </div>
                                                        </a>
                                                    </article>
                                                </div>
                                                <div class="col-6">
                                                    <!-- Thumbnail Creative-->
                                                    <article class="thumbnail thumbnail-creative">
                                                        <a href="images/project-4-1200x800-original.jpg"
                                                           data-lightgallery="item">
                                                            <div class="thumbnail-creative-figure"><img
                                                                    src="images/project-4-195x164.jpg"
                                                                    alt="" width="195" height="164" />
                                                            </div>
                                                            <div class="thumbnail-creative-caption">
                                                                <span
                                                                    class="icon thumbnail-creative-icon linearicons-magnifier"></span>
                                                            </div>
                                                        </a>
                                                    </article>
                                                </div>
                                                <div class="col-6">
                                                    <!-- Thumbnail Creative-->
                                                    <article class="thumbnail thumbnail-creative">
                                                        <a href="images/project-5-1200x800-original.jpg"
                                                           data-lightgallery="item">
                                                            <div class="thumbnail-creative-figure"><img
                                                                    src="images/project-5-195x164.jpg"
                                                                    alt="" width="195" height="164" />
                                                            </div>
                                                            <div class="thumbnail-creative-caption">
                                                                <span
                                                                    class="icon thumbnail-creative-icon linearicons-magnifier"></span>
                                                            </div>
                                                        </a>
                                                    </article>
                                                </div>
                                                <div class="col-6">
                                                    <!-- Thumbnail Creative-->
                                                    <article class="thumbnail thumbnail-creative">
                                                        <a href="images/project-6-1200x800-original.jpg"
                                                           data-lightgallery="item">
                                                            <div class="thumbnail-creative-figure"><img
                                                                    src="images/project-6-195x164.jpg"
                                                                    alt="" width="195" height="164" />
                                                            </div>
                                                            <div class="thumbnail-creative-caption">
                                                                <span
                                                                    class="icon thumbnail-creative-icon linearicons-magnifier"></span>
                                                            </div>
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


            <div class="profile-setting">
                <div class="wrapper bg-white mt-sm-5">
                    <h4 class="pb-4 border-bottom">Account settings</h4>
                    <form action="profile_user" method="post">
                        <input type="hidden" name="action" value="updateProfile">
                        <div class="d-flex align-items-start py-3 border-bottom">
                            <img src="https://placehold.co/70x70" class="img" alt="">
                            <div class="pl-sm-4 pl-2" id="img-section">
                                <b style="text-align: left; display: block;">Profile Photo</b>
                                <p class="m-0">Accepted file type .png. Less than 1MB</p>
                                <button class="upload-btn">
                                    <b style="font-weight: 500;">Upload</b>
                                </button>
                            </div>
                        </div>
                        <div class="py-2">
                            <div class="row" style="margin-top: 30px;">
                                <div class="col-md-6 ">
                                    <label for="firstname"
                                           style="text-align: left; display: block;">User name</label>
                                    <input type="text"
                                           class="bg-light form-control form-control-sm rounded-0 "
                                           style="padding: 17px 20px;" placeholder="" name="username"
                                           value="${userLogin.username}">
                                </div>
                                <div class="col-md-6 pt-md-0 pt-3">
                                    <label for="lastname"
                                           style="text-align: left; display: block;">Name</label>
                                    <input type="text"
                                           class="bg-light form-control form-control-sm rounded-0"
                                           style="padding: 17px 20px;" placeholder="" name="name"
                                           value="${userLogin.name}">
                                </div>
                            </div>
                            <div class="row" style="margin-top: 30px;">
                                <div class="col-md-6">
                                    <label for="email" style="text-align: left; display: block;">Email
                                        address</label>
                                    <input type="text"
                                           class="bg-light form-control form-control-sm rounded-0"
                                           style="padding: 17px 20px;" placeholder="" name="email"
                                           value="${userLogin.email}">
                                </div>
                                <div class="col-md-6 pt-md-0 pt-3">
                                    <label for="phone" style="text-align: left; display: block;">Phone
                                        number</label>
                                    <input type="tel"
                                           class="bg-light form-control form-control-sm rounded-0"
                                           style="padding: 17px 20px;" placeholder="" name="phonenumber"
                                           value="${userLogin.phoneNumber}">
                                </div>
                            </div>
                            <div class="row" style="margin-top: 30px;">
                                <div class="col-md-6 select-width">
                                    <label for="gender"
                                           style="text-align: left; display: block;">Gender</label>
                                    <select name="gender" id="gender" class="bg-light"
                                            style="border: 1px solid #ced4da; width: 200px;">
                                        <option value="male" ${userLogin.gender=='male' ? 'selected'
                                                               : '' }>Male</option>
                                        <option value="female" ${userLogin.gender=='female' ? 'selected'
                                                                 : '' }>Female</option>
                                        <option value="other" ${userLogin.gender=='other' ? 'selected'
                                                                : '' }>Other</option>
                                    </select>
                                </div>


                                <div class="col-md-6 pt-md-0 pt-3" id="lang">
                                    <label for="datepicker"
                                           style="text-align: left; display: block;">Date of birth</label>
                                    <div class="input-group date" id="datepicker">
                                        <input type="text"
                                               class="form-control form-control-sm rounded-0"
                                               style="padding: 17px 20px; max-width: 200px;"
                                               placeholder="dd/mm/yyyy" name="dateofbirth"
                                               value="${userLogin.dateOfBirth}">
                                        <div class="input-group-append"
                                             style="display: flex; align-items: center; border: 1px solid #ced4da; border-left: none">
                                            <span class="input-group-text pl-2 pr-2">
                                                <i class="fa fa-calendar"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!---------------------------------------------------------->
                            <c:if test="${userLogin.accountType == 'NormalUser'}">
                                <div class="row" style="margin-top: 30px;">
                                    <div class="col-md-6 select-width">
                                        <button type="button" class="button-46" onclick="openPopup()" role="button">Change password</button>
                                    </div>
                                </div>
                            </c:if>

                            <!---------------------------------------------------------->    
                            <div class="py-3 pb-4 border-bottom"
                                 style="margin-top: 30px; display: flex; align-items: center; justify-content: center; gap: 100px;">
                                <button type="submit" class="save-button" role="button">Save
                                    changes</button>
                                <button type="reset" class="cancel-button" role="button">Cancel</button>
                            </div>
                    </form>
                    <div class="d-sm-flex align-items-center pt-3" id="deactivate">
                        <div style="text-align: left; display: block; ">
                            <b style="font-size: 14px;">Deactivate your account</b>
                            <p style="margin: 0; font-size: 12px;">Details about your account and
                                password</p>
                        </div>
                        <div class="ml-auto">
                            <a href="deactivate_account">
                                <button class="deactivate-button" role="button">Deactivate</button>                                   
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="section footer-modern context-dark footer-modern-2" style="margin-top: auto;">
            <div class="footer-modern-line">
                <div class="container">
                    <div class="row row-50">
                        <div class="col-md-6 col-lg-4">
                            <h5 class="footer-modern-title oh-desktop"><span
                                    class="d-inline-block wow slideInLeft">What
                                    We
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
                            <p class="wow fadeInRight">Sign up today for the latest news and updates.
                            </p>
                            <!-- RD Mailform-->
                            <form
                                class="rd-form rd-mailform rd-form-inline rd-form-inline-sm oh-desktop"
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
                                <div class="col-md-7 col-xl-6"><a class="brand" href="index.html"><img
                                            src="assets/images/logo-inverse-163x57.png" alt=""
                                            width="163" height="57" /></a></div>
                                <div class="col-md-5 col-xl-6">
                                    <div class="iso-1"><span><img
                                                src="assets/images/like-icon-58x25.png" alt=""
                                                width="58" height="25" /></span><span
                                            class="iso-1-big">9.4k</span>
                                    </div>
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
                                                                  href="mailto:#">info@demolink.org</a>
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
                        <div class="col-md-6"><a href="#">514 S. Magnolia St. Orlando, FL 32806</a>
                        </div>
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


    <!-- -------------------------------------------------------------------------------------------------------- -->
    <div id="popupForm" class="popup hidden">
        <div class="popup-content">
            <button class="close-btn" onclick="closePopup()">
                <i class="fa-solid fa-xmark fa-xl"></i>
            </button>
            <h4>Change Password</h4>
            <form action="profile_user" method="post" id="passwordForm" class="mt-5">
                <input type="hidden" name="action" value="changePassword">
                <label for="oldPassword">Old Password:</label>
                <input type="password" id="oldPassword" name="oldPassword" required>

                <label for="newPassword">New Password:</label>
                <input type="password" id="newPassword" name="newPassword" required>

                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>

                <div class="popup-actions">
                    <!-- <button type="button" >Cancel</button> -->
                    <!-- <button type="submit">Save</button> -->
                    <button type="reset" class="cancel-button" role="button"
                            onclick="closePopup()">Cancel</button>
                    <button type="submit" class="save-button" role="button">Save</button>

                </div>
            </form>
        </div>
    </div>
    <!-- -------------------------------------------------------------------------------------------------------- -->




    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/profileuser.js"></script>
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>

    <!-- Google Tag Manager --><noscript><iframe
        src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69" height="0" width="0"
        style="display:none;visibility:hidden"></iframe></noscript>
    <script
    src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
                                // Initialize the date picker
                                $(document).ready(function () {
                                    $('#datepicker').datepicker({
                                        format: 'dd/mm/yyyy',
                                        autoclose: true,
                                        todayHighlight: true,
                                    });
                                });

                                $(document).ready(function () {
                                    $('.select2-container').css({
                                        'min-width': '230px',
                                        'min-height': '60px'
                                    });
                                });

    </script>

</body>

</html>