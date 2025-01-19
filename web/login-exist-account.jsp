<%-- 
    Document   : login-exist-account
    Created on : Jan 6, 2025, 2:58:02 PM
    Author     : dangx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Forgot password</title>
  <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="/web/css/forgot-password.css">
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
                          <div class="text-center" style="margin-bottom: 2rem;">
                            <a href="#!">
                              <img
                                src="https://bootstrapbrain.com/demo/components/logins/login-8/assets/img/bsb-logo.svg"
                                alt="BootstrapBrain Logo" width="175" height="57">
                            </a>
                          </div>
                          <h2 class="text-left mb-3 mt-1">Account Exists</h2>
                          <p class="text-left">It looks like you already have an account with that email. Please log in
                            using your password instead.</p>
                        </div>
                      </div>
                    </div>

                    <!-- <div class="noticeContainer">
                      <div class="noticeBox error">
                        <span>${errorEmailNotFound}</span>
                      </div>
                      <div class="noticeBox success">
                        <span>${sendmailNotice}</span>
                      </div>
                    </div> -->
                    <!-- Thay phần code comment bằng đoạn mã này -->
                    <div class="user-info text-center my-3">
                      <img src="https://placehold.co/70x70" alt="User Avatar" class="rounded-circle"
                        style="width: 100px; height: 100px;">
                      <h5 class="mt-3">yyyyyyyyyee</h4>
                      <p class="text-muted">hu********03@gmail.com</p>
                    </div>
                    <form action="login_exist_account_gmail" method="post">
                      <div class="row gy-3 overflow-hidden">
                        <div class="col-12">
                          <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="password" id="password"
                              placeholder="name@example.com" required>
                            <label for="password" class="form-label">Password</label>
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="d-grid">
                            <button class="btn btn-dark btn-lg" type="submit">Login</button>
                          </div>
                        </div>
                      </div>
                    </form>

                    <div class="row mt-3" style="margin-bottom: 6.2rem;">
                      <div class="col-12">
                        <div class="d-flex justify-content-center mt-3">
                          <a href="login" class="link-secondary text-decoration-none">Log in with different account</a>
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
