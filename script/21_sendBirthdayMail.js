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
