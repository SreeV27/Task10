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
      <link href="style/common.css" rel="stylesheet">
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
         <cfif  structKeyExists(form,"submit") >
         <cfset local.myComponent = createObject("component","cfc/12_nth_row_of_Query")>
         <cfset local.result=local.myComponent.fetchAllData()>
         <cfset local.fecthSpeficdata=local.myComponent.fetchSpecificRow(#form.number#)>
         <center>
            <div>
               <table class="mt-2">
                  <tr>
                     <!-- Display column headers -->
                     <th>First Name</th>
                     <th>Last Name</th>
                     <!-- Add more columns as needed -->
                  </tr>
                  <cfoutput>
                     <cfloop query="local.result">
                        <tr>
                           <!-- Display values from the query -->
                           <td>#local.result.firstname#</td>
                           <td>#local.result.lastname#</td>
                           <!-- Add more columns as needed -->
                        </tr>
                     </cfloop>
                  </cfoutput>
               </table>
               <table class="mt-2">
                  <tr>
                     <!-- Display column headers -->
                     <th>First Name</th>
                     <th>Last Name</th>
                     <!-- Add more columns as needed -->
                  </tr>
                  <cfoutput>
                     <cfloop query="local.fecthSpeficdata">
                        <tr>
                           <!-- Display values from the query -->
                           <td>#local.fecthSpeficdata.firstname#</td>
                           <td>#local.fecthSpeficdata.lastname#</td>
                           <!-- Add more columns as needed -->
                        </tr>
                     </cfloop>
                  </cfoutput>
               </table>
            </div>
         </center>
         </cfif>
      </div>
   </body>
</html>