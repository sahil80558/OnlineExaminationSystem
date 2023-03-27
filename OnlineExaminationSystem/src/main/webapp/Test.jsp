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
        <script type="text/javascript">
            function cheakRadioButton() {
                if (document.getElementById('option1').checked)
                    return true;
                if (document.getElementById('option2').checked)
                    return true;
                if (document.getElementById('option3').checked)
                    return true;
                if (document.getElementById('option4').checked)
                    return true;
                alert("Please Select Any Option");
                return false;
            }
            function submitButton(){
                var x=document.getElementById('questionId').value;
                if(x==="10"){
                    document.getElementById('save').value="Submit";
                }else{
                    document.getElementById('save').value="Save & Next";
                }
            }
        </script>
        <style>
            .QuestionsContainer{
                height: 800px;
                width: 100%;
            }
            .QuestionsContainer.container{
                width:100%;
                height: 800px;
            }
        </style>
    </head>
    <body onload="submitButton()">
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-lg-3 col-md-3 logo">
                        <!--<a href="./">-->
                        <img src="Images/logo.png" height="55">
                        <!--</a>-->
                    </div>
                    <%
                        String ques[] = (String[]) request.getAttribute("data");
                    %>
                    <div id="email" style="background-color:black;color:white;padding:20px;">
                        <span>ID:</span><span><%=ques[0]%></span>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="Testname" style="background-color:black;color:white;padding:20px;">
                        <span>Subject:</span><span><%=ques[2]%></span>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div style="background-color:black;color:white;padding:20px;" >
                        <span>Total:</span>10<span id="totalQues"></span><br><span>Attempted:</span><span id="attemptedques"><%=ques[3]%></span>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <div id="Timer" style="background-color:black;color:white;padding:20px;">
                        <span>Time<span>
                                <span><script>document.write(new Date().toLocaleTimeString());</script></span>
                                </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <div style="background-color:black;color:white;padding:20px;" >
                                    <span>Date :</span><span id="date"><script> document.write(new Date().toLocaleDateString());</script></span>
                                </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <div id="submit" style="text-align:right" class="submit">

                                </div>
                                </div>
                                </div>
                                </div>

                                <div class="slide-top-box">
                                    <h5>Welcome <span>${data[1]}</span></h5>
                                    <a id="goTop"><span><i class="fa fa-long-arrow-up" aria-hidden="true"></i></span></a>
                                </div>

                                <div class="QuestionsContainer">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-12 col-lg-5 col-md-5">
                                                <span>Question Id</span>
                                                <input type="text" name="questionId" value="<%=ques[3]%>" id="questionId" readonly/><br>
                                                <span>Question No:</span><span id="no."><%=ques[3]%></span>
                                                <p id="question"><%=ques[4]%></p>
                                            </div>
                                            <div class="col-sm-12 col-lg-5 col-md-5">
                                                <!--<div class="connect">-->
                                                <%
                                                    String next = "Controller?param=TestStart&user=${data[1]}&email=${data[0]}&cmbSubject=${data[2]}&questionId=<%=ques[3]";
                                                    String submit = "Controller?param=ExamSubmitted&user=${data[1]}&email=${data[0]}&cmbSubject=${data[2]}&questionId=<%=ques[3]";
                                                %>
                                                <form id="login_frm" name="login_frm" onsubmit="return cheakRadioButton()" method="post" class="form-horizontal"  role="form" action="<%
                                                    if (ques[3].equals("10")) {
                                                      %>Controller2?param=ExamSubmitted&user=${data[1]}&email=${data[0]}&cmbSubject=${data[2]}&questionId=<%=ques[3]%><%} else {%>
                                                      Controller2?param=TestStart&user=${data[1]}&email=${data[0]}&cmbSubject=${data[2]}&questionId=<%=ques[3]%>
                                                      <%}%>">
                                                    <div class="form-group">
                                                        <div class="form-check">
                                                            <p>Option 1</p>
                                                            <input class="form-check-input" type="radio" name="answer" id="option1" value="<%=ques[5]%>">
                                                            <label class="form-check-label" for="flexRadioDefault1">
                                                                <%=ques[5]%>
                                                            </label>
                                                        </div>
                                                        <br><br> <br>
                                                        <div class="form-check">
                                                            <p>Option 2</p>
                                                            <input class="form-check-input" type="radio" name="answer" id="option2" value="<%=ques[6]%>">
                                                            <label class="form-check-label" for="flexRadioDefault1">
                                                                <%=ques[6]%>
                                                            </label>
                                                        </div>
                                                        <br><br> <br>
                                                        <div class="form-check">
                                                            <p>Option 3</p>
                                                            <input class="form-check-input" type="radio" name="answer" id="option3" value="<%=ques[7]%>">
                                                            <label class="form-check-label" for="flexRadioDefault1">
                                                                <%=ques[7]%>
                                                            </label>
                                                        </div>
                                                        <br><br> <br>
                                                        <div class="form-check">
                                                            <p>Option 4</p>
                                                            <input class="form-check-input" type="radio" name="answer" id="option4" value="<%=ques[8]%>">
                                                            <label class="form-check-label" for="flexRadioDefault1">
                                                                <%=ques[8]%>
                                                            </label>
                                                        </div>

                                                    </div>
                                                    <div class="form-group submit-box">
                                                        <!--<input type="submit" value="Prev"  id="prev" >-->
                                                        <input type="submit"  id="save" value="Save & Next" >
                                                    </div>
                                                </form>
                                                <!--</div>-->
                                            </div>
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