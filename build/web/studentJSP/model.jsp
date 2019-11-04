<%-- 
    Document   : model
    Created on : Sep 2, 2019, 3:15:00 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <select class="form-control m-bot15" name="model" id="model">

                <% 
                try{
                    String name = request.getParameter("component");
         connect connection=new connect();
         connection.conn();
         String QueryString = "select component_id,component_model from iotweb.components where component_name='"+name+"'";
         connection.read(QueryString);
        int i=0; 
        %>
          <%
while (connection.rs.next()) {
%> 
              <option value="<%=connection.rs.getInt(1)%>"><%=connection.rs.getString(2)%></option>
<% i++; } %>                                             
                                       
        </select>



<%
    
// close all the connections.
connection.rs.close();
connection.conclose();
} 
catch (Exception ex) {

out.println("Unable to connect to database.");
}
%>
    </body>
</html>
