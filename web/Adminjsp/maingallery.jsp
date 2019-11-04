<%-- 
    Document   : addvideos
    Created on : Sep 7, 2019, 9:18:17 PM
    Author     : abi admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Adminheader.jsp" %>
   <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Main Gallery</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="adminhome.jsp">Home</a></li>
              <li><i class="icon_document_alt"></i>Update</li>
              <li><i class="fa fa-file-text-o"></i>Gallery</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                Add Photo to gallery
              </header>
              <div class="panel-body">
                  <form role="form" action="../uploadServlet" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                   
                  <div class="form-group">
                  <label>Photo title</label>
                    <input type="text" name="title" class="form-control" id="title" placeholder="Enter Title" required>
                  </div>
                      <div class="form-group">
                    <label>Photo File</label>
                    <input type="file" name="file" class="form-control" id="file" required>
                    <label>The file should be a image and less then 20 MB</label>
                      </div>
                  <div class="form-group">
                    <label>Photo Description</label>
                    <input type="text" name="desc" class="form-control" id="desc" >
                  </div>
                  <div class="form-group">
                    <label>Check to appear in the index page</label>
                    <br>
                    <input type="checkbox" name="indexpage" value="main"> Main page <br>
                  </div>
                  
                  <button type="submit" name="submit" id="submit" value="submit" class="btn btn-primary">Submit</button>
                </form>
                 
              </div>
            </section>
          </div>
        </div>


      </section>
    </section>

