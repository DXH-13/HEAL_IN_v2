<%-- 
    Document   : profile-user-only
    Created on : Jan 8, 2025, 9:46:04 AM
    Author     : dangx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='css/profileuser.css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }
    </style>
</head>

<body>

    <div class="wrapper bg-white mt-sm-5">
        <h4 class="pb-4 border-bottom">Account settings</h4>
        <div class="d-flex align-items-start py-3 border-bottom">
            <img src="https://images.pexels.com/photos/1037995/pexels-photo-1037995.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                class="img" alt="">
            <div class="pl-sm-4 pl-2" id="img-section">
                <b>Profile Photo</b>
                <p>Accepted file type .png. Less than 1MB</p>
                <button class="btn button border"><b>Upload</b></button>
            </div>
        </div>
        <div class="py-2">
            <div class="row py-2">
                <div class="col-md-6">
                    <label for="firstname">User Name</label>
                    <input type="text" class="bg-light form-control" placeholder="">
                </div>
                <div class="col-md-6 pt-md-0 pt-3">
                    <label for="lastname">Name</label>
                    <input type="text" class="bg-light form-control" placeholder="">
                </div>
            </div>
            <div class="row py-2">
                <div class="col-md-6">
                    <label for="email">Email Address</label>
                    <input type="text" class="bg-light form-control" placeholder="">
                </div>
                <div class="col-md-6 pt-md-0 pt-3">
                    <label for="phone">Phone Number</label>
                    <input type="tel" class="bg-light form-control" placeholder="">
                </div>
            </div>
            <div class="row py-2">
                <div class="col-md-6">
                    <label for="country">Gender</label>
                    <select name="country" id="country" class="bg-light">
                        <option value="india" selected>Male</option>
                        <option value="usa">Female</option>
                        <option value="uk">Other</option>
                    </select>
                </div>

                <div class="col-md-6 pt-md-0 pt-3" id="lang">
                    <label for="datepicker">Chọn ngày:</label>
                    <div class="input-group date" id="datepicker">
                        <input type="text" class="form-control" placeholder="dd/mm/yyyy">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                        </div>
                    </div>
                </div>

            </div>
            <div class="py-3 pb-4 border-bottom">
                <button class="btn btn-primary mr-3">Save Changes</button>
                <button class="btn border button">Cancel</button>
            </div>
            <div class="d-sm-flex align-items-center pt-3" id="deactivate">
                <div>
                    <b>Deactivate your account</b>
                    <p>Details about your company account and password</p>
                </div>
                <div class="ml-auto">
                    <button class="btn danger">Deactivate</button>
                </div>
            </div>
        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    </script>

</body>

</html>
