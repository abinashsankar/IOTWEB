
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>IOT SPECIAL LAB</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="maincss/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="maincss/animate.css">
    
    <link rel="stylesheet" href="maincss/owl.carousel.min.css">
    <link rel="stylesheet" href="maincss/owl.theme.default.min.css">
    <link rel="stylesheet" href="maincss/magnific-popup.css">

    <link rel="stylesheet" href="maincss/aos.css">

    <link rel="stylesheet" href="maincss/ionicons.min.css">
    
    <link rel="stylesheet" href="maincss/flaticon.css">
    <link rel="stylesheet" href="maincss/icomoon.css">
    <link rel="stylesheet" href="maincss/style.css">
  </head>
  <body>
	  <div class="bg-top navbar-light">
    	<div class="container">
            <center>
                        </center>
            </div>
              <div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
                            
    				<a class="navbar-brand" href="index.jsp">IOT <span>cell</span></a>
    			</div>	    	
	    				    </div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center px-4">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="index.jsp" class="nav-link pl-0">Home</a></li>
	        	<li class="nav-item"><a href="contests.jsp" class="nav-link">Contests</a></li>
                        <li class="nav-item"><a href="gallery.jsp" class="nav-link">Gallery</a></li>
	               <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                       <li class="nav-item"><a href="login.jsp" class="nav-link" target="_blank">Login</a></li>
	       
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image:url(images/bg_1.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 ftco-animate">
            <h1 class="mb-4">Education Needs Complete Solution</h1>
            <p>For Develop your skills in Internet Of Things click below to register </p>
            <p><a href="Registration.jsp" class="btn btn-primary px-4 py-3 mt-3">Register </a></p>
          </div>
        </div>
        </div>
      </div>

      <div class="slider-item" style="background-image:url(images/abiphoto.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 ftco-animate">
            <h1 class="mb-4">Welcome to IOT special lab</h1>
            <p>To join with us for innovating new things by clicking register below </p>
            <p><a href="Registration.jsp" class="btn btn-primary px-4 py-3 mt-3">Register </a></p>
          </div>
        </div>
        </div>
      </div>
    </section>

    <section class="ftco-services ftco-no-pb">
			<div class="container-wrap">
				<div class="row no-gutters">
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-primary">
            <div class="media block-6 d-block text-center">
              
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Innovative ideas</h3>
                <p>Students who are all coming up with innovative ideas are encouraged by us and we help them to make their own projects</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-darken">
            <div class="media block-6 d-block text-center">
             
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Special Training</h3>
                <p>Even the students study them self sometimes they are within the boundary. For elevating them we are providing special training on technology trends.  </p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-primary">
            <div class="media block-6 d-block text-center">
              
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Components &amp; Funds</h3>
                <p>Who are all doing projects under our labs they are all provided with required components and funds.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex services align-self-stretch py-5 px-4 ftco-animate bg-darken">
            <div class="media block-6 d-block text-center">
             
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Contests &amp; Hackathon</h3>
                <p>Our cell conducting intercollege contests and also help students to take their projects to other college contests and hackathons. </p>
              </div>
            </div>      
          </div>
        </div>
                        </div></section>
       
 <section class="ftco-section bg-light">
                  
     		<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
              <h2 class="mb-4"><span>Hall of</span> Frame</h2>
            <p>Our students recent achievements. For more visit our gallery.</p>
          </div>
        </div>
			<div class="container-fluid px-4">
               
         
				<div class="row">
                <%
try {
    connect connection=new connect();
    connection.conn();
String QueryString = "SELECT * from main_gallery where index_page=1 ORDER BY image_id DESC;";
connection.read(QueryString);
int i=0;
%>          
                                                            <%
while (connection.rs.next()) {
%>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
                                                            <a href="images/<%=connection.rs.getString(4)%>" class="gallery image-popup img d-flex align-items-center" style="background-image: url(images/<%=connection.rs.getString(4)%>);"></a>	
                                                        </div>
							<div class="text pt-3 text-center">
                                                            
						
								<h3><%=connection.rs.getString(2)%></h3>
								<span class="position mb-2"><%=connection.rs.getString(6)%></span>
								<div class="faded">
									<p><%=connection.rs.getString(3)%></p>
				
	              </div>
							</div>
						</div>
					</div>
					
					
				<% i++;} %>
				</div>
                                        
                              
</section>
                                        <%
// close all the connections.
connection.rs.close();
connection.conclose();
} catch (Exception ex) {

out.println("Unable to connect to database.");
}
%>
		
		<section class="ftco-section">
			<div class="container-fluid px-4">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
              <h2 class="mb-4"><span>Our</span> Lab</h2>
            <p>We have all facilities to develop projects. If anything is additionally wanted it will be arranged by our cell.</p>
          </div>
        </div>	
				<div class="row">
					<div class="col-md-3 course ftco-animate">
						<div class="img" style="background-image: url(images/course-1.jpg);"></div>
						<div class="text pt-4">
							
							<h3><a href="#">Electric Engineering</a></h3>
							<p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
							</div>
					</div>
					<div class="col-md-3 course ftco-animate">
						<div class="img" style="background-image: url(images/course-2.jpg);"></div>
						<div class="text pt-4">
							
							<h3><a href="#">Electric Engineering</a></h3>
							<p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
							</div>
					</div>
					<div class="col-md-3 course ftco-animate">
						<div class="img" style="background-image: url(images/course-3.jpg);"></div>
						<div class="text pt-4">
							
							<h3><a href="#">Electric Engineering</a></h3>
							<p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
							</div>
					</div>
					<div class="col-md-3 course ftco-animate">
						<div class="img" style="background-image: url(images/course-4.jpg);"></div>
						<div class="text pt-4">
							
							<h3><a href="#">Electric Engineering</a></h3>
							<p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
							
						</div>
					</div>
				</div>
			</div>
		</section>
<section class="ftco-section testimony-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
            <h2 class="mb-4">Faculty In-Charge</h2>
            <p>If any query related the call feel free to contact.</p>
          </div>
        </div>
        <div class="row ftco-animate justify-content-center">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img mr-4" style="background-image: url(images/teacher-1.jpg)">
                  </div>
                  <div class="text ml-2">
                  	<span class="quote d-flex align-items-center justify-content-center">
                 
                    </span>
                    <p>Department of Electrical and electronics engineering.</p>
                    <p class="name">Tamil Selvan</p>
                    <span class="position"><a href="contact.jsp">Contact</a></span>
                  </div>
                </div>
              </div>
             
                            
              <div class="item">
                <div class="testimony-wrap d-flex">
                  <div class="user-img mr-4" style="background-image: url(images/teacher-1.jpg)">
                  </div>
                  <div class="text ml-2">
                  	<span class="quote d-flex align-items-center justify-content-center">
                      
                    </span>
                    <p>Department of Electrical and electronics engineering.</p>
                    <p class="name">Tamil Selvan</p>
                    <span class="position"><a href="contact.jsp">Contact</a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

		
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="text">Abinash.S</span></li>
                        <li><span class="text">Department of computer science and engineering.</span></li>
	                <li><a ><span class="text">+91 9080180674</span></a></li>
	                <li><a ><span class="text">abinash.cs17@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Links</h2>
              <ul class="list-unstyled">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="contests.jsp">Contests</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp" target="_blank">Login</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>Developed by Abinash S</p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="mainjs/jquery.min.js"></script>
  <script src="mainjs/jquery-migrate-3.0.1.min.js"></script>
  <script src="mainjs/popper.min.js"></script>
  <script src="mainjs/bootstrap.min.js"></script>
  <script src="mainjs/jquery.easing.1.3.js"></script>
  <script src="mainjs/jquery.waypoints.min.js"></script>
  <script src="mainjs/jquery.stellar.min.js"></script>
  <script src="mainjs/owl.carousel.min.js"></script>
  <script src="mainjs/jquery.magnific-popup.min.js"></script>
  <script src="mainjs/aos.js"></script>
  <script src="mainjs/jquery.animateNumber.min.js"></script>
  <script src="mainjs/scrollax.min.js"></script>
  <script src="mainjs/main.js"></script>
    
  </body>
</html>