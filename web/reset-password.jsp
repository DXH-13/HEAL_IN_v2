<%-- 
    Document   : reset-password
    Created on : Dec 15, 2024, 10:22:43 AM
    Author     : dangx
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset password</title>
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
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
                        <div class="mb-5">
                          <div class="text-center" style="margin-bottom: 7rem;">
                            <a href="#!">
                              <img src="https://bootstrapbrain.com/demo/components/logins/login-8/assets/img/bsb-logo.svg" alt="BootstrapBrain Logo" width="175" height="57">
                            </a>
                          </div>
                          <h2 class="text-left mb-3 mt-5">Reset your password</h2>
                          <p class="text-left">Enter a new password, make sure it’s secure enough, and ensure you’ll remember it!</p>
                        </div>
                      </div>
                    </div>
                      <form action="resetpassword" method="post">
                      <div class="row gy-3 overflow-hidden">
                        <div class="col-12">
                          <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="password" id="password" placeholder="" required>
                            <label for="password" class="form-label">New Password</label>
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="confirm_password" id="confirm_password" placeholder="" required>
                            <label for="confirm_password" class="form-label">Confirm New Password</label>
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="d-grid">
                            <button class="btn btn-dark btn-lg" type="submit">Save password</button>
                          </div>
                        </div>
                      </div>
                    </form>

                    <div class="row mt-5" style="margin-bottom: 6.2rem;">
                        <div class="col-12">
                          <div class="d-flex justify-content-center mt-3">
                              <a href="/web/views/login.html" class="link-secondary text-decoration-none">Log in</a>
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
