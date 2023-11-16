<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/common.css">
      <title> ColdFusion_DB</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         <p class="px-5"> 
            ColdFusion & DB
         </p>
      </div>
      <center>
         <div>
            <form action="25_index.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 "  method="post" onsubmit="">
               <ul>
                  <li>
                     <label for="name">Enter the text</label><br>
                     <textarea id="text" name="text" rows="4" cols="30">
                        </textarea>
                     
                  </li>
                  
                  </li>
                  <li class="mt-3">
                     <input type="submit" name="submit" id="submit" onclick=insertIntoDb()>
                  </li>
                  <li class="mt-3">
                     <input type="submit" name="nxtPage" id="nxtPage" value="Next Page">
                  </li>
               </ul>
            </form>
         </div>
      </center>
      <script src="script/25_coldfusion_db.js"></script>
   </body>
</html>