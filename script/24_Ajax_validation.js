$(document).ready(function(){
    let submitBtn = document.querySelector("#submit");
    let checkBox=document.querySelector("#emailChecked");
    submitBtn.disabled = true;
    checkBox.disabled = true;
});


function validateEmail() {
    let checkBox=document.querySelector("#emailChecked");
    var mailError = $("#mailError");
    var mail = $("#mail").val().trim();
    var emailRegex = /[a-z0-9._]+@[a-z]+\.[a-z]{2,4}$/;
    if(emailRegex.test(mail))
    {
       mailError.text("")
       checkBox.disabled = false;
        return true;
    }
    else{
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
   
    var name=$("#name").val();
    var mail=$("#mail").val();
    var requestData = {
        name: name,
        mail: mail
    };
    $.ajax({

        // Our sample url to make request 
        url:'cfc/24_Ajax_validation.cfc?method=checkForAnyPreviousValue',
            

        // Type of Request
        type: "post",
        contentType: 'application/json', // Set content type to JSON
        data: JSON.stringify(requestData), // Serialize the data
            
              // request is ok 
        // success: function (data) {
        //     let x = JSON.stringify(data);
        //     console.log(x);
        // },

        // // Error handling 
        // error: function (error) {
        //     console.log(`Error ${error}`);
        // }
    });
}