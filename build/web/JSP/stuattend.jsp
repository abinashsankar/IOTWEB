<%-- 
    Document   : stuattend
    Created on : Sep 5, 2019, 8:55:10 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%@page import="connection.connect" %>
<%
String id=request.getParameter("id");
try
{
    
connect connection=new connect();
connection.conn();
connection.insert(" insert into attendance values('"+id+"',CURDATE(),CURTIME());");
out.println("Attandance Given");
}
catch(Exception e)
{
 out.print(e);   
System.out.print(e);
e.printStackTrace();
}
%>