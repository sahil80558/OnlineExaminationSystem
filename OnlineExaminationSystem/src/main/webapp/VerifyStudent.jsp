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
        <div class="benefit inner-benifit">
            <div class="container mt-2">          
                <h3>Verify Students</h3>
                <%!
                    public int i = 1;
                    public int j = 1;
                %>
                <%

                    String subject = request.getParameter("cmbUserType");
                    try {
                        Connection con = DatabaseConnection.ConnectionProvider.getCon();
                        Statement st = con.createStatement();
                        String q = "select * from student where verify='false';";
                %>  <form action="Controller2?param=StudentVerified&user=${data[1]}&email=${data[0]}&studentemail=<%=j%>" method="post">
                    <table  id="dtDynamicVerticalScrollExample" class="table table-striped table-bordered table-sm"  width="100%">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Course</th>
                                <th scope="col">User Type</th>
                                <th scope="col">Mobile</th>
                                <th scope="col">Verify</th>
                            </tr>
                        </thead>
                        <tbody><%
                            ResultSet rs = st.executeQuery(q);
                            while (rs.next()) {
                            %>
                            <tr>
                                <th scope="row"><%=i%></th>
                                <td><%=rs.getString(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><input type="text" value="<%=rs.getString(3)%>" name="<%=i%>" readonly></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td><input type="submit" value="verify"></td>
                            </tr>
                            <%
                                j=i++;
                                    }
                                } catch (Exception e) {
                                    System.out.println(e);
                                }
                                i = 1;
                            %>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
    </body>
</html>

