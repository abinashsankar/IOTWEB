<%-- 
    Document   : accountreq
    Created on : Aug 11, 2019, 11:05:06 PM
    Author     : abi admin
--%>
<%@include file="Adminheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>

<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> Requests</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="adminhome.jsp">Home</a></li>
              <li><i class="fa fa-mail"></i>Account Requests</li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
<%
try {
    
    connect connection=new connect();
    connection.conn();
String QueryString = "SELECT * from register WHERE confrimation=0";
connection.read(QueryString);
int i=0;
%>              

              <table class="table table-striped table-advance table-hover">

                <tbody>

                  <tr>
                    <th> Roll Number</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>mobile</th>
                    <th>Department</th>
                    <th>Confirmation</th>
                    
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getString(1)%></td>
                    <td><%=connection.rs.getString(6)%></td>
                    <td><%=connection.rs.getString(4)%></td>
                    <td><%=connection.rs.getString(3)%></td>
                     <td>
                         <button type="button" id="<%=connection.rs.getString(2)%>" value="<%=connection.rs.getString(2)%>" class="account">Accept</button>
                        
                      
                    </td>
                    
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
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
 
<script src="../js/account.js"></script>