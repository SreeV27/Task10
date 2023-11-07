<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <title>Query Function</title>
   </head>
   <body>
      <div class=" p-5  text-center ">
         <p class="px-5"> 
            Need to create a query data type variable manually with out using cfquery tag. Need to use neccesary query functions.
            Query will have 3 columns
           ( ID - Number, 
            Name - String,
            email	- String)
            This Query variable should have 3 rows of data.
         </p>
         <center>
           <cfset myQuery = queryNew("ID,Name,Email", "integer,varchar,varchar")>

                <!-- Add data to the query -->
                <cfset queryAddRow(myQuery, 3)>

                <!-- Set data for the first row -->
                <cfset querySetCell(myQuery, "ID", 1, 1)>
                <cfset querySetCell(myQuery, "Name", "Sreenath", 1)>
                <cfset querySetCell(myQuery, "Email", "sree123@gmail.com", 1)>

                <!-- Set data for the second row -->
                <cfset querySetCell(myQuery, "ID", 2, 2)>
                <cfset querySetCell(myQuery, "Name", "Manu", 2)>
                <cfset querySetCell(myQuery, "Email", "manu123@gmail.com", 2)>

                <!-- Set data for the third row -->
                <cfset querySetCell(myQuery, "ID", 3, 3)>
                <cfset querySetCell(myQuery, "Name", "varun", 3)>
                <cfset querySetCell(myQuery, "Email", "varunms@gmail.com", 3)>





        <table class="border">
                <tr>
                    <th  class="p-2 ">Id</th>
                    <th  class="p-2 ">Name</th>
                    <th  class="p-2 ">Email</th>
                   
                </tr>
                <cfoutput query="myQuery">
                    <tr>
                        <td  class="p-2 ">#myQuery.ID#</td>
                        <td  class="p-2 ">#myQuery.Name#</td>
                        <td  class="p-2 ">#myQuery.Email#</td>
                       
                    </tr>
                </cfoutput>
            </table>






         </center>
      </div>
   </body>
</html>