<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
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
            function cheak(){
                x=document.getElementById('cmbSubject').value;
                y=document.getElementById('date').value;
                z=document.getElementById('time').value;
                if(x==="" || y==="" || z===""){
                    document.getElementById('valid').innerHTML="Enter All Details";
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
            <div class="container mt-2">
                <div class="row border g-0 rounded shadow-sm">
                    <div class="col p-4">
                        <h3>Result</h3>
                        <table id="dtDynamicVerticalScrollExample" class="table table-striped table-bordered table-sm"  width="100%">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Subject</th>
                                    <th scope="col">Total Questions</th>
                                    <th scope="col">Attempted Question</th>
                                    <th scope="col">Correct Question</th>
                                    <th scope="col">Marks Obtained</th>
                                    <th scope="col">Total Marks</th>
                                    <th scope="col">Percentage</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String subject = request.getParameter("cmbUserType");
                                    String email = request.getParameter("email");
                                    try {
                                        Connection con = DatabaseConnection.ConnectionProvider.getCon();
                                        Statement st = con.createStatement();
                                        String q = "select * from result";
                                        ResultSet rs = st.executeQuery(q);
                                        int i=1;
                                        while(rs.next()) {
                                %>
                                <tr>
                                    <th scope="row"><%=i++%></th>
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td><%=rs.getString(7)%></td>
                                    <td><%=rs.getString(8)%></td>
                                    <td><%=rs.getString(9)%></td>
                                    <td><%=rs.getString(10)%></td>
                                </tr>
                                <%
                                        }
                                    } catch (Exception e) {
                                        System.out.println(e);
                                    }
                                %>
                            </tbody>
                        </table>
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