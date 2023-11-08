<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="script/20_Captcha_validation.js"></script>
      <title>Captcha Validation</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         <p class="px-5"> 
            Create a page with two textboxes (captcha and email). Create captcha using cfimage tag.To validate the fields captcha(text validation) and email(email validation)using server side validation.Once user entered the captcha  & clicked on submit,then check the entered text is equal to captcha text.If correct then Page should show the message(Email Address successfully subscribe our newsletter).
         </p>
      </div>
      <center>
         <form action="20_Captcha_validation.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 " method="post" onsubmit="validateForm()">
            <input type="text" name="email" id="email"  onblur="validateEmail()"  placeholder="enter mail address"><br>
            <span id="emailError"></span><br>
            <input class="mt-3 mb-2" type="text" name="captcha" id="captcha" placeholder="enter captcha"><br>
            <span id="captchaError"></span><br>
            <cfset characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789">
            <cfset captchaText = "">
            <cfset length = 6>
            <cfloop from="1" to="#length#" index="i">
               <cfset captchaText &= mid(characters, randRange(1, len(characters)), 1)>
            </cfloop>
            <cfscript >
               cfimage(action="captcha", text=captchaText, difficulty="medium", fontSize="18");
            </cfscript><br>
                <script>
                 var captchaText = "<cfoutput>#captchaText#</cfoutput>";
                </script>
                    
            <input class="mt-3" type="submit" name="submit" >
         </form>
        
      </center>
   </body>
</html>