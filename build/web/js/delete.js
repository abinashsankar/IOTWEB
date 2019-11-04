$(document).ready(function() {
// crating new click event for save button
$(".delete").click(function() {
    
var id = +this.id; 
$.ajax({
url: "delete-ajax.jsp",
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
$(".add").click(function() {
var id = +this.id; 
$.ajax({
url: "add-ajax.jsp",
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