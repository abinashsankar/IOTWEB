$(document).ready(function () {
        $("#submit").on("click",function () {
            var componet_id = $("#model").val();//id of country select box of index.jsp page;
            var component_count = $("#count").val();//coming value from city.jsp page.
            
            // check if country select box have blank or null value.
            if (componet_id === ""||componet_id===null)
            {
                alert("All fields are mandatory.");
               
            }
            else if(component_count<1){
                alert("count less then 1");
            }
            
            else
            {
               alert("fdas");
               
                $.ajax({
                    url:"../JSP/compreq.jsp",
                    data:{componet_id :componet_id ,component_count:component_count},//sending request to DisplayText.java page.
                    success:function(data)
                    {
                        alert("Request sent");
                        $("#form").trigger("reset");//this will reset the form.
                    }
                });
            }
        });
    });


