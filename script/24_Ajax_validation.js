$(document).ready(function () {
    let submitBtn = document.querySelector("#submit");
    let checkBox = document.querySelector("#emailChecked");
    submitBtn.disabled = true;
    checkBox.disabled = true;
 });
 
 
 function validateEmail() {
    let checkBox = document.querySelector("#emailChecked");
    var mailError = $("#mailError");
    var mail = $("#mail").val().trim();
    var emailRegex = /[a-z0-9._]+@[a-z]+\.[a-z]{2,4}$/;
    if (emailRegex.test(mail)) {
       mailError.text("")
       checkBox.disabled = false;
       return true;
    } else {
       mailError.text("Invalid email address")
       checkBox.disabled = true;
       return false;
 
    }
 
 }
 
 function checkBoxChanged() {
 
    var emailCheckedElement = document.getElementById('emailChecked');
    if (emailCheckedElement.checked) {
       checkForAnyPreviousValue();
    }
 }
 
 function checkForAnyPreviousValue() {
 
    var name = $("#name").val();
    var mail = $("#mail").val();
 
    $.ajax({
 
       // Our sample url to make request 
       url: 'cfc/24_Ajax_validation.cfc?method=checkForAnyPreviousValue',
 
       // Type of Request
       type: "POST",
       data: {
          name: name,
          mail: mail
 
       },
 
       success: function (data) {
 
          var jsonData = JSON.parse(data);
 
          // Accessing properties of the deserialized JSON object
          var status = jsonData.status;
 
          // Printing values to the console or wherever you need
          console.log("Status: " + status);
 
 
          if (status == true) {
             alert("Already Subscribed");
 
          } 
          else{
            let submitBtn = document.querySelector("#submit");
           
            submitBtn.disabled = false;
           

          }
 
       },
       error: function (jqXHR, textStatus, errorThrown) {
          console.error("AJAX Error: " + textStatus, errorThrown);
       }
 
    });
 }
 

 function formSubmit(){
   var name = $("#name").val();
    var mail = $("#mail").val();


             $.ajax({
 
 
                url: 'cfc/24_Ajax_validation.cfc?method=addSubscriber',
 
 
                // Type of Request
                type: "POST",
                data: {
                   name: name,
                   mail: mail
 
                },
                success: function (data) {
                   // let result=$(data).find("boolean").text();
                   let result = $(data).find("boolean").attr("value");
 
                   // console.log(result);
                   if (result) {
                      alert("Subscribed Successfully");
                   }
 
                },
                error: function (jqXHR, textStatus, errorThrown) {
                   console.error("AJAX Error: " + textStatus, errorThrown);
                }
 
             });

 }