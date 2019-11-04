<%-- 
    Document   : mycomp
    Created on : Sep 3, 2019, 10:35:33 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="studentheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>


<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> Components</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i>Home</li>
              <li><i class="fa fa-desktop"></i>components</li>
              <li><i class="fa fa-th-list"></i>Requested components</li>
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
     String fmail= (String)session.getAttribute("mail");
String QueryString = "SELECT components.component_name,components.component_model,comp_request.count,comp_request.Date,comp_request.transaction_status,components.component_count,components.transacted from components INNER JOIN comp_request ON (components.component_id=comp_request.component_id) WHERE comp_request.email='"+fmail+"' ORDER BY comp_request.component_id DESC";
connection.read(QueryString);
int i=0;
%>              

              <table class="table table-striped table-advance table-hover">

                <tbody>

                  <tr>
                      <th>Date</th>
                    <th>Name</th>
                    <th>Model</th>
                    <th>Count</th>
                    <th>Status</th>
                    
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(4)%></td>
                    <td><%=connection.rs.getString(1)%></td>
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getInt(3)%></td>
                     <td>
                         
                         <% if(1==(connection.rs.getInt(5))){ %>
                                Approved
                                <%}
             else if(2==(connection.rs.getInt(5))){
                     %>
                     Returned
                     <%
                     }
             else if(connection.rs.getInt(3)+connection.rs.getInt(7)>connection.rs.getInt(6)){
                     %>
                     Not available
                     <%
                     

}           else if(4==(connection.rs.getInt(5))){
                     %>
                     Declined
                     <%
                     

}          
                    else{
                        %>
                     Not Approved
                     <%

}
                      %>
                      
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

