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
                        <a href="Controller?param=menu1&user=${data[1]}&email=${data[0]}">Home</a>
                    </li>
                    <li style="width:-1px">
                        <a href="#">Student</a>
                        <ul>
                            <li><a href="Controller?param=AllStudents&user=${data[1]}&email=${data[0]}">All Students</a></li>
                            <li><a href="Controller2?param=VerifyStudent&user=${data[1]}&email=${data[0]}">Verify Student</a></li>
                            <li><a href="Controller2?param=FacultyResult&user=${data[1]}&email=${data[0]}">Results</a></li>
                        </ul>
                    </li>
                    <li style="width:-1px"><a href="#">Faculty</a>
                        <ul>
                            <li><a href="Controller?param=FacultyProfile&user=${data[1]}&email=${data[0]}">Profile Details</a></li>
                            <li><a href="Controller?param=ManageExam&user=${data[1]}&email=${data[0]}">Manage Exams</a></li>
                        </ul>
                    </li>
                    <li style="width:-1px"><a href="#" >Contact Us</a></li>
                </ul>
            </div>
            <div class="col-sm-12 col-lg-3 col-md-3 col-lg-pull-3 login-box-btn">
                <ul>
                    <li style="width:-1px"><a href="Controller?param=Home"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="slide-top-box">
    <h5>Welcome <span>${data[1]}</span></h5><h3> </h3>
    <a id="goTop"><span><i class="fa fa-long-arrow-up" aria-hidden="true"></i></span></a>
</div>