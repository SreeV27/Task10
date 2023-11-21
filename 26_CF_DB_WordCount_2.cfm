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
      <cfset session.currentURL = "http://" & CGI.HTTP_HOST & CGI.SCRIPT_NAME />
      <div class=" pt-5 text-center">
         <p class="px-5"> 
            ColdFusion & DB
         </p>
      </div>
      <center>
         <div>
            <form action="26_CF_DB_WordCount_2.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 " enctype="multipart/form-data"  method="post" onsubmit="">
               <ul>
                  <li>
                     <label for="name">Upload a file</label>
                     <input type="file" id="myfile" name="myfile" accept=".txt, .doc">
                    
                  </li>
                  </li>
                  <li class="mt-3">
                     <input type="submit" name="submit" id="submit" onclick=insertIntoDb()>
                  </li>
                  <li class="mt-3">
                  </li>
               </ul>
             
            </form>

           
            <cfif structKeyExists(form,"submit")>

                <cfif structKeyExists(form,"myfile")>           
                    <cfinvoke component="cfc/26_CF_DB_WordCount_2" method="saveDoc" fileupload="form.myfile" returnvariable="result">
                    </cfinvoke>
                </cfif>
             
            <cfset myTagCloud = createObject("component", "cfc/26_CF_DB_WordCount_2").init(text=form.myfile)>  
            <cfset local.text=#form.text#>
            <!--- Output the structure --->
            <!--- <cfdump var="#myTagCloud#"  >--->
            <cfinvoke component="cfc.tagColud" method="insertIntoDb" returnvariable="returnValue">
               <cfinvokeargument  name="text"  value="#myTagCloud#">
            </cfinvoke>
            <cfoutput>
               <cfif returnValue>
                  <form action="25_display.cfm" method="post">
                     <input  type="hidden" name="sessionText" value="#local.text#">
                     <input type="submit" name="nxtPage" id="nxtPage" value="Next Page">                    
                 </form>
                
               </cfif>
            </cfoutput>
            </cfif>
         </div>
      </center>
      <script src="script/25_coldfusion_db.js"></script>
   </body>
</html>