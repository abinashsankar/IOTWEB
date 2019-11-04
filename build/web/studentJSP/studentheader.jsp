<%-- 
    Document   : studentheader
    Created on : Aug 16, 2019, 9:12:53 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>IOT</title>

  <!-- Bootstrap CSS -->
  <link href="../css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="../css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="../css/elegant-icons-style.css" rel="stylesheet" />
  <link href="../css/font-awesome.min.css" rel="stylesheet" />
 

  <!-- Custom styles -->
  <link href="../css/widgets.css" rel="stylesheet">
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet" />
  <link href="../css/xcharts.min.css" rel=" stylesheet">
  <link href="../css/jquery-ui-1.10.4.min.css" rel="stylesheet">
 
</head>

<body>
    
    <%
        response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
        response.setHeader("pragme", "no-cache");
        response.setHeader("Expires", "0");
        if(session.getAttribute("mail")==null && session.getAttribute("pass")==null){
            response.sendRedirect("../login.jsp");
        }
        else if(session.getAttribute("pass")=="admin"){
            response.sendRedirect("../login.jsp");
        }
           
        %>

<!-- container section start -->
  <section id="container" class="">


    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a  class="logo">IOT MENU</a>
      <!--logo end-->

      
    </header>
    <!--header end-->

     <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
            <a class="" href="studentindex.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Home</span>
                      </a>
          </li>

          <li>
            <a class="" href="studentprofile.jsp">
                          <i class="fa fa-user-md"></i>
                          <span>Profile</span>
                      </a>
          </li>
           
          
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Components</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="compavil.jsp">Available</a></li>
              <li><a class="" href="Requestcomp.jsp">Request Components</a></li>
              <li><a class="" href="mycomp.jsp">My components</a></li>
              

            </ul>
          </li>

         
           <li>
            <a class="" href="training.jsp">
                          <i class="icon_documents_alt"></i>
                          <span>Training</span>
                      </a>
          </li>
           <li>
            <a class="" href="projectsdisp.jsp">
                          <i class="icon_genius"></i>
                          <span>Projects</span>
                      </a>
          </li>

         

          
          
          <li>
            <a class="" href="../Logout">
                          <i class="icon_key_alt"></i>
                          <span>Logout</span>

                      </a>

          </li>

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
  </section>

 <!-- javascripts -->
  <script src="../js/jquery.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="../js/jquery.scrollTo.min.js"></script>
  <script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
   <!-- custome script for all page -->
  <script src="../js/scripts.js"></script>
    

  </body>

</html>

