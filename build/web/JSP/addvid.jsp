<%-- 
    Document   : addvid
    Created on : Sep 7, 2019, 9:23:54 PM
    Author     : abi admin
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<html>
    <body onLoad="setTimeout('loadNewDoc()', 1000)">
<%
String compount = request.getParameter("title");
String model = request.getParameter("link");
String count = request.getParameter("desc");
connect connection=new connect();
connection.conn();
if(compount!=null && model!=null && count!=null)
{
if(compount!="" && model!="" && count!="")
{
try {

String queryString = "insert into training_videos(title,video_link,description) values('"+compount+"','"+model+"','"+count+"')";

connection.update(queryString); 
 
{%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Data is inserted successfully in database.</th></tr>
</table>
 <script type="text/javascript">
  function loadNewDoc(){
      window.location="/IOTWEB/Adminjsp/addvideos.jsp";
  }
  </script>


  <h1>This page will be redirect to add Videos....</h1>
</body>
</html>
<%
}
} 
catch (Exception ex){
out.println("Unable to connect to database.");
}finally {

connection.conclose();
}
}
}
%>
