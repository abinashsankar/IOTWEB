<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%@page import="connection.connect" %>
<%
String id=request.getParameter("id");
try
{
    
    connect connection=new connect();
    connection.conn();
    
connection.update(" delete from contests where contest_id="+id+"");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
