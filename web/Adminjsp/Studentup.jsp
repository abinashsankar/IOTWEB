
<%@include file="Adminheader.jsp" %>
   <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-file-text-o"></i>Members</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="adminhome.jsp">Home</a></li>
              <li><i class="icon_document_alt"></i>Members</li>
              <li><i class="fa fa-file-text-o"></i>Profile Update</li>
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
                  <form role="form" action="../JSP/profileupdate.jsp">
                  <div class="form-group">
                   
                  <div>
                  <label>Roll Number</label>
                    <input type="text" name="RollNumber" class="form-control" id="cmp" placeholder="Enter Rollno">
                  </div>
                    <div class="form-group">
                    <label>Project</label>
                    <input type="text" name="Project" class="form-control" id="mdl" >
                  </div>
                  <div class="form-group">
                    <label>Achievement</label>
                    <input type="text" name="Achievement" class="form-control" id="ctn" placeholder="if yes please mention">
                  </div>
                  
                  <button type="submit" name="submit" id="add" value="submit" class="btn btn-primary">Submit</button>
                </form>
                 
              </div>
            </section>
          </div>
        </div>


      </section>
    </section>

 <script type="text/javascript">
    $(function () {
         $("#username").on('change keyup paste',function(){
    $(this).val($(this).val().toLowerCase());
     });
     
       
    });
</script>

