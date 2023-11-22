<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="script/17_print_numbers_using_loop.js"></script>
      <title>Print Numbers using loop</title>
   </head>
   <body>
      <div class=" p-5  text-center ">
         <p class="px-5"> 
            Create a page with text box & submit button. User can enter numeric value in the text box & click the submit button. If user entered non numeric character, page should validate user input using JS.
            While clicking on submit button, page should show up 1 to given input number, odd numbers should be in blue, even numbers should be in green.
         </p>
         <form action="17_print_numbers_using_loop.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 " method="post">
            <label for="number">Enter a number:</label>
            <input type="text" name="number" id="number" onblur="validateNumber()"><br>
            <span id="error"></span><br>
            <input  class="mt-3" type="submit" id="submit" name="submit"/>
         </form>
         <cfif structKeyExists(form,"number")>
         <cfloop from="1" to="#form.number#" index="i">
            <cfset local.myComponent=createObject("component","cfc/17_print_numbers_using_loop")>
            <cfset local.result =local.myComponent.evenOrOdd(i)>
            <cfif local.result is true>
               <span class="text-success fs-2">
                  <cfoutput>#i# </cfoutput>
               </span>
               <cfelse>
               <span class="text-primary fs-2">
                  <cfoutput>#i# </cfoutput>
               </span>
            </cfif>
         </cfloop>
         </cfif>
      </div>
   </body>
</html>