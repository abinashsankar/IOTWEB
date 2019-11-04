

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="studentheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<!DOCTYPE html>
<html>
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
       <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
            <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="studentprofile.jsp">Home</a></li>
              <li><i class="fa fa-user-md"></i>Profile</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <!-- profile-widget -->
          <div class="col-lg-12">
            <div class="profile-widget profile-widget-info">
              <div class="panel-body">
                <div class="col-lg-2 col-sm-2">
              
              <% 
        try{
         String fmail= (String)session.getAttribute("mail");
         connect connection=new connect();
         connection.conn();
         String QueryString = "select * from iotweb.register where email='"+fmail+"'";
         connection.read(QueryString);
        int i=0; 
        %>
 <%
while (connection.rs.next()) {
%>       
                  <h4><%=connection.rs.getString(1)%></h4>
                  <div class="follow-ava">
                    <img src="img/profile-widget-avatar.jpg" alt="">
                  </div>
                  <h6><%=connection.rs.getString(3)%></h6>
                </div>
                <div class="col-lg-4 col-sm-4 follow-info">
                  <p><%=connection.rs.getString(2)%></p>
                  <p><%=connection.rs.getString(6)%></p>
                 
                </div>
                
              </div>
            </div>
          </div>
        </div>
          <!-- profile -->
                  <div id="profile" class="tab-pane">
                    <section class="panel">
                      <div class="bio-graph-heading">
                          Hello <%=connection.rs.getString(1)%> Welcome to profile
                       </div>
                      <div class="panel-body bio-graph-info">
                        <h1>Bio Graph</h1>
                        <div class="row">
                          <div class="bio-row">
                            <p><span>Name </span>: <%=connection.rs.getString(1)%></p>
                          </div>
                         
                          <div class="bio-row">
                            <p>Email: <%=connection.rs.getString(6)%></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Mobile </span>:<%=connection.rs.getString(4)%></p>
                          </div>
                        </div>
<% i++; } %>

                            
                      </div>
                          
                    </section>
                    <section>
                      <div class="row">
                      </div>
                    </section>
                  </div>
 
<%
    
// close all the connections.
connection.rs.close();
connection.conclose();
} 
catch (Exception ex) {

out.println("Unable to connect to database.");
}
%>
      </section>
    </section>
    </body>
</html>

