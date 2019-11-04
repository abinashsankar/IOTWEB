$(document).ready(function() {
    
    // crating new click event for save button
$(".registered").click(function() {
var id=$(this).prop("value");
$.ajax({
url: "../JSP/registered.jsp",
type: "post",
data: {
id : id,
},
success : function(data){
alert(data); // alerts the response from jsp
}
});



});
});



