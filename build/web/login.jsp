<%-- 
    Document   : login
    Created on : Aug 11, 2019, 8:40:40 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  

  <title>Login IOT</title>

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
  <script src="js/valid.js"></script>
  
</head>

<body class="login-img3-body">

  <div class="container">
      <form class="login-form" action="Login" method="post" onsubmit="return validate()">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <input type="text" name="mail" class="form-control" placeholder="Email" autofocus required />
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <input type="password" name="pass" class="form-control" placeholder="Password" id="pass" required />
        </div>
        <span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%>
      <label class="checkbox">
                <input type="checkbox" value="show" onclick="show()"> Show password
                <span class="pull-right"> <a href="forgot.jsp"> Forgot Password?</a></span>
            </label>
        
        <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
        <button class="btn btn-info btn-lg btn-block" type="button" onclick="window.location.href='Registration.jsp'">Register</button>
      </div>
    </form>
    
  </div>
<script>
function show() {
  var x = document.getElementById("pass");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

</body>

</html>
