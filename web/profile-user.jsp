<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">

    <head>
        <title>Tài khoản</title>
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


        <link rel="stylesheet" href="css/profileuser.css">
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css">
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
                                                width="189" height="66" /></a>
                                    </div>
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
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="landing">Trang chủ</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="about_us">Về chúng tôi</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link" href="pre_game">Trò chơi</a>
                                            </li>
                                            <li class="rd-nav-item">
                                                <a class="rd-nav-link"
                                                   href="landing?id=${userLogin.normalUserId}#shop">Cửa hàng</a>
                                                <ul class="rd-menu rd-navbar-dropdown">
                                                    <li class="rd-dropdown-item ">
                                                        <a class="rd-dropdown-link"
                                                           href="single_product?idProduct=1">Đoàn Viên</a>
                                                    </li>
                                                    <li class="rd-dropdown-item">
                                                        <a class="rd-dropdown-link"
                                                           href="single_product?idProduct=2">Tri Kỷ</a>
                                                    </li>
                                                </ul>
                                            </li>

                                            <li class="rd-nav-item"><a class="rd-nav-link" href="cart#cart">
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
                                                                <a class="rd-dropdown-link" href="profile_user">Hồ
                                                                    sơ</a>
                                                            </li>
                                                            <li class="rd-dropdown-item">
                                                                <a class="rd-dropdown-link" href="log_out">Đăng
                                                                    Xuất</a>
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
                                                                    src="images/project-1-195x164.jpg" alt=""
                                                                    width="195" height="164" />
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
                                                                    src="images/project-2-195x164.jpg" alt=""
                                                                    width="195" height="164" />
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
                                                                    src="images/project-3-195x164.jpg" alt=""
                                                                    width="195" height="164" />
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
                                                                    src="images/project-4-195x164.jpg" alt=""
                                                                    width="195" height="164" />
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
                                                                    src="images/project-5-195x164.jpg" alt=""
                                                                    width="195" height="164" />
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
                                                                    src="images/project-6-195x164.jpg" alt=""
                                                                    width="195" height="164" />
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
                    <h4 class="pb-4 border-bottom">Hồ sơ của tôi</h4>
                    <form action="profile_user" method="post">
                        <input type="hidden" name="action" value="updateProfile">
                        <div class="d-flex align-items-start py-3 border-bottom">
                            <img src="${userLogin.image}" class="img" alt="">
                            <div class="pl-sm-4 pl-2" id="img-section">
                                <b style="text-align: left; display: block;">Ảnh</b>
                                <p class="m-0">Loại tệp được chấp nhận .png. Nhỏ hơn 1MB</p>
                                <button class="upload-btn">
                                    <b style="font-weight: 500;">Chọn ảnh</b>
                                </button>
                            </div>
                        </div>
                        <div class="py-2">
                            <div class="row" style="margin-top: 30px;">
                                <div class="col-md-6 ">
                                    <label for="firstname" style="text-align: left; display: block;">Tên đăng
                                        nhập</label>
                                    <input type="text" class="bg-light form-control form-control-sm rounded-0 "
                                           style="padding: 17px 20px;" placeholder="" name="username"
                                           value="${userLogin.username}">
                                </div>
                                <div class="col-md-6 pt-md-0 pt-3">
                                    <label for="lastname" style="text-align: left; display: block;">Tên</label>
                                    <input type="text" class="bg-light form-control form-control-sm rounded-0"
                                           style="padding: 17px 20px;" placeholder="" name="name"
                                           value="${userLogin.name}">
                                </div>
                            </div>
                            <div class="row" style="margin-top: 30px;">
                                <div class="col-md-6">
                                    <label for="email" style="text-align: left; display: block;">Email
                                    </label>
                                    <input type="text" class="bg-light form-control form-control-sm rounded-0"
                                           style="padding: 17px 20px;" placeholder="" name="email"
                                           value="${userLogin.email}">
                                </div>
                                <div class="col-md-6 pt-md-0 pt-3">
                                    <label for="phone" style="text-align: left; display: block;">Số điện
                                        thoại</label>
                                    <input type="tel" class="bg-light form-control form-control-sm rounded-0"
                                           style="padding: 17px 20px;" placeholder="" name="phonenumber"
                                           value="${userLogin.phoneNumber}">
                                </div>
                            </div>
                            <div class="row" style="margin-top: 30px;">
                                <div class="col-md-6 select-width">
                                    <label for="gender" style="text-align: left; display: block;">Giới tính</label>
                                    <select name="gender" id="gender" class="bg-light"
                                            style="border: 1px solid #ced4da; width: 200px;">
                                        <option value="male" ${userLogin.gender=='male' ? 'selected' : '' }>Male
                                        </option>
                                        <option value="female" ${userLogin.gender=='female' ? 'selected' : '' }>
                                            Female</option>
                                        <option value="other" ${userLogin.gender=='other' ? 'selected' : '' }>Other
                                        </option>
                                    </select>
                                </div>


                                <div class="col-md-6 pt-md-0 pt-3" id="lang">
                                    <label for="datepicker" style="text-align: left; display: block;">Ngày
                                        sinh</label>
                                    <div class="input-group date" id="datepicker">
                                        <input type="text" class="form-control form-control-sm rounded-0"
                                               style="padding: 17px 20px; max-width: 200px;" placeholder="dd/mm/yyyy"
                                               name="dateofbirth" value="${userLogin.dateOfBirth}">
                                        <div class="input-group-append"
                                             style="display: flex; align-items: center; border: 1px solid #ced4da; border-left: none">
                                            <span class="input-group-text pl-2 pr-2">
                                                <i class="fa fa-calendar"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 30px;">
                                <c:choose>
                                    <c:when test="${userLogin.accountType == 'NormalUser'}">
                                        <div class="col-md-6 select-width">
                                            <button type="button" class="button-46" onclick="openPopup()"
                                                    role="button">Change password</button>
                                        </div>
                                    </c:when>
                                    <c:otherwise>

                                    </c:otherwise>
                                </c:choose>
                                <div class="col-md-6 select-width">
                                    <button type="submit" class="save-button" role="button">Lưu</button>
                                </div>
                            </div>
                    </form>
                    <div class="d-sm-flex align-items-center pt-3 mt-5" id="deactivate">
                        <div style="text-align: left; display: block; ">
                            <b style="font-size: 14px;">Xóa tài khoản của bạn</b>
                            <p style="margin: 0; font-size: 12px;">Chi tiết về tài khoản và mật khẩu của bạn</p>
                        </div>
                        <div class="ml-auto">
                            <a href="deactivate_account">
                                <button class="deactivate-button" role="button">Xóa tài khoản</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
                                    <input class="form-input" id="subscribe-form-2-email" type="email" name="email"
                                           data-constraints="@Email @Required" />
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
                                            src="assets/images/Logo_white.png" alt="" width="198" height="66" /></a>
                                </div>
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

    <!-- Google Tag Manager --><noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69"
                                                 height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
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