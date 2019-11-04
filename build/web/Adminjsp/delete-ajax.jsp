<%-- 
    Document   : delete-ajax
    Created on : Aug 9, 2019, 6:46:26 PM
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
connection.update(" update components set component_count=component_count-1 where component_id="+id+" and component_count>0;");
out.println("Data modified Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
