<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-GCQ948N84M"></script>
        <link rel="icon" type="image/png" href="images/fav.png" sizes="16x16">
        <title>Results</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style5.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/8.4.6/css/intlTelInput.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.1/assets/owl.carousel.min.css'>

        <style>
            .has-error{
                color: red;
            }
            .dimension {
                width: 500px;
                height: 600px;
            }

            .nav-tabs .nav-link.active {
                background-color: #9400d3;
                color: #fff;
                border: 3px solid #9400d3;
            }

            .nav-tabs .nav-link {
                background-color: #fff;
                color: #9400d3;
                border: 3px solid #9400d3;
                margin-right: 2rem;
            }
            .nav-tabs .nav-link:hover {
                border: 3px solid #9400d3;
            }

            .nav-tabs {
                border-bottom: 1px solid #9400d3;
            }

            .tab-content {
                border: 1px solid #9400d3;
                padding: 20px;
            }
            .table-responsive {
                max-height:300px;
            }
        </style>
    </head>
    <body>
        <%@include file="HeaderStudent.jsp" %>
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
                                    String[] data = new String[3];
                                    data[0] = email;
                                    data[1] = request.getParameter("user");
                                    data[2] = request.getParameter("cmbUserType");
                                    request.setAttribute("data", data);
                                    try {
                                        Connection con = DatabaseConnection.ConnectionProvider.getCon();
                                        Statement st = con.createStatement();
                                        String q = "select * from result where email='" + email + "'";
                                        ResultSet rs = st.executeQuery(q);
                                        int i = 1;
                                        while (rs.next()) {
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                $('#dtDynamicVerticalScrollExample').DataTable({
                    "scrollY": "50vh",
                    "scrollCollapse": true,
                });
                $('.dataTables_length').addClass('bs-select');
            });
        </script>
    </body>
</html>