<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/common.css">
      <script src="script/21_sendBirthdayMail.js"></script>
      <title>Birthday Wishes</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         <p class="px-5"> 
            Create a birthday wishes page which contains the following fields.
            Birthday Baby Name: Text box
            His Email Id :	Text box
            Birthday Wishes: Text area
            Greeting image : File upload field
            While clicking on the submit, it should send greeting mail to the birthday guy's mail id. 
            Greeting images should be in attachment along with mail.
         </p>
      </div>
      <center>
         <form action="" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 " enctype="multipart/form-data"  method="post" onsubmit="">
            <div class="d-flex justify-content-center">
               <label for="name">Baby Name:</label>
               <input type="text" name="name" >
            </div>
            <div class="d-flex mt-3 justify-content-center">
               <label   for="email">Email address:</label>
               <input type="email" name="email" id="email" onblur="validateEmail()">             
            </div>
            <span class="text-danger"id="emailError"></span>
            <div class="d-flex mt-3 justify-content-center">
               <label  for="wishes">B'day Wishes:</label>
               <textarea  name="wishes" col="25" col="2"></textarea>
            </div>
            <div class="d-flex mt-3 justify-content-center">
               <label for="image">Greeting image:</label>
               <input class="w-37" type="file" name="image" accept=".png, .jpg, .jpeg">
            </div>
            <input class="mt-3" type="submit" name="submit" value="Send mail">
         </form>
         <cfif  structKeyExists(form,"name")>      
            <cfinvoke component="cfc/21_sendBirthdayMail" method="sendWish" fileupload="form.image">
               <cfinvokeargument name="name" value="#form.name#">
               <cfinvokeargument name="email" value="#form.email#">
               <cfinvokeargument name="wishes" value="#form.wishes#">           
            </cfinvoke>
         </cfif>
      </center>
   </body>
</html>