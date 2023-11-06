<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <title>Task 3</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
      
         Show below details in a page Today's date, current Month in numeric, current month in word, Last friday date, Last day of month. Show Last 5 days date & day
         Sunday should be red, Monday - green,Tuesday - orange, Wednesday - yellow, Thursday - bold black, Friday - blue, Saturday - bold red
         <form action="4_Date_with_colours.cfm"  method="post">
            <input  class="border-0 mt-3" type="submit"  name="submit" value="Click Me!">
         </form>
         <cfif structKeyExists(form, "submit")>
         <cfinvoke component="cfc/4_Date_with_colours" method="dateFormatting">
         </cfif>
      </div>
   </body>
</html>