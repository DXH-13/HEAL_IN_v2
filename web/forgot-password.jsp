<%-- 
    Document   : forgot-password
    Created on : Dec 15, 2024, 9:03:59 AM
    Author     : dangx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                    <img class="img-fluid rounded-start w-100 h-100 object-fit-cover" loading="lazy" src="https://bootstrapbrain.com/demo/components/logins/login-8/assets/img/logo-img-1.webp" alt="Welcome back you've been missed!">
                                </div>
                                <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                                    <div class="col-12 col-lg-11 col-xl-10">
                                        <div class="card-body p-3 p-md-4 p-xl-5">

                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="mb-3">
                                                        <div class="text-center" style="margin-bottom: 7rem;">
                                                            <a href="#!">
                                                                <img src="https://bootstrapbrain.com/demo/components/logins/login-8/assets/img/bsb-logo.svg" alt="BootstrapBrain Logo" width="175" height="57">
                                                            </a>
                                                        </div>
                                                        <h2 class="text-left mb-3 mt-5">Reset your password</h2>
                                                        <p class="text-left">Enter the email you signed up with. We'll send you a link to log in and reset your password.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="noticeBox error">
                                                <span>${errorEmailNotFound}</span>
                                            </div>
                                            <div class="noticeBox success">
                                                <span>${sendmailNotice}</span>
                                            </div>


                                            <form action="forgot_password" method="post">
                                                <div class="row gy-3 overflow-hidden">
                                                    <div class="col-12">
                                                        <div class="form-floating mb-5">
                                                            <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                                                            <label for="email" class="form-label">Email</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="d-grid">
                                                            <button class="btn btn-dark btn-lg" type="submit">Send link</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                            <div class="row mt-5" style="margin-bottom: 6.2rem;">
                                                <div class="col-12">
                                                    <div class="d-flex justify-content-center mt-3">
                                                        <a href="log_in" class="link-secondary text-decoration-none">Log in</a>
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
