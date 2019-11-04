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

<center><h1>Forgot Password</h1></center>
  <div class="container">
<div class="panel-body">
        
              
                <div class="form">
                  <form class="form-validate form-horizontal " id="register_form" method="post" action="EmailSendingServlet">
                    
                      <div class="form-group ">
                      <label for="email" class="control-label col-lg-2">Email <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control " id="recipient" type="email" name="recipient" size="50" required="required"/>
                        <label>*Enter bitsathy mail id</label>
                      </div>
                    </div> 
                    
                    
                   
                    
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit" id="submit">Send</button>
                        <button class="btn btn-default" type="button"><a href="login.jsp">Login</a></button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
 
    
  </div>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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
