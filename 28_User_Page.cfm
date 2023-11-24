<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="script/28_Simple_CMS.js"></script>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
      <!-- Bootstrap JS -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      <link href="style/welcome.css" rel="stylesheet">
      <link href="style/common.css" rel="stylesheet">
      
      <title>User</title>
   </head>
   <body>
      <cfif session.login>
         <div class="navbar d-flex justify-content-end">
            <div class="logout me-5">
               <a href="28_Simple_CMS_Index.cfm">Logout</a>
            </div>
         </div>
         <div class=" pt-5 text-center">
            <cfinvoke  component="cfc/28_Simple_CMS" method="fetchPageDetails" returnvariable="returnValue">
            </cfinvoke>

            <div class="modal fade" id="exampleModalUser" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
               <div class="modal-dialog" role="document">
                  <div class="modal-content">
                     <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Page Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">
                        <input type="text" id="pageName" name="pageName" placeholder="Page Name" required>
                        <br>
                        <br>
                        <textarea  id="pageDescription" name="pageDescription" placeholder="Page Description" rows="4" col="15"  required></textarea>
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        
                     </div>
                  </div>
               </div>
            </div>
            <cfif returnValue.recordCount gt 0>
               <!-- Display the results -->
               <center>
                  <table class="mt-3">
                     <tr>
                        <th class="d-none">id</th>
                        <th>Page Name</th>
                        
                       
                     </tr>
                     <cfoutput>
                        <cfloop query="returnValue">
                           <tr>
                              <td class="d-none">#returnValue.id#</td>
                              <td><button   class="view border-0 bg-white" data-pageid="#returnValue.id#">#returnValue.pagename#</button></td>
                             
                          
                           </tr>
                        </cfloop>
                     </cfoutput>
                  </table>
               </center>
            </cfif>
         </div>
         <cfelse>
         <cflocation 
            url = "28_Simple_CMS_Index.cfm" 
            >
      </cfif>
   </body>
</html>