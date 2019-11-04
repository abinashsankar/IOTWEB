
<%-- 
    Document   : index
    Created on : Jul 22, 2019, 6:35:50 PM
    Author     : abi admin
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<html>
    <body onLoad="setTimeout('loadNewDoc()', 1000)">
<%
String compount = request.getParameter("compo");
String model = request.getParameter("model");
String count = request.getParameter("count");
connect connection=new connect();
connection.conn();
if(compount!=null && model!=null && count!=null)
{
if(compount!="" && model!="" && count!="")
{
try {

String queryString = "insert into components(component_name,component_model,component_count,transacted) values('"+compount+"','"+model+"','"+count+"',0)";

connection.update(queryString); 
 
{%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Data is inserted successfully in database.</th></tr>
</table>
 <script type="text/javascript">
  function loadNewDoc(){
      window.location="/IOTWEB/Adminjsp/add.jsp";
  }
  </script>


  <h1>This page will be redirect to add components....</h1>
    </table>
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
   
