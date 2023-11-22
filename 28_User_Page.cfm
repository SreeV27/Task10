<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link href="style/welcome.css" rel="stylesheet">
      <title>User</title>
   </head>
   <body>
      <cfif session.login>
         <div class="navbar">
            <div class="logout">
               <a href="28_Simple_CMS_Index.cfm">Logout</a>
            </div>
         </div>
         <div class=" pt-5 text-center">
            <p class="px-5"> 
               Hiii User
            </p>
         </div>
         <cfelse>
         <cflocation 
            url = "28_Simple_CMS_Index.cfm" 
            >
      </cfif>
   </body>
</html>