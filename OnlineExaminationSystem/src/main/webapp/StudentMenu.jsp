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
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.1/assets/owl.carousel.min.css'>
        <link rel='stylesheet' href='CSS/style6.css'>
        <style>
            .has-error{
                color: red;
            }
            #valid{
                color:red;
            }
        </style>
        <script type="text/javascript">
            function cheak(){
                x=document.getElementById('cmbSubject').value;
                if(x===""){
                    document.getElementById('valid').innerHTML="Please Select Subject";
//                   alert("All fields are required.....!");
                   return false;
                }
                return true; 
            }
            </script>
    </head>
    <body>
        <%@include file="HeaderStudent.jsp" %>
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
                            <h3>Take Mock Test</h3>

                            <form id="login_frm"  onsubmit="return cheak()" name="login_frm" method="post" class="form-horizontal"  role="form" action="Controller?param=Instructions&user=${data[1]}&email=${data[0]}">
                                <div class="form-group">
                                    <select class="required" id="cmbSubject" name="cmbSubject">
                                        <option value="">Select Course *</option>
                                        <option value=C++>C++</option><option value="Java">Java</option><option value="DS">Data Structure</option>
                                    </select>
                                </div>
                                    <span id="valid"></span>
                                <div class="form-group submit-box">
                                    <input type="submit" value="Start Test">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
              <%@include file="Footer.jsp" %>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
    </body>
</html>