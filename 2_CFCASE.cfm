<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/1_CFIF_ELSEIF_ELSE.css">
      <script src="script/1_CFIF_ELSEIF_ELSE.js">  </script>
      <title>Task 2</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         Create a page with text box & submit button. Input for the text box is any number between 1 to 5. Based upon the user input, you should show the corresponding string. 5 is Very good. 4 is good. 3 is fair. 1 & 2 is Ok. Use cfcase to do this functionality.
         <form  action="2_CFCASE.cfm" class="mt-5 border " method="post">
            <label for="number">Enter a number:</label>
            <input type="text" name="number" id="number"><br>
            <span id="numberError"></span><br>
            <button  id="submit" class="border-0 mt-3"  type="submit" value="submit">submit</button>
         </form>
         <cfif structKeyExists(form, "number")>
         <cfset myComponent = createObject("component","cfc/2_CFCASE")>
         <cfset result = myComponent.grading(#form.number#)>
         <cfif result =="5">
            <cfoutput>
               <p class="vrygood fs-2">Very Good</p>
            </cfoutput>
            <cfelseif  result =="4">
            <cfoutput>
               <p class="good fs-2">Good</p>
            </cfoutput>
            <cfelseif  result =="3">
            <cfoutput>
               <p class="fair fs-2">Fair</p>
            </cfoutput>
            <cfelseif  result =="2" || result == "1">
            <cfoutput>
               <p class="ok fs-2">Ok</p>
            </cfoutput>
            <cfelse>
            <cfoutput>
               <p class="error fs-2">Please Enter a Value Between 1 and 5</p>
            </cfoutput>
         </cfif>
         </cfif>
      </div>
   </body>
</html>