<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@include file="Adminheader.jsp" %>
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
              <li><i class="fa fa-th-list"></i>Update components</li>
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
String QueryString = "SELECT * from components";
connection.read(QueryString);
int i=0;
%>              

              <table class="table table-striped table-advance table-hover">

                <tbody>

                  <tr>
                    <th>Name</th>
                    <th>Model</th>
                    <th>Count</th>
                    <th>Modify count</th>
                    
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getString(3)%></td>
                    <td><%=connection.rs.getInt(4)%></td>
                     <td>
                         <button  type="button" id="<%=connection.rs.getInt(1)%>" class="add">Add</button>
                      <button  type="button" id="<%=connection.rs.getInt(1) %>" class="delete">Delete</button>
                        
                      
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
  
  <script src="../js/delete.js"></script>


