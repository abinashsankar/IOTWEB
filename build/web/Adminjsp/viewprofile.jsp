<%@include file="Adminheader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>


<%
try {
     String roll = request.getParameter("id");
      connect connection=new connect();
    connection.conn();
String QueryString = "select * from student_profile where Rollno='"+roll+"'";
connection.read(QueryString);
int i=0;
%>  
<!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
              
            <h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
             <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="adminhome.jsp">Home</a></li>
              <li><i class="icon_documents_alt"></i>Members</li>
              <li><i class="a fa-user-md"></i>Profile</li>
              <li><%out.println(roll);%></li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">

            

              <table class="table table-striped table-advance table-hover">

                <tbody>
<tr>
                    <th>Project</th>
                    <th>Achievement Description</th>
                   
                    
                  </tr>
                  
<%
while (connection.rs.next()) {
%>
                  <tr>
                    
                    <td><%=connection.rs.getString(2)%></td>
                    <td><%=connection.rs.getString(3)%></td>
                    
                    
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


    
   <script src="../js/profile.js"></script>






