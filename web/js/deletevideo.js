


$(document).ready(function() {
// crating new click event for save button
$(".delete").click(function() {
    

var id=$(this).prop("value");
$.ajax({
url: "../JSP/delvid.jsp",
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