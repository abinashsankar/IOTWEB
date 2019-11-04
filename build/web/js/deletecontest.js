
$(document).ready(function() {
$(".deletecontest").click(function() {
var id = +this.id; 
$.ajax({
url: "../JSP/deletecontest.jsp",
type: "post",
data: {
id : id,
},
success : function(data){
alert(data); // alerts the response from jsp
location.reload(); 
}
});
});
});