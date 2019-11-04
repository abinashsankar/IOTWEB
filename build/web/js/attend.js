$(document).ready(function() {
// crating new click event for save button
$(".attend").click(function() {
    
var id = (this.id); 
alert(id);
$.ajax({
url: "../JSP/stuattend.jsp",
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


