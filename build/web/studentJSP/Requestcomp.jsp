<%-- 
    Document   : Requestcomp
    Created on : Sep 1, 2019, 12:38:27 PM
    Author     : abi admin
--%>
<%@include file="studentheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Component Request</title>
        <style>
            input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0; 
}
            </style>
    </head>
    <body>
        <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
              
            <h3 class="page-header"><i class="icon_desktop"></i> Components</h3>
             <ol class="breadcrumb">
              <li><i class="fa fa-home"></i>Home</li>
              <li><i class="icon_desktop"></i>Components</li>
              <li>Request Components</li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <% 
                try{
         String fmail= (String)session.getAttribute("mail");
         connect connection=new connect();
         connection.conn();
         String QueryString = "select component_id,component_name from iotweb.components";
         connection.read(QueryString);
        int i=0; 
        %>
           
             <!-- edit-profile -->
                  <div id="edit-profile" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h1> Component Request</h1>
                        
                        <form class="form-horizontal" role="form" method="post" action="../JSP/compreq.jsp"> <table>
                            <div class="form-group">
                    
                        <tr>
                            <td>
                                    <label class="col-lg-2 control-label">Component</label>
                            </td>
                            <td>
                                    <div class="col-lg-10">
                                    <select class="form-control m-bot15" name="component" id="component" >
                                    
                                    
      <%
while (connection.rs.next()) {
%> 
                                              <option value="<%=connection.rs.getString(2)%>"><%=connection.rs.getString(2)%></option>
<% i++; } %>                                             
                                          </select>

                              </td>
                              </tr>     
                    </div> 
                    <tr>
                        <td>
                    <div class="form-group">
                     <label class="col-lg-2 control-label">Model</label>
                     </td>
                     <td>
                    <div class="col-lg-10">
                      
                        <select class="form-control m-bot15" name="model" id="model">
                                              <option value=""></option>

                                             
                                          </select>
                     
                    </div></td>
                                </tr>
                                
                                <tr><td>
                          <div class="form-group" >
                              <label class="col-lg-2 control-label">Count</label></td>
                           <td> <div class="col-lg-6" >
                              <input type="number" class="form-control" name="count" id="count" value="1">
                               </div></td>
</div></tr>
                          
                          
                        
</table>      
                       

                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button type="submit" class="btn btn-primary" id="submit" value="submit">Request</button>
                              <button type="reset" value="Reset" class="btn btn-danger">Cancel</button>
                            </div>
                          </div>
                        </form>
                      </div>
                    </section>
                  </div>

            </section>
          </div></div>
      </section></section>
<%
    
// close all the connections.
connection.rs.close();
connection.conclose();
} 
catch (Exception ex) {

out.println("Unable to connect to database.");
}
%>

<script>
    $(document).ready(function () {
        $("#component").on("change", function () {
            var component = $("#component").val();
                $.ajax({
                    url: "model.jsp",
                    data: {component: component},
                    method: "POST",
                    success: function (data)
                    {
                        $("#model").html(data);
                    }
                });
        });
    });
</script>
    </body>
</html>
