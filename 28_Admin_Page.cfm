<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     
      <script src="script/28_Simple_CMS.js"></script>
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
      <!-- Bootstrap JS -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
      <link href="style/welcome.css" rel="stylesheet">
      <link href="style/common.css" rel="stylesheet">
      <title>Admin</title>
   </head>
   <body>
      <cfif session.login>
         <div class="navbar d-flex justify-content-end">
            <div class="logout me-5">
               <a href="28_Simple_CMS_Index.cfm">Logout</a>
            </div>
         </div>
         <div class=" pt-5 text-center">
            <!-- Button trigger modal -->
            <button type="button" id="add" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Add Page
            </button>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
               <div class="modal-dialog" role="document">
                  <div class="modal-content">
                     <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Page Form</h5>
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
                        <button id="save" type="button" class="btn btn-primary" >Save</button>
                     </div>
                  </div>
               </div>
            </div>
            <cfinvoke  component="cfc/28_Simple_CMS" method="fetchPageDetails" returnvariable="returnValue">
            </cfinvoke>
            <cfif returnValue.recordCount gt 0>
               <!-- Display the results -->
               <center>
                  <table class="mt-3">
                     <tr>
                        <th  class="d-none">id</th>
                        <th>Page Name</th>
                        <th>Description</th>
                        <th>Edit</th>
                        <th>Delete</th>
                     
                     </tr>
                     <cfoutput>
                        <cfloop query="returnValue">
                           <tr>
                              <td  class="d-none">#returnValue.id#</td>
                              <td>#returnValue.pagename#</td>
                              <td>#returnValue.pagedescription#</td>
                              <td>
                                 <button  class="edit border-0 bg-white" data-pageid="#returnValue.id#"> 
                                 <span class="material-symbols-outlined"  >
                                 edit
                                 </span>
                                 </button>
                              </td>
                              <td><button class="border-0 bg-white" onclick="deleteRow(this)">
                                 <span class="material-symbols-outlined">
                                 delete
                                 </span>
                                 </button>
                              </td>
                             
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