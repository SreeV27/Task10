<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <title>Print Data</title>
   </head>
   <body>
      <div class=" p-5  text-center ">
         <p class="px-5"> 
            Write a CF program to print data by 3 rows and 3 columns
         </p>
         <center>
            <cfparam name="value" default=1>
            <table border="1" class="bg-success-subtle">
               <cfloop from="1" to="3" index="row">
                  <tr>
                     <cfset  temp=value>
                     <cfloop from="1" to="3" index="col">
                        <td class="p-3 ">
                           <cfoutput>#temp#</cfoutput>
                        </td>
                        <cfset temp=temp + 3>
                     </cfloop>
                     <cfset value+=1>
                  </tr>
               </cfloop>
            </table>
         </center>
      </div>
   </body>
</html>