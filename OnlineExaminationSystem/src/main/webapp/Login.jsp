<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-GCQ948N84M"></script>
        <link rel="icon" type="image/png" href="Images/fav.png" sizes="16x16">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style3.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/8.4.6/css/intlTelInput.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.1/assets/owl.carousel.min.css'>
        <!--<link rel='stylesheet' href='CSS/style6.css'>-->
        <style>
            .has-error{
                color: red;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-lg-3 col-md-3 logo">
                        <a href="#">
                            <img src="//logo.png">
                        </a>
                    </div>
                    <div class="col-sm-12 col-lg-6 col-md-6 col-lg-push-6 menu-boxes">
                        <input class="menu-btn" type="checkbox" id="menu-btn" />
                        <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
                        <ul class="menu">
                            <li style="width:-1px">
                                <a href="Controller?param=Home">Home</a>
                            </li>
                            <li style="width:-1px">
                                <a href="Controller?param=StudentZone">Student</a>
                                <ul>
                                    <li><a href="Controller?param=Student">Self learning</a></li>
                                    <li><a href="Controller?param=Login">Practice/Mock Exams</a></li>
                                </ul>
                            </li>
                            <li style="width:-1px"><a href="Controller?param=FacultyZone">Faculty</a>
                                <ul>
                                    <li><a href="Controller?param=Student">Self learning</a></li>
                                    <li><a href="Controller?param=Login">Practice/Mock Exams</a></li>
                                </ul>
                            </li>
                            <li style="width:-1px"><a href="#" >Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-12 col-lg-3 col-md-3 col-lg-pull-3 login-box-btn">
                        <ul>
                            <li style="width:-1px"><a href="Controller?param=Login"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
                            <li style="width:-1px"><a href="Controller?param=Register"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h3>Welcome To The World of Blended Learning and Assessment</h3>
                    </div>
                </div>
            </div>
        </div>

        <div class="benefit inner-benifit inner-benifit3 login-box">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-7 col-md-7 login-right">
                        <h4>Creating Brighter Futures</h4>
                        <p>Join with us now</p>
                        <img src="Images/imgsrc.png">
                    </div>
                    <div class="col-sm-12 col-lg-5 col-md-5">
                        <div class="connect">
                            <div class="user-ico">
                                <span><i class="fa fa-user-o" aria-hidden="true"></i></span>
                            </div>
                            <h3>Login</h3>

                            <form id="login_frm" name="login_frm" method="post" class="form-horizontal"  role="form" action="Controller?param=Menu">
                                <div class="form-group">
                                    <select class="form-control" id="cmbUserType" name="cmbUserType">
                                        <option value="">Select User Type *</option>
                                        <option value=Student>Student</option><option value=Faculty>Faculty</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="txtUserName" id="txtUserName" class="form-control"  placeholder="Email ID">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="txtPassword" id="txtPassword" class="form-control" placeholder="Password">
                                </div>
                                <%
                                    String error = request.getParameter("error");
                                    if (error != null) {
                                %>
                                <span><%=error%></span>
                                <% }%>
                                <div class="form-group submit-box">
                                    <input type="submit" value="Login">
                                </div>
                                <div class="last-box-forgot">
                                    <label>Don’t have an account ? <a href="Controller?param=Register">Register Now</a></label>
                                </div> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        <%@include file="Footer.jsp" %>%>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
        <script src="js/jquery.gotop.js"></script>
        <script src="tools/toastr/toastr.min.js"></script>
        <script>
            $(function () {
                $('#goTop').goTop();
            });
        </script>
    </body>
</html>