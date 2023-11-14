function changeBackgroundColor(liElement) {
  // Change the background color to your desired color
  // Reset background color for all li elements
  var allLiElements = document.querySelectorAll('.text li');
  allLiElements.forEach(function (li) {
     li.style.backgroundColor = '';
  });

  // Change background color for the clicked li element
  liElement.style.backgroundColor = '#FFF7C0';
}
$(document).ready(function () {
   $("#calender").datepicker({
       dateFormat: 'dd-mm-yyyy',
       showButtonPanel: false,
       changeMonth: true,
       changeYear: true,
       onSelect: function (dateText, inst) {
           // Parse the selected date using a date object
           var selectedDate = $(this).datepicker('getDate');

           // Check if the date is valid
           if (selectedDate !== null) {
               // Extract day, month, and year
               var day = ('0' + selectedDate.getDate()).slice(-2);
               var month = ('0' + (selectedDate.getMonth() + 1)).slice(-2);
               var year = selectedDate.getFullYear();

               // Update MM, DD, YYYY fields
               $("#date").val(day);
               $("#month").val(month);
               $("#year").val(year);
               $("#calender").val("");
           }
       }
   });
});


function validatePosition() {

  var position = $("#position").val().trim();
  var len = position.length;
  var positionError = $("#positionError");
  if (len > 0) {
     positionError.text("")
     return true;


  } else {
     positionError.text("fill the requried field");
     return false;


  }

}

function validateRelocate() {

  var relocateError = $("#relocateError");
  var relocateValue = document.querySelector('input[name="relocate"]:checked');
//   var relocateResult=$('#relocateResult');


  var relocateResultInput = $("#relocateResult");
  var value = $('input[name="relocate"]:checked').val();

  // Set the value to the relocateResult input field


  // Check if an option is selected
  if (relocateValue) {
     relocateError.text("");
     $("#relocateResult").val(value);
   
     
   
     return true;

  } else {
     relocateError.text("fill the requried field");
     return false;

  }

}


function validateStartDate() {
  var startDateError = $("#startDateError");
  var month = $("#month").val().trim();
  var monthlen = month.length
  var date = $("#date").val().trim();
  var datelen = date.length
  var year = $("#year").val().trim();
  var yearlen = year.length

  if (monthlen > 0 && datelen > 0 && yearlen > 0) {
     startDateError.text("")
     return true;


  } else {
     startDateError.text("fill the requried field");
     return false;


  }

}

function validateName() {
  var nameError = $("#nameError");
  var fname = $("#fname").val().trim();
  var fnamelen = fname.length;
  var lname = $("#lname").val().trim();
  var lnamelen = lname.length;

  if (fnamelen > 0 && lnamelen > 0) {
     nameError.text("");
     return true;

  } else {
     nameError.text("fill the requried field");
     return false;

  }

}

function validateEmail() {

   var mailError = $("#mailError");
   var mail = $("#mail").val().trim();
   var emailRegex = /[a-z0-9._]+@[a-z]+\.[a-z]{2,4}$/;
   if(emailRegex.test(mail))
   {
      mailError.text("")
       return true;
   }
   else{
      mailError.text("Invalid email address")
      return false;

   }

}




function validatePhno() {
   var noRegex = /^\d+$/;
  var phnoError = $("#phnoError");
  var tel1 = $("#tel_1").val().trim();
  var lentel1 = tel1.length;
  var tel2 = $("#tel_2").val().trim();
  var lentel2 = tel2.length;
  var tel3 = $("#tel_3").val().trim();
  var lentel3 = tel3.length;

  if (lentel1 > 0 && lentel2 > 0 && lentel3 > 0 && lentel1 ==3 && lentel2 ==3 && lentel3 ==4 && noRegex.test(tel1) && noRegex.test(tel2) && noRegex.test(tel3))
      {

      phnoError.text("");
      return true;

   } 
  else 
   {
      phnoError.text("Format doesn't match");
      return false;

   }

}

function validateDollarAndCent(){
   var noRegex = /^\d+$/;
   var salaryError=$("#salaryError");
   var dollar=$("#dollar").val().trim()
   var cents=$("#cent").val().trim()
   if(noRegex.test(dollar) && noRegex.test(cents))
   {
      salaryError.text("");
      return true;
   }
   else
   {
      salaryError.text("Salary should be in digits");
      return false;

   }

}


function valiateForm() {

  var isvalidatePosition = validatePosition();
  var isvalidateRelocate = validateRelocate();
  var isvalidateStartDate = validateStartDate();
  var isvalidateName = validateName();
  var isvalidateEmail = validateEmail();
  var isvalidatePhno = validatePhno();
  var isvalidateDollarAndCent= validateDollarAndCent();

  if (isvalidatePosition && isvalidatePosition && isvalidateStartDate && isvalidateName && isvalidateEmail && isvalidatePhno && isvalidateDollarAndCent) 
  {

   // alert('success');
     return true;
  } 
  else 
   {
     event.preventDefault();
     return false;

   }

}