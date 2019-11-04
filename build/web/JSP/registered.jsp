

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<%

String fmail= (String)session.getAttribute("mail");
String id=request.getParameter("id");
connect connection=new connect();
connection.conn();
if(fmail!=null && id!=null)
{
if(fmail!="" && id!="")
{
try {

String queryString = "insert  into contest_registration(email,contest_id,registered) values('"+fmail+"','"+id+"',1) ";

connection.update(queryString); 
out.print("Registered sucessfull");
} 
catch (Exception ex){
out.println("you may already registered");
}finally {

connection.conclose();
}
}
}
%>
   
