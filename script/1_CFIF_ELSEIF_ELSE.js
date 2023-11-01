$(document).ready(function () {
    $('#number').on('input',function(){
        var numberError = $('#numberError');
        var noRegex = /^\d+$/;
        var num = $(this).val();

        if (!noRegex.test(num)) {
            numberError.text("please enter a number.");
         } else {
            numberError.text(""); // Clear any previous error message
         }


    });


  
});