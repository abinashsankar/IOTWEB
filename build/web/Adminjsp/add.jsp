
<%@include file="Adminheader.jsp" %>
   <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i> Add Components</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="Adminhome.jsp">Home</a></li>
              <li><i class="icon_document_alt"></i>Components</li>
              <li><i class="fa fa-file-text-o"></i>Add</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                Add
              </header>
              <div class="panel-body">
                  <form role="form" action="../JSP/add1.jsp" method="post">
                  <div class="form-group">
                   
                  <div>
                  <label>Component</label>
                    <input type="text" name="compo" class="form-control" id="cmp" placeholder="Enter component">
                  </div>
                    <div class="form-group">
                    <label>Model</label>
                    <input type="text" name="model" class="form-control" id="mdl" >
                  </div>
                  <div class="form-group">
                    <label>Count</label>
                    <input type="text" name="count" class="form-control" id="ctn" value="1">
                  </div>
                  
                  <button type="submit" name="submit" id="add" value="submit" class="btn btn-primary">Submit</button>
                </form>
                 
              </div>
            </section>
          </div>
        </div>


      </section>
    </section>
