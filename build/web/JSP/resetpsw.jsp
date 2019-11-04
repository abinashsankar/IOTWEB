<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@page import="connection.connect" %>
<%@page import="salts.BcryptHashing" %>
<%
    
BcryptHashing hash=new BcryptHashing();

String password = hash.create(request.getParameter("password"));

String email = request.getParameter("email");
connect connection=new connect();
connection.conn();
out.print(email);
if(password!=null&& email!=null)
{
if(password!=" " && email!=" ")
{
try {

String queryString = "update iotweb.register set password='"+password+"' where email='"+email+"';";
connection.update(queryString);
 {%>
<br>
<h2>Password Changed</h2>

<%
}
} 
catch (Exception ex){
out.println("something went wrong");
}finally {
connection.conclose();
}
}
}
%>