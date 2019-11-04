
<%-- 
    Document   : index
    Created on : Jul 22, 2019, 6:35:50 PM
    Author     : abi admin
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<%
String compount = request.getParameter("RollNumber");
String model = request.getParameter("Project");
String count = request.getParameter("Achievement");
connect connection=new connect();
connection.conn();
if(compount!=null && model!=null && count!=null)
{
if(compount!="" && model!="" && count!="")
{
try {

String queryString = "insert into student_profile(Rollno,projects_done,achivement) values('"+compount+"','"+model+"','"+count+"')";

connection.update(queryString); {%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Student profile updated successfully in database.</th></tr>
</table>
 <script type="text/javascript">
  function loadNewDoc(){
      window.location="/IOTWEB/Adminjsp/Studentup.jsp";
  }
  </script>

<%
}
} 
catch (Exception ex){
out.println("Unable to update database");
}finally {

connection.conclose();
}
}
}
%>
   
