$(document).ready(function() {
$(".account").click(function() {
var id = (this.id); 
$.ajax({
url: "../JSP/accept-ajax.jsp",
type: "post",
data: {
id : id,
},
success : function(data){
alert("Account Accepted");
location.reload(); 
}
});
});
}); 