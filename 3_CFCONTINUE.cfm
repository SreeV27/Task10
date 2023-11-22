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
      <title>Task 3</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         Create a page with text box & submit button. Input for the text box is "3,8,9,11,12"
         While click on submit, result page should show numbers divided by 3. So the result      must be 3,9,12. Should use cfcontinue in the appropriate place.
         <form  action="3_CFCONTINUE.cfm" class="mt-5 border " method="post">
            <label for="number">Enter the numbers:</label>
            <input type="text" name="number" id="number"><br>
            <span id="numberError"></span><br>
            <button  id="submit" class="border-0 mt-3"  type="submit" value="submit">submit</button>
         </form>
         <cfif structKeyExists(form, "number")>
         <cfset myComponent = createObject("component","cfc/3_CFCONTINUE")>
         <cfset result = myComponent.dividedByThree(#form.number#)>        
         </cfif>
      </div>
   </body>
</html>