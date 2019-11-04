<%-- 
    Document   : Regestration
    Created on : Aug 11, 2019, 8:40:06 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  

  <title>Registration IOT</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

  
</head>

<body >

<center><h1>Registration IOT CELL</h1></center>
  <div class="container">
<div class="panel-body">
        
              
                <div class="form">
                  <form class="form-validate form-horizontal " id="register_form" method="post" action="JSP/register.jsp">
                    <div class="form-group ">
                      <label for="name" class="control-label col-lg-2">Name <span class="required">*</span></label>
                      <div class="col-lg-10">
                          <input class=" form-control" id="name" name="name" minlength="4" type="text" required />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="roll" class="control-label col-lg-2">Roll number <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class=" form-control" id="roll" name="roll" minlength="6" type="text" required/>
                      </div>
                    </div>
                      <div class="form-group">
                    <label class="control-label col-lg-2" for="inputSuccess">Department</label>
                    <div class="col-lg-10">
                      
                        <select class="form-control m-bot15" name="depart">
                                              <option>Aeronautical Engineering</option>
                                               <option>Agriculture Engineering</option>
<option>Automobile Engineering</option>
<option>Biomedical Engineering</option>
<option>Civil Engineering</option>
<option>Computer Science and Engineering</option>
<option>Electrical and electronic Engineering</option>
<option>Electronics and communication Engineering</option>
<option>Electrical and Instrumentation Engineering</option>
<option>Information science and Engineering</option>
<option>Mechanical Engineering</option>
<option>Mechatronics</option>
<option>Biotechnology</option>
<option>Computer Science and Business Systems</option>
<option>Computer Technology</option>
<option>Food Technology</option>
<option>Fashion Technology</option>
<option>Information Technology</option>
<option>Textile Technology</option>
                                          </select>
                     
                    </div>
                  </div>
                    <div class="form-group " >
                      <label for="mobile" class="control-label col-lg-2">Mobile<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control " id="mobile" name="mobile" minlength="10" type="number" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="password" class="control-label col-lg-2">Password <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control " id="password" name="password" minlength="5" type="password" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="confirm_password" class="control-label col-lg-2">Confirm Password <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control " id="confirm_password" name="confirm_password" minlength="5" type="password" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="email" class="control-label col-lg-2">Email <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control " id="email" name="email" type="email" required/>
                        <label>*Enter bitsathy mail id</label>
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit" id="submit">Submit</button>
                        <button class="btn btn-default" type="button"><a href="login.jsp">Login</a></button>
                      </div>
                    </div>
                  </form>
                </div>
    
              </div>
 
    
  </div>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
         $("#username").on('change keyup paste',function(){
    $(this).val($(this).val().toLowerCase());
     });
        $("#submit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#confirm_password").val();
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
       
    });
</script>
<style>
            input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0; 
}
            </style>
            
</body>

</html>
