<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <title>Multiply Function</title>
   </head>
   <body>
      <div class=" p-5  text-center ">
         Create a cfm page with a function named 'multiply'. It should give results for the following function calls. 
      </div>
      <center>
         <table class="border w-25  text-center">
            <tr class="border w-50">
               <th class="border">Question</th>
               <th class="border">Answer</th>
            </tr>
            <tr class="border">
               <td class="border">
                  <span>  multiply(1,2)</span>
               </td>
               <td>
                  <cfset local.myComponent = createObject("component","cfc/11_Multiply_function")>
                  <cfset local.res1=local.myComponent.multiply(1,2)>
                  <cfoutput> #local.res1#</cfoutput>
               </td>
            </tr>
            <tr class="border">
               <td class="border">
                  <span>  multiply(1,2,3)</span>
               </td>
               <td>
                  <cfset local.myComponent = createObject("component","cfc/11_Multiply_function")>
                  <cfset local.res2=local.myComponent.multiply(1,2,3)>
                  <cfoutput> #local.res2#</cfoutput>
               </td>
            </tr>
            <tr class="border">
               <td class="border">
                  <span>  multiply(1,2,3,4)</span>
               </td>
               <td>
                  <cfset local.myComponent = createObject("component","cfc/11_Multiply_function")>
                  <cfset local.res3=local.myComponent.multiply(1,2,3,4)>
                  <cfoutput> #local.res3#</cfoutput>
               </td>
            </tr>
         </table>
      </center>
   </body>
</html>