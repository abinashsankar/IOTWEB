<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%

          String title = request.getParameter("title");
          String desc = request.getParameter("desc");
          
                   out.print(title);
                   out.print(desc);
%>