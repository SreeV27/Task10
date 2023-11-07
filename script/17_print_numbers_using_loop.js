function validateNumber(){

        var noRegex = /^\d+$/;
        var error=$('#error');
        var num = parseFloat(document.getElementById("number").value); 

        if (!noRegex.test(num)) {
            error.text("please enter a number.");
            return false;
         } else {
            error.text(""); // Clear any previous error message
            return true;
         }





}


$(document).ready(function(){




    var error=$('#error');

    $("#submit").click(function(){

        if(validateNumber()){
            error.text("");
            return true;


        }

        else{
            error.text("please enter a number.");
            return false;

        }


    });



});