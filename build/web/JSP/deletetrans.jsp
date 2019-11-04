<%-- 
    Document   : deletetrans
    Created on : Sep 5, 2019, 7:55:44 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%@page import="connection.connect" %>
<%
String id=request.getParameter("id");
String compno=request.getParameter("compno");


try
{
    
    connect connection=new connect();
    connection.conn();
 
    connection.update(" update components set transacted=transacted-"+compno+" where components.component_id= (select component_id from comp_request where request_id='"+id+"')");
    out.print("transaction sucessfull");

}
catch(Exception e)
{
    out.print(e);
System.out.print(e);
e.printStackTrace();
}
%>