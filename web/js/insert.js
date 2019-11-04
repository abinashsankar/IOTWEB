function insert(){
    var d1='compo='+$("c1").val()+'&model='+$("c2").val()+'&count='+$("c3").val();
    $.ajax({
        url:"connect",data:d1,type:"POST",
        success: function(data)
        {
            $("#result").html(data);
           
        }
    });
}