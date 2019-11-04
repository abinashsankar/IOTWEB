<%-- 
    Document   : accept-ajax
    Created on : Aug 11, 2019, 11:19:48 PM
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
connection.update(" update register set confrimation=1 where Rollno='"+id+"';");
out.println("Data modified Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
