<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/common.css">
      <link rel="stylesheet" href="style/25_display_count_color.css">
      <title>Display</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         <p class="px-5"> 
         </p>
      </div>
      <cfif  structKeyExists(form, "jsonInput")>
      <cfset jsonInput = trim(form.jsonInput)>
      <!--- Deserialize the JSON string --->   
      <cfset jsonObject = deserializeJSON(jsonInput)>
      <cfinvoke  component="cfc/tagColud" method="sortStruct" returnvariable="returnValue">
         <cfinvokeargument  name="text"  value="#jsonObject#">
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
                  <tr class="text-#returnValue[word]#">
                     <td>#word#</td>
                     <td>#returnValue[word]#</td>
                  </tr>
               </cfloop>
            </cfoutput>
         </tbody>
      </table>
      <cfoutput>
         <form class="mt-3" action="#session.currentURL#" method="post">           
            <input type="submit" name="nxtPage" id="nxtPage" value="Exit">
         </form>
      </cfoutput>
      </cfif>
   </body>
</html>