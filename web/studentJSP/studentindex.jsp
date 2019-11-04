<%-- 
    Document   : studentindex
    Created on : Aug 31, 2019, 6:13:11 PM
    Author     : abi admin
--%>

<%@include file="studentheader.jsp" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>


<!--main content start-->
      <section id="main-content">
        <section class="wrapper">
         
          <div class="row">
            <!-- chart morris start -->
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                    <h3>Recent contests</h3>
                      </header>
                           
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
                <%
try {
    
    connect connection=new connect();
    connection.conn();
String QueryString = "SELECT * from contests ORDER BY contest_id DESC";
connection.read(QueryString);
%>              

              <table class="table table-striped table-advance table-hover" id="tblData">

                <tbody>

                  <tr>
                    <th>Title</th>
                    <th> Description</th>
                    <th>Contest Link</th>
                    <th>Status</th>
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getString(3)%></td>
                    <td><a href="<%=connection.rs.getString(5)%>" target="_blank">Click Here</a></td>
                    <td><button  type="button" id="register" class="registered" value="<%=connection.rs.getString(1)%>">Registered</button>
                                </td>
                  </tr>
 <% } %>
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
          </div>
        </div>
        <!-- page end-->
      </section>
<script src="../js/registered.js"> </script>