<%-- 
    Document   : compreq
    Created on : Sep 2, 2019, 4:45:41 PM
    Author     : abi admin
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@page import="connection.connect" %>
<html>
    <body onLoad="setTimeout('loadNewDoc()', 1000)">
<%
    
String fmail= (String)session.getAttribute("mail");
String component_id = request.getParameter("model");
String component_count= request.getParameter("count");
int i=Integer.parseInt(component_id);
int j=Integer.parseInt(component_count);
connect connection=new connect();
connection.conn();
if(fmail!=null && component_id!=null && component_count!=null)
{
if(fmail!=" " && component_id!=" " && component_count!=" ")
{
try {
    

String queryString = "insert into comp_request(component_id,email,component_status,count,transaction_status,Date) values('"+component_id+"','"+fmail+"',0,'"+component_count+"',0,CURDATE())";
connection.update(queryString);
{%>
<br>
<!DOCTYPE html>


<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Component Requested successfully </th></tr>
</table>
 <script type="text/javascript">
  function loadNewDoc(){
      window.location="/IOTWEB/studentJSP/Requestcomp.jsp";
  }
  </script>

</body>
</html>
<%
}
    
 
} 
catch (Exception ex){
out.println("enter the component detials correctly");
}finally {
connection.conclose();
}
}
}
%>

    
    
