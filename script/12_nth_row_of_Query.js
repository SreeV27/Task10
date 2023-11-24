
function myVaidation(){

   var numberError = $('#numberError');
   

   var num = parseFloat(document.getElementById("number").value); // Get the value of the input field as a number

   if (isNaN(num) || num < 1 || num > 10) {
     numberError.text("Format doesn't match.");
     return false;
   } else {
     numberError.text(""); // Clear any previous error message
     return true;
   }
}

$(document).ready(function () {
  
   var numberError = $('#numberError');

  $("#submit").click(function(){

     if(myVaidation()){
        
      return true;
     }
    
     else{
      numberError.text("Format doesn't match.");
      return false;
     }
  
  
  });
});
