<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  

  <title>Change Password</title>

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

<center><h1>Change password</h1></center>
 
  <div class="container">
<div class="panel-body">
        
<%
 String encoded=request.getParameter("recipient");   
byte[] actualByte = Base64.getDecoder() 
                                .decode(encoded); 
  
       String email = new String(actualByte);
  
        %>

           <center><h3><%=email%></h3></center>    
                 <div class="form">
                  <form class="form-validate form-horizontal " id="register_form" method="post" action="JSP/resetpsw.jsp">
                      <div class="form-group ">
                      <div class="col-lg-10">
                        <input class="form-control " type="hidden" id="email" name="email" value="<%=email%>"/>
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

