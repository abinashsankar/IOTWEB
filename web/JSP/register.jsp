
<%-- 
    Document   : index
    Created on : Jul 22, 2019, 6:35:50 PM
    Author     : abi admin
--%>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@page import="connection.connect" %>
<%@page import="salts.BcryptHashing" %>
<%
    
BcryptHashing hash=new BcryptHashing();
String name = request.getParameter("name");
String roll = request.getParameter("roll");
String depart = request.getParameter("depart");

String mobile = request.getParameter("mobile");

String password = hash.create(request.getParameter("password"));

String email = request.getParameter("email");
connect connection=new connect();
connection.conn();
if(name!=null && roll!=null && depart!=null&& mobile!=null&& password!=null&& email!=null)
{
if(name!=" " && roll!=" " && depart!=" " && mobile!=" " && password!=" " && email!=" ")
{
try {

String queryString = "insert into register(name,Rollno,department,mobile,password,email,confrimation) values('"+name+"','"+roll+"','"+depart+"','"+mobile+"','"+password+"','"+email+"',0)";
connection.update(queryString);
 {%>
<br>
<h2>Account requested</h2>

<%
}
} 
catch (Exception ex){
out.println("You are already a user or something went wrong");
}finally {
connection.conclose();
}
}
}
%>
   
