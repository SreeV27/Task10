<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/1_CFIF_ELSEIF_ELSE.css">
      
      <title>Word Count</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
      <p class="px-5"> Highlight search keyword:
        You have variable with content “the quick brown fox jumps over the lazy dog”
        Create a page with text box & submit submit button. If you user gave “the” as input, then you need to show the result as,Found the key word in 2 times - the quick brown fox jumps over the lazy dog. if input is dog then result should be,Found the key word in 1 time - the quick brown fox jumps over the lazy dog
    </p>
       
         <form action="13_Highlight_search_keyword.cfm" method="post" class="mt-5 border ">
            <label for="word">Enter keyword to search</label><br>
            <input class="mt-3" type="text" name="word" id="word" ><br>
            
            <input class="mt-3"   type="submit" id="submit" name="submit" value="submit">
         </form>
         <cfif  structKeyExists(form,"word")>
         <cfset myComponent = createObject("component","cfc/13_Highlight_search_keyword")>
         <cfset result=myComponent.wordSearching(#form.word#)>
         </cfif>
      </div>
   </body>
</html>