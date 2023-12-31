<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <title>Cookie</title>
   </head>
   <body>
      <div class=" p-5  text-center ">
         Create a web page that will have one submit button. When submitted, the page will post to self. 
         Create a cookie named 'VisitsCounter' and every time the submit button is clicked and the page is posted, the 'VisitsCounter' should be increased by 1 and the increased value is shown on the page.
      </div>
      <center>
      <div class="mt-5">
         <form action="19_CF_Cookie.cfm" method="post">
            <button name="submit" >Submit</button>
        </form>
        <cfif structKeyExists(form, "submit")>
            <cfinvoke component="cfc/19_CF_Cookie" method="visitCounting" returnvariable="result"></cfinvoke>
            <cfoutput><br>The number of times the page get visit is : #result#</cfoutput>
        </cfif>
        
      </div>
      <center>      
   </body>
</html>