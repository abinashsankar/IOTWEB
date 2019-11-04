
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
            <h3 class="page-header"><i class="fa fa-table"></i> Components</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="adminhome.jsp">Home</a></li>
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
String QueryString = "SELECT comp_request.request_id,comp_request.email,components.component_name,components.component_model,comp_request.count,comp_request.transaction_status,comp_request.Date,comp_request.component_id,components.transacted,components.component_count from components  INNER JOIN comp_request ON components.component_id=comp_request.component_id WHERE comp_request.Date BETWEEN NOW() - INTERVAL 30 DAY AND NOW() ORDER BY comp_request.Date DESC ";
connection.read(QueryString);
int i=0;
%>              

              <table class="table table-striped table-advance table-hover">

                <tbody>

                  <tr>
                      <th>Date</th>
                      <th>Email</th>
                    <th>Name</th>
                    <th>Model</th>
                    <th>Total count</th>
                   <th>Count Requested</th>
                   <th>Available</th>
                    <th>Approve</th>
                    
                    
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(7)%></td>
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getString(3)%></td>
                    <td><%=connection.rs.getString(4)%></td>
                    <td><%=connection.rs.getInt(10)%></td>
                     <td><%=connection.rs.getInt(5)%></td>
                     <td><%=connection.rs.getInt(10)-connection.rs.getInt(9)%></td>
                     <td>
                         
                         <% if(0==(connection.rs.getInt(6))){ %>
                              <% if(connection.rs.getInt(5)+connection.rs.getInt(9)>connection.rs.getInt(10)){
                                        %>
                                      Not available
                                      <button  type="button" id="<%=connection.rs.getInt(1) %>" class="decline" value="<%=connection.rs.getInt(5)%>">Decline</button>
                                   <%}
                              else{ %>
                                <button  type="button" id="<%=connection.rs.getInt(1) %>" class="approve" value="<%=connection.rs.getInt(5)%>">Approve</button>
                                <button  type="button" id="<%=connection.rs.getInt(1) %>" class="decline" value="<%=connection.rs.getInt(5)%>">Decline</button>
                                
                                <%}}
                            
             
                  else if(1==(connection.rs.getInt(6))){
                     %>
                     Approved
                     <%
                     }
                      
                      else{%>
                 
                     Declined
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
        <!-- page end-->
        <script src="../js/approve.js"> </script>
        <script src="../js/decline.js"> </script>