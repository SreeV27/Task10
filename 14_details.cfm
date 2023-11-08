<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/common.css">
      <title>Image Details</title>
   </head>
   <body>
      <cfset imageFileName = url.path>
      <!---Here path is termed as image name--->
      <cfset dsn ="mydb">
      <cfquery name="myquery" datasource="#dsn#">
         SELECT * FROM dbo.tb_image_details WHERE image_name ='#imageFileName#';
      </cfquery>
      <!---
         <cfdump var="#imagePath#" abort>    --->
      <center>
         <table class="mt-5 ">
            <tr >
               <th>Name</th>
               <th>Description</th>
               <th>Image</th>
            </tr>
            <cfoutput >
               <tr>
                  <td>#myquery.name#</td>
                  <td>#myquery.description#</td>
                  <td> 
                     <a href="14_details.cfm?path=#myquery.image_name#" <button class=" p-0 border-0">
                     <img src="/Task10/assets/#myquery.image_name#"  alt="My Image">
                     </button>
                     </a>
                  </td>
               </tr>
            </cfoutput>
         </table>
         <a  href="14_Upload_validation_and_Image_function.cfm">
         <button class="mt-4 ">Exit</button>
         </a>
      </center>
   </body>
</html>