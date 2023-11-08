function validateEmail(){

    var mail=$("#email").val();
    var mailError=$("#emailError")
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


function validateCaptcha(){

   
    var captcha = $("#captcha").val();
    var captchaError = $("#captchaError");
    if (captcha == captchaText) {
        captchaError.text("");
        return true; 
    }


    else{
        captchaError.text("Invalid captcha");
        return false; 
    }

}

function validateForm(){


    if(validateEmail() && validateCaptcha()){
      alert('Email Address successfully subscribe our newsletter')
        return true;
        
        
    }
    else{
        event.preventDefault(); 


    }


    
}


