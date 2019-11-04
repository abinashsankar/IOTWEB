$(document).ready(function() {
    
    // crating new click event for save button
$(".returned").click(function() {
var id = +this.id; 
var count=$(this).prop("value");

$.ajax({
url: "../JSP/deletetrans.jsp",
type: "post",
data: {
id : id,compno : count,
},
success : function(data){
alert(data); // alerts the response from jsp

$.ajax({
url: "../JSP/deprove.jsp",
type: "post",
data: {
id : id,
},
success : function(data){
    location.reload(); 
}
});


}
});



});
});



