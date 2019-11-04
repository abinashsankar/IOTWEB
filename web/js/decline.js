$(document).ready(function() {
    
    // crating new click event for save button
$(".decline").click(function() {
var id = +this.id; 


$.ajax({
url: "../JSP/decline.jsp",
type: "post",
data: {
id : id,
},
success : function(data){
    location.reload(); 
}
});






});
});



