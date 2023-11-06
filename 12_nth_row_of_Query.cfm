<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/1_CFIF_ELSEIF_ELSE.css">
      <script src="script/12_nth_row_of_Query.js">  </script>
      <title>Query</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         In SQL create a table with firstname & last name columns. insert 10 records into that table. 
         There is no primary key & numberic column in this table. Create a page with text box & submit button.  
         User can enter numeric value less than 10. While click on submit, you should show all data from table 
         as well as show Query's nth row first name column without looping. Here n is value of the user input.
         <form action="12_nth_row_of_Query.cfm" method="post" class="mt-5 border ">
            <label for="number">Enter a number (ranges from 1-10)</label><br>
            <input class="mt-3" type="text" name="number" id="number" onblur="myVaidation()"><br>
            <span id="numberError"></span><br>
            <input class="mt-3"   type="submit" id="submit" name="submit" value="submit">
         </form>
         <cfif  structKeyExists(form,"number")>
         <cfset myComponent = createObject("component","cfc/12_nth_row_of_Query")>
         <cfset result=myComponent.dbProcessing(#form.number#)>
         </cfif>
      </div>
   </body>
</html>