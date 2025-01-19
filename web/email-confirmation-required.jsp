<%-- 
    Document   : email-confirmation-required
    Created on : Dec 22, 2024, 9:30:32 AM
    Author     : dangx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forgot password</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/forgot-password.css">
    </head>

    <body>
        <!-- Login 8 - Bootstrap Brain Component -->
        <section class="bg-light p-3 p-md-4 p-xl-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-xxl-11">
                        <div class="card border-light-subtle shadow-sm">
                            <div class="row g-0">
                                <div class="col-12 col-md-6">
                                    <img class="img-fluid rounded-start w-100 h-100 object-fit-cover" loading="lazy"
                                         src="https://bootstrapbrain.com/demo/components/logins/login-8/assets/img/logo-img-1.webp"
                                         alt="Welcome back you've been missed!">
                                </div>
                                <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                                    <div class="col-12 col-lg-11 col-xl-10">
                                        <div class="card-body p-3 p-md-4 p-xl-5">

                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="mb-3">
                                                        <div class="text-center" style="margin-bottom: 7rem;">
                                                            <a href="#!">
                                                                <img src="https://bootstrapbrain.com/demo/components/logins/login-8/assets/img/bsb-logo.svg"
                                                                     alt="BootstrapBrain Logo" width="175" height="57">
                                                            </a>
                                                        </div>
                                                        <h2 class="text-left mb-3 mt-5">Confirm your email to continue</h2>
                                                        <p class="text-left" style="font-size: 16px;">We've sent an email to
                                                            your email address:
                                                            dangduyhung96207@gmail.com <br> Confirm this is
                                                            correct by clicking the link in the email.</p>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="noticeContainer">
                                                <div class="noticeBox error">
                                                    <span>${errorEmailNotFound}</span>
                                                </div>
                                                <div class="noticeBox success">
                                                    <span>${sendmailNotice}</span>
                                                </div>
                                            </div>

                                            <form action="email_confirmation" method="post">
                                                <div class="row gy-3 overflow-hidden">

                                                    <div class="col-12">
                                                        <div class="d-grid">
                                                            <button class="btn btn-dark btn-lg" type="submit">Resend
                                                                confirmation email</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                            <div class="row mt-2" style="margin-bottom: 6.2rem;">
                                                <div class="col-12 d-flex justify-content-center align-items-center">
                                                    <div
                                                        class="d-flex justify-content-center mt-3 border border-dark p-1 rounded w-50">
                                                        <a href="login"
                                                           class="link-secondary text-decoration-none fs-6 text-dark">Create
                                                            new account</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>

</html>
