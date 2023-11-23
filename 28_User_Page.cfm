<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link href="style/welcome.css" rel="stylesheet">
      <link href="style/common.css" rel="stylesheet">
      <title>User</title>
   </head>
   <body>
      <cfif session.login>
         <div class="navbar d-flex justify-content-end">
            <div class="logout me-5">
               <a href="28_Simple_CMS_Index.cfm">Logout</a>
            </div>
         </div>
         <div class=" pt-5 text-center">
            <cfinvoke  component="cfc/28_Simple_CMS" method="fetchPageDetails" returnvariable="returnValue">
            </cfinvoke>
            <cfif returnValue.recordCount gt 0>
               <!-- Display the results -->
               <center>
               <table class="mt-3">
                   <tr>
                     
                     <th class="d-none">id</th>
                       <th>Page Name</th>
                       <th>Description</th>
                       
                       <!-- Add more headers as needed -->
                   </tr>
                   <cfoutput>
                   
                   <cfloop query="returnValue">
                       <tr>
                        <td  class="d-none">#returnValue.id#</td>
                           <td>#returnValue.pagename#</td>
                           <td>#returnValue.pagedescription#</td>
                           
                           
                           <!-- Add more columns as needed -->
                       </tr>
                   </cfloop>
                  </cfoutput>
               </table>
            </center>
            </cfif>

         </div>
         <cfelse>
         <cflocation 
            url = "28_Simple_CMS_Index.cfm" 
            >
      </cfif>
   </body>
</html>