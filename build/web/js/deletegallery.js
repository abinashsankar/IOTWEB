$(document).ready(function() {
// crating new click event for save button
$(".deletegallery").click(function() {
    
var id = +this.id; 
$.ajax({
url: "../JSP/deletegallery.jsp",
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
// crating new click event for save button
$(".deletemain").click(function() {
var id = +this.id; 
$.ajax({
url: "../JSP/deletemain.jsp",
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