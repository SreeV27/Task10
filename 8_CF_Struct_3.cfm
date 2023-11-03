<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <title>Structure 3</title>
   </head>
   <body>
      <div class=" p-5 text-center ">
         Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
         Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also maintained in the structure.
         It means, if I submit a form with 'ColdFusion', 'super', then structure should have key as 'ColdFusion' & value as 'Super'.
         Now, If I enter 'php', 'good', then structure should have both ColdFusion, php along with their values.
         If I enter ColdFusion again, with different value, then the new value should replace the old value.
         CFDUMP the structure.
         <form action="8_CF_Struct_3.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 " method="post">
            <div>
               <label for="txtBox1">Key</label>
               <input type="text" name="txtBox1"><br>
            </div>
            <div class=" mt-3">
               <label for="txtBox2">Value</label>
               <input type="text" name="txtBox2"><br>
            </div>
            <input  class="border-0 mt-3" type="submit"  name="submit" value="Submit">           
         </form>
         <cfif  structKeyExists(form,"submit")>
            <cfset myComponent = createObject("component","cfc/8_CF_Struct_3")>
            <cfset result = myComponent.struct1(#form.txtBox1#,#form.txtBox2#)>
         </cfif>
      </div>
   </body>
</html>