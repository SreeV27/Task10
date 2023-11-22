<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <title>Age Calculator</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         Get user & his mother date of birth. show users age & At what age his mother delivered him. Tell him how many days are remaining for his & his mother's birthday.
         <form action="5_Age_calculator.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 " method="post">
            <label for="userDob">Enter user DOB:</label><br>
            <input  class="border-0" type="date" id="userDob" name="userDob"><br>
            <label for="motherDob">Enter your mother's DOB:</label><br>
            <input  class="border-0" type="date" id="motherDob" name="motherDob"><br>
            <input  class="border-0 mt-3" type="submit"  name="submit" value="Submit">
         </form>
         <cfif structKeyExists(form, "submit")>
         <cfset local.myComponent = createObject("component","cfc/5_Age_calculator")>
         <cfset local.result = local.myComponent.age(#form.userDob#,#form.motherDob#)>
         </cfif>
      </div>
   </body>
</html>