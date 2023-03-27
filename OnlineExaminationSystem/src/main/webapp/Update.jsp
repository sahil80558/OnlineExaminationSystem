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
        </style>
    </head>
    <body>
        <%@include file="HeaderFaculty.jsp" %>
        <div class="benefit inner-benifit inner-benifit3 login-box">
            <div class="container mt-2">
                <h3 class="mb-3">Manage Exams</h3>
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#CSV">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-plus-fill" viewBox="0 0 16 16">
                            <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0 0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM8.5 7v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 1 0z"/>
                            </svg> Insert CSV File</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#add">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                            </svg> Add Question</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="#update">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 0 0 8a8 8 0 0 0 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
                            </svg> Update Question</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#delete">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                            <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z"/>
                            </svg> Delete Question</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#showAll">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clipboard2-check-fill" viewBox="0 0 16 16">
                            <path d="M10 .5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5.5.5 0 0 1-.5.5.5.5 0 0 0-.5.5V2a.5.5 0 0 0 .5.5h5A.5.5 0 0 0 11 2v-.5a.5.5 0 0 0-.5-.5.5.5 0 0 1-.5-.5Z"/>
                            <path d="M4.085 1H3.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1h-.585c.055.156.085.325.085.5V2a1.5 1.5 0 0 1-1.5 1.5h-5A1.5 1.5 0 0 1 4 2v-.5c0-.175.03-.344.085-.5Zm6.769 6.854-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708.708Z"/>
                            </svg> ShowAll Question</a>
                    </li>
                </ul>
                <div class="tab-content">

                    <div class="tab-pane" id="CSV">
                        <div class="row border g-0 rounded shadow-sm">
                            <div class="col p-4">
                                <h3>Insert CSV</h3>
                                <div class="col-auto">
                                    <img src="Images/imgsrc.png" class="img-thumbnail dimension">
                                </div>
                                <div class="col p-4">
                                    <label for="myfile">Select a file:</label>
                                    <input type="file" id="myfile" name="myfile">
                                     <select  id="cmbUserType" name="cmbUserType">
                                        <option value="">Select Subject*</option>
                                        <option value=c++>C++</option><option value=java>Java</option><option value=ds>Data Structure</option>
                                    </select>
                                    <input type="button" value="Insert">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" id="add">
                        <div class="row border g-0 rounded shadow-sm">
                            <div class="col p-4">
                                <h3>Insert Question</h3>
                                <form class="form-horizontal"  action="Controller?param=insert&user=${data[1]}&email=${data[0]}" method="post">
                                    <div class="form-group">
                                        <label >Question Id:</label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%
                                            try {
                                                Connection con = DatabaseConnection.ConnectionProvider.getCon();
                                                Statement st = con.createStatement();
                                                String q = "select count(questionId) from questions";
                                                ResultSet rs = st.executeQuery(q);
                                                if (rs.next()) {
                                                    int id = rs.getInt(1);
                                                    id = id + 1;
                                                    String str = String.valueOf(id);
                                        %><input type="text" name="questionId" id="questionId" value="<%=id%>" readonly>
                                        <%
                                        } else {
                                        %><input type="text" name="questionId" id="questionId" value="1" readonly>
                                        <%
                                                }
                                            } catch (Exception e) {
                                                out.println(e);
                                            }
                                        %>
                                         <select  id="cmbUserType" name="cmbUserType">
                                        <option value="">Select Subject*</option>
                                        <option value=c++>C++</option><option value=java>Java</option><option value=ds>Data Structure</option>
                                    </select>
                                    </div>
                                    <div  class="form-group">
                                        <label >Question:</label>
                                        <input type="text" class="form-control" id="question" name="question"  placeholder="Question*">
                                    </div>
                                    <div  class="form-group">
                                        <label >Option 1:</label>
                                        <input type="text" class="form-control" id="option1" name="option1"  placeholder="Option 1*">
                                    </div>
                                    <div class="form-group">
                                        <label >Option 2:</label>
                                        <input type="text" class="form-control" id="option2" name="option2"  placeholder="Option 2*">
                                    </div>
                                    <div  class="form-group">
                                        <label >Option 3:</label>
                                        <input type="text" class="form-control" id="option3" name="option3"  placeholder="Option 3*">
                                    </div>
                                    <div  class="form-group">
                                        <label >Option 4:</label>
                                        <input type="text" class="form-control" id="option4" name="option4"  placeholder="Option 4*">
                                    </div>
                                    <div  class="form-group">
                                        <label >Answer:</label>
                                        <input type="text" class="form-control" id="answer" name="answer"  placeholder="Answer *">
                                    </div>
                                    <div  class="form-group submit-box">
                                        <input type="submit" value="Insert">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane active" id="update">
                        <div class="row border g-0 rounded shadow-sm">
                            <div class="col p-4">
                                <h3>Update Question</h3>
                                <form class="form-horizontal"  action="Controller?param=Search1&user=${data[1]}&email=${data[0]}" method="post">
                                    <div class="form-group">
                                        <label >Question Id:</label>
                                        <input type="text" name="questionId">
                                         <select  id="cmbUserType" name="cmbUserType">
                                        <option value="">Select Subject*</option>
                                        <option value=c++>C++</option><option value=java>Java</option><option value=ds>Data Structure</option>
                                    </select>
                                        <input type="submit" value="Search" name="b1">
                                        <% String done=request.getParameter("done");%>
                                        <h5><%=done%></h5>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" id="delete">
                        <div class="row border g-0 rounded shadow-sm">
                            <div class="col p-4">
                                <h3>Delete Question</h3>
                                <div>
                                    <form class="form-horizontal"  action="Controller?param=Delete&user=${data[1]}&email=${data[0]}" method="post">
                                        <div class="form-group">
                                            <label >Question Id:</label>
                                            <input type="text" name="questionId">
                                             <select  id="cmbUserType" name="cmbUserType">
                                        <option value="">Select Subject*</option>
                                        <option value=c++>C++</option><option value=java>Java</option><option value=ds>Data Structure</option>
                                    </select>
                                            <input type="submit" value="Search">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                                    
                    <div class="tab-pane" id="showAll">
                        <div class="row border g-0 rounded shadow-sm">
                            <div class="col p-4">
                                <h3>Show All Question</h3>
                                 <form class="form-horizontal"  action="Controller?param=ShowAll&user=${data[1]}&email=${data[0]}" method="post">
                                <div class="form-group">
                                    <select  id="cmbUserType" name="cmbUserType">
                                        <option value="">Select Subject*</option>
                                        <option value=c++>C++</option><option value=java>Java</option><option value=ds>Data Structure</option>
                                    </select>
                                    <input type="submit" value="Submit" >
                                </div>
                             </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
    </body>
</html>
