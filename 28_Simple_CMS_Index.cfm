<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/common.css">
      <title>Login</title>
   </head>
   <body>
      <cfset session.login=false>
      <div class=" pt-5 text-center">
         <p class="px-5"> 
            You need to create a very basic simple CMS. It will have 2 parts.
            Admin part, login enabled. So users who have admin or editor roles can login into
            this area & can see list of pages, add/edit & delete pages. User side : 
            Page list as menu, while clicking on it will show page name & description.
         </p>
      </div>
      <form action="28_Simple_CMS_Index.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 "  method="post" >
         <center>
            <ul>
               <li>
                  <label for="userName">User Name</label>            
                  <input type="text" id="userName" name="userName">
                  </textarea>
               </li>
               </li>
               <li class="mt-3">
                  <label for="password">Password</label>             
                  <input class="ms-2" type="password" id="password" name="password" 
               </li>
               <li class="mt-3">
               </li>
               <li class="mt-3">
                  <span class="text-danger" id="errorMsg"></span>
               </li>
               <li class="mt-3">
                  <input type="submit" name="submit" id="submit" >
               </li>
            </ul>
         </center>
      </form>
      <cfif structKeyExists(form, "password")>
      <cfinvoke  component="cfc/28_Simple_CMS" method="login" returnvariable="returnValue">
         <cfinvokeargument  name="userName"  value="#form.userName#">
         <cfinvokeargument  name="password"  value="#form.password#">
      </cfinvoke>
      <cfif returnValue>
         <script>
            document.getElementById("errorMsg").innerHTML = "";
            <cfset session.login=true>           
         </script>
         <cfelse>
         <script>
            <cfset session.login=false>
               document.getElementById("errorMsg").innerHTML = "Username and Password Mismatch";
         </script>
      </cfif>
      </cfif>
   </body>
</html>