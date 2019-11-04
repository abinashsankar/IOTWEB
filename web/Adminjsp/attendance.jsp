<%@include file="Adminheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>

<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
              <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Rollno" title="Type in a name">
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="adminhome.jsp">Home</a></li>
              <li><i class="fa fa-th-list"></i>Attendance</li>
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

String QueryString = "SELECT register.Rollno,register.name from register";
connection.read(QueryString);
int i=0;
%>              

              <table class="table table-striped table-advance table-hover" id="tabmem">

                <tbody>

                  <tr>
                    <th>RollNO</th>
                    <th>Name</th>
                    <th>Present</th>
                    
                    
                  </tr>
<%
while (connection.rs.next()) {
%>
                  <tr>
                    
                    <td><%=connection.rs.getString(1)%></td>
                    <td><%=connection.rs.getString(2)%></td>
                   
                     <td>
                         <button type="button"   id="<%=connection.rs.getString(1)%>" class="attend">Present</button>
                         
                         </td>
                    
                  </tr>
 <% i++;} %>
<%
 connection.rs.close();
// close all the connections.
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


    
  <script src="../js/searchtab.js"></script>
   
 <script src="../js/attend.js"></script>


