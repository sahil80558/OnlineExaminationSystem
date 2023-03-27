<!DOCTYPE html>
<html>
  <head>
        <title>Welcome to QuizBox</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/style5.css">
        <link rel="stylesheet" type="text/css" href="CSS/style10.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css'>
        <style>
            .border-info.bg-info .card-header {
                color: #fff;
                cursor: pointer;
            }

            .border-info.bg-info .card-title {
                color: #fff;
            }

            .border-info.card-header {
                color: #000;
            }

            .border-info {
                cursor: pointer;
            }

            @media (min-width: 576px) {
                .modal-dialog {
                    margin: 2rem auto;
                }
            }
        </style>
    </head>
  <body>
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-lg-3 col-md-3 logo">
                        <a href="./">
                            <img src="logo.png">
                        </a>
                    </div>
                    <div class="col-sm-12 col-lg-6 col-md-6 col-lg-push-6 menu-boxes">
                        <input class="menu-btn" type="checkbox" id="menu-btn" />
                        <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
                        <ul class="menu">
                            <li style="width:-2px">
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
                            <li style="width:-1px"><a href="" >Contact Us</a></li>
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
                        <h3>Explore Community Contents and EBooks for Self-Learning</h3>
                    </div>
                </div>
            </div>
        </div>    
      
       
           
        
        <div class="first-section">
            
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-12 col-md-12">
                        <div class="inner-title">
                            
                            <span style="padding-top: 9px;"><i class="fa fa-video-camera" aria-hidden="true"></i></span>
                            <h3>Explore Contents (Videos/E-Book)</h3>
                           
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-12 col-md-12">
                        <div class="row" style="margin: auto;width:45%;padding: 0px;">
                            <!--<input type="hidden" value="CBSE" id="board" name="board"/>-->
                            <input type="hidden" value="CHSE" id="board" name="board" />
                            <div>
                                <div class="card border-info bg-info mb-3" style="width:141px;text-align: center;margin: 10px;" id='CHSE'>
                                    <a href="https://www.youtube.com/watch?v=irqbmMNs2Bo">
                                        <div class="card-header">C++</div>
                                    </a>
                                </div>
                            </div>
                            <div>
                                <div class="card border-info bg-info mb-3" style="width:141px;text-align: center;margin: 10px;" id='CBSE'>
                                    <a href="https://www.youtube.com/watch?v=ntLJmHOJ0ME&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q">
                                        <div class="card-header">Java</div>
                                    </a>
                                </div>
                            </div>
                            <div>
                                <div class="card border-info bg-info mb-3" style="width:141px;text-align: center;margin: 10px;" id='ICSE'>
                                    <a href="https://www.youtube.com/watch?v=XCyuHSJS7XE&list=PLIY8eNdw5tW_zX3OCzX7NJ8bL1p6pWfgG">
                                        <div class="card-header">Data Structure</div>
                                    </a>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="Courses-box">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-lg-4 col-md-4">
                        <img src="Images/edu1.gif">
                    </div>
                    <div class="col-sm-12 col-lg-8 col-md-8">
                        <h2><span>"Do the best you can until you know better. Then when you know better, do better."</span></h2>
                        
                        <p>Our best efforts are our best efforts until we get more information that helps us improve. Always learn from your best, apply your teachings, and get better. </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-lg-4 col-md-4 first-box-footer">
                         
                            <p>Passionately involved in education.</p>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-yelp" aria-hidden="true"></i></a></li>               
                            </ul>
                        </div>
                        <div class="col-sm-12 col-lg-4 col-md-4 quick-link">
                            <h5>Quick Links</h5>
                            <ul>
                                <li><a href="Controller?param=Home">Home</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-12 col-lg-4 col-md-4 conact-a">
                            <h5>Contact Us</h5>
                            <ul>
                                <li><span>Email:</span>
                                    naneriya.yogesh800@gmail.com</li>
                                <li><span>Phone:</span>
                                    8889850763</li>
                                <li><span>Address:</span>
                                    Vijay Nagar Indore Madhya Pradesh</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copy-right">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-lg-6 col-md-6">
                            <p> 2022 All Rights Reserved.
                            </p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <!-- Latest compiled JavaScript -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js'></script>
        <script type="text/javascript">

        </script>
    </body>

</html>