<%-- 
    Document   : projectsdisp
    Created on : Aug 31, 2019, 9:35:04 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="studentheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
try {
    String fmail= (String)session.getAttribute("mail");
 
      connect connection=new connect();
    connection.conn();
    String QueryString;
QueryString = " select student_profile.projects_done,student_profile.achivement from register INNER JOIN student_profile ON register.Rollno=student_profile.Rollno where register.email='"+fmail+"';";
connection.read(QueryString);
int i=0;
%>  
<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
              
            <h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
             <ol class="breadcrumb">
              <li><i class="fa fa-home"></i>Home</li>
              <li><i class="icon_documents_alt"></i>Members</li>
              <li><i class="a fa-user-md"></i>Profile</li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">

            

              <table class="table table-striped table-advance table-hover">

                <tbody>
<tr>
                    <th>Project</th>
                    <th>Achievement Description</th>
                   
                    
                  </tr>
                  
<%
while (connection.rs.next()) {
%>
                  <tr>
                    
                    <td><%=connection.rs.getString(1)%></td>
                    <td><%=connection.rs.getString(2)%></td>
                    
                    
                  </tr>
 <% i++;} %>
<%
    
// close all the connections.
connection.rs.close();
connection.conclose();
} catch (Exception ex) {
%>                 
                  
                </tbody>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
              </table>
              
              </section>
          </div></div>
      </section></section>
    </body>
</html>
