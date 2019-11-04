<%@include file="Adminheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>

<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
              
            <h3 class="page-header"><i class="fa fa-table"></i> Reports</h3>
           
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i>Home</li>
              <li><i class="fa fa-th-list"></i>Attendance</li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
              <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Rollno" title="Type in a name">
            
            <section class="panel">
                <button class="btn btn-primary btn-lg btn-block" onclick="exportTableToExcel('tabmem', 'Attendance-data')">Download Attendance</button>
<%
try {
    connect connection=new connect();
    connection.conn();
String QueryString = "SELECT * from attendance WHERE attend_date BETWEEN NOW() - INTERVAL 90 DAY AND NOW()";
connection.read(QueryString);
%>              

              <table class="table table-striped table-advance table-hover" id="tabmem">

                <tbody>

                  <tr>
                      <th>Rollno</th>
                      <th>Date</th>
                      <th>Time</th>
                    
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(1)%></td>
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getString(3)%></td>

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
<script src="../js/downloadtable.js"></script>


  <script src="../js/searchtab.js"></script>
