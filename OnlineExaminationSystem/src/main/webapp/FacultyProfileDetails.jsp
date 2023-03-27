<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
        </style>
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
                            <h3>Profile Details</h3>
                            <form id="login_frm" name="login_frm" method="post" class="form-horizontal"  role="form" action="Controller?param=FacultyProfileUpdate&user=${data[1]}&email=${data[0]}">
                                <%
                                  String email = request.getParameter("email");
                                    try {
                                        Connection con = DatabaseConnection.ConnectionProvider.getCon();
                                        Statement st = con.createStatement();
                                        String q = "select * from faculty where email='"+email+"'";
                                        ResultSet rs = st.executeQuery(q);
                                        if (rs.next()) {
                                            
                                %>
                                <div class="parrents-box">
                                    <div class="row">
                                        <div class="col-sm-12 col-lg-6 col-md-6">
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input type="text" class="form-control" value="<%=rs.getString(1)%>" id="txtFirstName" name="txtFirstName" placeholder="First Name *">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-lg-6 col-md-6">
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input type="text" class="form-control" value="<%=rs.getString(2)%>"  name="txtLastName" id="txtLastName" placeholder="Last Name *">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" value="<%=rs.getString(3)%>"  id="txtEmailId" name="txtEmailId"  placeholder="Email ID *">
                                </div>
                                <div class="form-group">
                                    <label>Phone No.</label>
                                    <input  type="text" class="form-control" value="<%=rs.getString(6)%>" name="txtPhoneNo" id="txtPhoneNo" placeholder="Phone Number *">
                                </div>
                                <div class="form-group">
                                    <label>User Type</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(5)%>"   name="txtUserType" id="txtLastName" placeholder="UserType *">
                                </div>
                                <div class="form-group submit-box">
                                    <input type="submit" value="Update Details">
                                    <h4>${done}</h4>
                                </div>
                            </form>
                               <%   } 
                                    } catch (Exception e) {
                                        System.out.println(e);
                                    }
                                %>
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