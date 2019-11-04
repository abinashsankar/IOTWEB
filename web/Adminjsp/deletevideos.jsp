<%-- 
    Document   : deletevideos
    Created on : Sep 7, 2019, 9:18:35 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Adminheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<!--main content start-->
      <section id="main-content">
        <section class="wrapper">
          <div class="row">
            <div class="col-lg-12">
              <h3 class="page-header"> Delete videos</h3>
              <ol class="breadcrumb">
                <li><i class="fa fa-home"></i>Home</li>
                <li><i class="icon_documents_alt"></i>Training</li>

              </ol>
            </div>
          </div>
          <div class="row">
            <!-- chart morris start -->
            <div class="col-lg-12">
              <section class="panel">
                <header class="panel-heading">
                    <h3>Youtube Videos</h3>
                      </header>
                           
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
                <%
try {
    connect connection=new connect();
    connection.conn();
String QueryString = "SELECT * from training_videos ORDER BY video_id DESC";
connection.read(QueryString);
%>              

              <table class="table table-striped table-advance table-hover" id="tblData">

                <tbody>

                  <tr>
                    <th>Title</th>
                    <th> Description</th>
                    <th>Video Link</th>
                    <th>Delete Videos</th>
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getString(3)%></td>
                    <td><a href="<%=connection.rs.getString(2)%>">Click Here</a></td>
                    <td> <button  type="button" value="<%=connection.rs.getString(1)%>" class="delete">Delete</button>
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
    </section>
 <script src="../js/deletevideo.js"></script>
