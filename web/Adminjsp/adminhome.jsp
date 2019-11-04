<%-- 
    Document   : adminhome
    Created on : Sep 8, 2019, 10:31:04 PM
    Author     : abi admin
--%>
<%@include file="Adminheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<section id="main-content">
    
<section class="wrapper">
   
  <div class="col-lg-12"><center>
            <section class="panel">
              <header class="panel-heading">
                Login attempts
              </header>
                
<%        
    
connect connection=new connect();
try {
    connection.conn();
String QueryString = "SELECT TIME(admin_login.logindata),TIME(admin_login.logoutdata) from admin_login WHERE Admin_id=(select Admin_id from admin where username='"+session.getAttribute("mail")+"' AND  DATE(admin_login.logindata) = CURDATE())";
connection.read(QueryString);
int i=0;
%> 
              <table class="table">
                <thead>
                    Today
                </thead>
                    
                <thead>
                  <tr>
                    <th>Login Time</th>
                   <th> Logout Time</th>
                  </tr>
                </thead>
                
  <%
while (connection.rs.next()) {
%>
                <tbody>

                  <tr class="success">
                    <td><%=connection.rs.getString(1)%></td>
                    <td><% if(connection.rs.getString(2)==null){ out.print("You may closed window");}else{ out.print(connection.rs.getString(2));} %></td>
                  </tr>
<% i++;} 
    
// close all the connections.
connection.rs.close();
connection.conclose();
} catch (Exception ex) {
out.println("Unable to connect to database.");
}

try {
    connection.conn();
String QueryString = "SELECT TIME(admin_login.logindata),TIME(admin_login.logoutdata) from admin_login WHERE Admin_id=(select Admin_id from admin where username='"+session.getAttribute("mail")+"' AND  DATE(admin_login.logindata) = CURDATE()-1)";
connection.read(QueryString);
 int j=0;              
%>
                   
                    
                <thead>
                    Yesterday
                  <tr>
                    <th>Login Time</th>
                   <th> Logout Time</th>
                  </tr>
                </thead>
<%
while (connection.rs.next()) {
%>
                  <tr class="warning">
                    <td><%=connection.rs.getString(1)%></td>
                    <td><% if(connection.rs.getString(2)==null){ out.print("You may closed window");}else{ out.print(connection.rs.getString(2));} %></td>
                  </tr>
<% j++;} 
    
// close all the connections.
connection.rs.close();
connection.conclose();
} catch (Exception ex) {
out.println(ex);
}
     %>             
                </tbody>
              </table>
            </section></center>
          </div>
 

    
            </section>
    
            </section>
        