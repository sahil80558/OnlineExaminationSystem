<!DOCTYPE html>
<html>
    <head>
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-GCQ948N84M"></script>
        <link rel="icon" type="image/png" href="images/fav.png" sizes="16x16">
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style3.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/8.4.6/css/intlTelInput.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css'>
        <link rel="stylesheet" type="text/css" href="css/flaticon.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.1/assets/owl.carousel.min.css'>
        <link rel='stylesheet' href='CSS/style4.css'>	<style>
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
                        <a href="./">
                            <img src="Images/logo.png">
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
                                    <li><a href="Controller?param=Student">Community Contents [Self learning]</a></li>
                                    <li><a href="Controller?param=Login">Practice/Mock Exams</a></li>
                                </ul>
                            </li>
                            <li style="width:-1px"><a href="Controller?param=FacultyZone">Faculty</a>
                                <ul>
                                    <li><a href="Controller?param=Student">Community Contents [Self learning]</a></li>
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
                    <div class="col-sm-12 col-lg-6 col-md-6 login-right rigister-right">
                        <h4>Creating Brighter Futures</h4>
                        <p>Register Now</p>
                        <img src="Images/imgsrc.png">
                    </div>
                    <div class="col-sm-12 col-lg-6 col-md-6">
                        <div class="connect">
                            <div class="user-ico">
                                <span><i class="fa fa-user-o" aria-hidden="true"></i></span>
                            </div>
                            <h3>Enter Your Details</h3>

                            <form class="form-horizontal"  action="Controller?param=Registerd" method="post">
                                <div class="form-group">
                                    <input type="email" class="form-control" id="txtEmailId" name="txtEmailId"  placeholder="Email ID *">
                                </div>
                                <div class="parrents-box">
                                    <div class="row">
                                        <div class="col-sm-12 col-lg-6 col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="txtFirstName" name="txtFirstName" placeholder="First Name *">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-lg-6 col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control"  name="txtLastName" id="txtLastName" placeholder="Last Name *">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input  type="number" class="form-control" name="txtPhoneNo" id="txtPhoneNo" placeholder="Phone Number *">
                                </div>
                                <div class="form-group">
                                    <input  type="password" class="form-control" name="txtPassword" id="txtPassword" placeholder="Password *">
                                </div>
                                <div class="form-group">
                                    <select class="form-control" id="cmbUserType" name="cmbUserType">
                                        <option value="">Select User Type *</option>
                                        <option value=Student>Student</option><option value=Faculty>Faculty</option>
                                    </select>
                                </div>

                                <div id="dropdown_id">
                                    <div class="form-group">
                                        <select class="form-control" id="cmbCourse" name="cmbCourse">
                                            <option value="">Select Course *</option>
                                            <option value=c++>C&C++</option><option value=java>Java</option>><option value=ds>Data Structure</option>
                                        </select>
                                    </div>
                                </div>	

                                <div class="form-group submit-box">
                                    <input type="submit"  value="Register">
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
        <script type="text/javascript">

            $('#validateForm').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                submitButtons: 'button[type="submit"]',
                submitHandler: function (validator, form, submitButton)
                {
                    document.getElementById("btnSubmit").innerHTML = "<i class='fa fa-cog fa-spin'> </i> Registering..";
                    document.getElementById("btnSubmit").disabled = true;
                    var txtEmailId = $('#txtEmailId').val();
                    var txtFirstName = $('#txtFirstName').val();
                    var txtLastName = $('#txtLastName').val();
                    var txtPhoneNo = $('#txtPhoneNo').val();
                    var cmbCourse = $('#cmbCourse').val();
                    var cmbClass = $('#cmbClass').val();
                    var cmbUserType = $('#cmbUserType').val();
                    var urls = "db_register1.php?oper=REGISTER_USER";
                    $.ajax({
                        url: urls,
                        type: "post",
                        data: {txtEmailId, txtFirstName, txtLastName, txtPhoneNo, cmbCourse, cmbClass, cmbUserType},
                        success: function (response)
                        {
                            var result = jQuery.parseJSON(response);
                            if (result.dbStatus == 'SUCCESS') {
                                toastr.success(result.dbMessage);
                                var load = setTimeout(function () {
                                    location.href = 'login.php';
                                }, 2000);
                            } else {
                                toastr.error(result.dbMessage);
                            }
                            document.getElementById("btnSubmit").innerHTML = "Register";
                            document.getElementById("btnSubmit").disabled = false;
                        }, error: function (err) {
                            toastr.error('CONTACT SUPPORT');
                            document.getElementById("btnSubmit").innerHTML = "Register";
                            document.getElementById("btnSubmit").disabled = false;
                        }
                    });
                },
                fields: {
                    txtEmailId: {
                        validators: {
                            notEmpty: {
                                message: 'Please enter your email address'
                            },
                            emailAddress: {
                                message: 'Enter valid email Id'
                            }
                        }
                    },
                    txtFirstName: {
                        validators: {
                            notEmpty: {
                                message: 'Enter your first name'
                            }
                        }
                    },
                    txtLastName: {
                        validators: {
                            notEmpty: {
                                message: 'Enter your last name'
                            }
                        }
                    },
                    txtPhoneNo: {
                        validators: {
                            notEmpty: {
                                message: 'Enter a valid phone number'
                            }
                        }
                    },
                    cmbUserType: {
                        validators: {
                            notEmpty: {
                                message: 'Select the User Type'
                            }
                        }
                    },
                }

            });


            $(document).ready(function () {
                $("#dropdown_id").hide();
            });


            $("#cmbUserType").change(function () {
                if ($("#cmbUserType").val() == 'STUDENT')
                {
                    $("#dropdown_id").show();
                }
            });

        </script>

    </body>
</html>