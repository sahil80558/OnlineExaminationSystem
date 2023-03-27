  <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-lg-3 col-md-3 logo">
                        <!--<a href="./">-->
                            <img src="Images/logo.png" height="55">
                        <!--</a>-->
                    </div>
                    <div class="col-sm-12 col-lg-6 col-md-6 col-lg-push-6 menu-boxes">
                        <input class="menu-btn" type="checkbox" id="menu-btn" />
                        <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
                        <ul class="menu">
                            <li style="width:-1px">
                                <a href="Controller?param=menu&user=${data[1]}&email=${data[0]}">Home</a>
                            </li>
                            <li style="width:-1px">
                                <a href="Controller?param=StudentProfile&user=${data[1]}&email=${data[0]}">Profile Details</a>
                            </li>
                            <li style="width:-1px">
                                <a href="Controller2?param=StudentScheduledExam&user=${data[1]}&email=${data[0]}">Scheduled Exam</a>
                            </li>
                            <li style="width:-1px">
                                <a href="Controller2?param=StudentResult&user=${data[1]}&email=${data[0]}" >Results</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-sm-12 col-lg-3 col-md-3 col-lg-pull-3 login-box-btn">
                        <ul>
                            <!--<li style="width:-1px"><a href="Controller?param=Login"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>-->
                            <li style="width:-1px"><a href="Controller?param=Home"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
      
        <div class="slide-top-box">
            <h5>Welcome <span>${data[1]}</span></h5>
            <a id="goTop"><span><i class="fa fa-long-arrow-up" aria-hidden="true"></i></span></a>
        </div>
