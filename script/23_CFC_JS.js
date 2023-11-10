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

  // Check if an option is selected
  if (relocateValue) {
     relocateError.text("");
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
  var lenmail = mail.length;
  if (lenmail > 0) {
     mailError.text("");
     return true;

  } else {
     mailError.text("fill the requried field");
     return false;

  }


}

function validatePhno() {
  var phnoError = $("#phnoError");
  var tel1 = $("#tel_1").val().trim();
  var lentel1 = tel1.length;
  var tel2 = $("#tel_2").val().trim();
  var lentel2 = tel2.length;
  var tel3 = $("#tel_3").val().trim();
  var lentel3 = tel3.length;

  if (lentel1 > 0 && lentel2 > 0 && lentel3 > 0) {

     phnoError.text("");
     return true;

  } else {
     phnoError.text("fill the requried field");
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

  if (isvalidatePosition && isvalidatePosition && isvalidateStartDate && isvalidateName && isvalidateEmail && isvalidatePhno) {
     return true;
  } else {

     event.preventDefault();
     return false;

  }

}