 
function validate()
{ 
 var username = document.form.username.value; 
 var password = document.form.password.value;
 
 if (username==null || username=="")
 { 
 alert("Username cannot be blank"); 
 return false; 
 }
 else if(password==null || password=="")
 { 
 alert("Password cannot be blank"); 
 return false; 
 } 
}


