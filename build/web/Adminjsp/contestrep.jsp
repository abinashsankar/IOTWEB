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
              <li><i class="fa fa-th-list"></i>Total components</li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
                <button class="btn btn-primary btn-lg btn-block" onclick="exportTableToExcel('tblData', 'Components-data')">Download Components</button>
<%
try {
    connect connection=new connect();
    connection.conn();
String QueryString = "SELECT contest_registration.email,contests.contest_title  from contests  INNER JOIN contest_registration ON  contests.contest_id=contest_registration.contest_id";
connection.read(QueryString);
%>              

              <table class="table table-striped table-advance table-hover" id="tblData">

                <tbody>

                  <tr>
                    <th>Email</th>
                    <th>Title</th>
                    
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    <td><%=connection.rs.getString(1)%></td>
                    <td><%=connection.rs.getString(2)%></td>
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
out.println(ex);
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


