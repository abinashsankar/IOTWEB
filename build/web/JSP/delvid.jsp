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
    out.print(id);
connection.update(" delete from training_videos where video_id='"+id+"'");
out.print("Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

