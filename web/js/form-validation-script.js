



$().ready(function(){
    
        
        // validate signup form on keyup and submit
        $("#register_form").validate({
            rules: {
                name: {
                    required: true,
                    minlength: 6
                },
                roll: {
                    required: true,
                    minlength: 8
                },
                mobile: {
                    required: true,
                    length: 10
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                }
                
            },
            messages: {                
                name: {
                    required: "Please enter a Full Name.",
                    minlength: "Your Full Name must consist of at least 6 characters long."
                },
                roll: {
                    required: "Please enter a Roll number.",
                    minlength: "enter correct"
                },
                mobile: {
                    required: "Please enter a Mobile number.",
                    minlength: "Your username must consist of 10 characters long."
                },
                password: {
                    required: "Please provide a password.",
                    minlength: "Your password must be at least 5 characters long."
                },
                confirm_password: {
                    required: "Please provide a password.",
                    minlength: "Your password must be at least 5 characters long.",
                    equalTo: "Please enter the same password as above."
                }
           
            },
            submitHandler: function (form) { // for demo
            alert('valid form');  // for demo
            return false;
        }
            
        });

      
    });
