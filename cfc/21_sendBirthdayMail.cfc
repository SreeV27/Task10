<cfcomponent>

    <cffunction name="sendWish" access="public">
       <cfargument name="name">
       <cfargument name="email">
       <cfargument name="wishes">
       <cfargument name="image">
       <cfargument  name="fileupload">

       <cfset destination=ExpandPath("/Task10/assets")>

         <cffile action = "upload" 
            fileField = "#arguments.fileupload#"
            destination = "#destination#"
            nameConflict = "MakeUnique"
            allowedextensions=".jpg, .jpeg, .png, .gif" >
         <cfset uploadedFileName = cffile.serverFile>
       <cfmail to="#arguments.email#"
          from="sreenath123@gmail.com"
          subject="Wishes"
          type="text"
          mimeattach="/Task10/assets/#uploadedFileName#">
          #arguments.wishes#     
       </cfmail>
    </cffunction>
 </cfcomponent>