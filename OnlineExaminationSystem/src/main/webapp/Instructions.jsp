<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-GCQ948N84M"></script>
        <link rel="icon" type="image/png" href="images/fav.png" sizes="16x16">
        <title>Student Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style5.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/8.4.6/css/intlTelInput.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css'>
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.1/assets/owl.carousel.min.css'>
        <link rel='stylesheet' href='CSS/style6.css'>
        <style>
            .has-error{
                color: red;
            }
            .connect{
                width: 120%;
            }
            .row{
                flex-direction: row;
            }
            .p{
                font-size:140%;
                text-align:left;
            }
        </style>
        <script type="text/javascript">
           
        </script>
    </head>
    <body>
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-lg-3 col-md-3 logo">
                        <!--<a href="./">-->
                        <img src="Images/logo.png" height="55">
                        <!--</a>-->
                    </div>
                    <div class="col-sm-12 col-lg-6 col-md-6 col-lg-push-6 menu-boxes">
                        <input class="menu-btn" type="checkbox" id="menu-btn" />
                        <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
                    </div>
                    <div class="col-sm-12 col-lg-3 col-md-3 col-lg-pull-3 login-box-btn">
                        <ul>
                            <li style="width:-1px"><a href="Controller?param=Home"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="slide-top-box">
            <h5>Welcome <span>${data[1]}</span></h5>
            <a id="goTop"><span><i class="fa fa-long-arrow-up" aria-hidden="true"></i></span></a>
        </div>

        <div class="benefit inner-benifit inner-benifit3 login-box">
            <div class="container">
                <div class="row">
                    <!--<div class="col-sm-12 col-lg-5 col-md-5">-->
                    <div class="connect">
                        <div class="user-ico">
                            <span><i class="fa fa-user-o" aria-hidden="true"></i></span>
                        </div>
                        <h3>Instructions</h3>

                        <form id="login_frm" name="login_frm" onsubmit="openFullscreen()" method="post" class="form-horizontal"  role="form" action="Controller2?param=Test&user=${data[1]}&email=${data[0]}&cmbSubject=${data[2]}">
                            <div class="form-group">
                                <h5>During the Exam</h5>
                                <p class="p">

                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. The student may not use his or her textbook, course notes, or receive help from a
                                    proctor or any other outside source.<br>

                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Students must complete the 10-question multiple-choice exam within the 10-minute time 
                                    frame allotted for the exam.<br>

                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.Students must not stop the session and then return to it. This is especially important
                                    in the online environment where <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;the system will time-out and not allow the student Or you 
                                    reenter the exam.<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. Do not refresh the browser.
                                </p>
                                <p style="font-size:140%">Number of Question: 10 <p>
                                <p style="font-size:140%">Exam Duration: 10 min <p>
                                <p style="font-size:140%">All the Best!</p>
                            </div>
                            <div class="form-group submit-box">
                                <input type="submit" value="Start Test" id="full">
                            </div>
                        </form>
                    </div>
                    <!--</div>-->
                </div>
            </div>
        </div>
        <div class="copy-right">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <p>© 2022 All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </div>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
    </body>
</html>