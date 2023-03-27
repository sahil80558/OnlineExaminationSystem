<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-GCQ948N84M"></script>
        <link rel="icon" type="image/png" href="images/fav.png" sizes="16x16">
        <title>Faculty Home</title>
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
                color: red;
            }
        </style>
        <script type="text/javascript">
            function cheak() {
                x = document.getElementById('cmbSubject').value;
                y = document.getElementById('date').value;
                z = document.getElementById('time').value;
                if (x === "" || y === "" || z === "") {
                    document.getElementById('valid').innerHTML = "Enter All Details";
//                   alert("All fields are required.....!");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <%@include file="HeaderFaculty.jsp" %>
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

                            <h3>Schedule Exam</h3>
                            <form id="login_frm" onsubmit="return cheak()" name="login_frm" method="post" class="form-horizontal"  role="form" action="Controller2?param=ScheduleExam&user=${data[1]}&email=${data[0]}">
                                <div class="form-group">
                                    <label for="date">Select Subject </label>
                                    <select class="form-control" id="cmbSubject" name="cmbSubject">
                                        <option value="">Select Subject *</option>
                                        <option value=c++>C&C++</option><option value="java">Java</option><option value="ds">Data Structure</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="date">Date:</label>
                                    <input type="date" id="date" name="date">
                                    <label for="appt">Exam Time:</label>
                                    <input type="time" id="time" name="time">
                                </div>
                                <div class="form-group">
                                    <label>Total Time:</label>
                                    <label >Hr:</label>
                                    <input type="text" id="time" name="hour">
                                    <label >Min:</label>
                                    <input type="text" id="time" name="min">
                                </div>
                                <span id="valid"></span>
                                <div class="form-group submit-box">
                                    <%
                                        String done = request.getParameter("done");
                                        if (done!=null) {
                                    %>
                                    <h6><%=done%></h6>
                                    <%} %>
                                    <input type="submit" value="Schedule Exam">                                  
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