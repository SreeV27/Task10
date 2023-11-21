<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/common.css">
      <title>Word Count</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         <cfif structKeyExists(form, "sessionText")>
         <!-- Use the sessionText data as needed -->
         <cfset receivedText = trim(form.sessionText)>
         <cfinvoke  component="cfc/tagColud" method="displayValues" returnvariable="returnValue">
            <cfinvokeargument  name="text"  value="#receivedText#">
         </cfinvoke>
       
        <center>
            <table>
               <thead>
                  <th>Text</th>
                  <th>Count</th>              
               </thead>
               <tbody>
                <cfoutput>
                  <cfloop collection="#returnValue#" item="word">
                     <tr>
                       <td>#word#</td>
                       <td>#returnValue[word]#</td>
                     </tr>
                   </cfloop>
                </cfoutput>
               </tbody>
            </table>
         <cfoutput>
            
           <form class="mt-3" action="25_display_count_color.cfm" method="post">
            <!--- Convert the structure to a JSON string using serializeJSON --->
               <cfset jsonString = serializeJSON(returnValue)>

               <!--- Output the JSON string in an input field --->
               <input type="text" name="jsonInput" value="#htmlEditFormat(jsonString)#">
            <input type="submit" name="nxtPage" id="nxtPage" value="Next Page">
           </form>
         </cfoutput>
            <center>
         </cfif>
      </div>
   </body>
</html>