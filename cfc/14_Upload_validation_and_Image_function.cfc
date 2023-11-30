<cfcomponent>
   <cffunction name="imageValidation" access="public">
      <cfargument name="imageName">
      <cfargument name="imageDesc">
      <cfargument name="imagePath"> 
      <cfargument  name="fileupload">     
            
      <cfset destination=ExpandPath("/Task10/assets")>
      <cffile action = "upload" 
         fileField = "form.image"
         destination = "#destination#"
         nameConflict = "MakeUnique"
         allowedextensions=".jpg, .jpeg, .png, .gif" >
        
      <cfquery name="qryInsertImage">
         insert into dbo.tb_image_details (name,description,image_name) 
         values(
               <cfqueryparam value="#arguments.imageName#" cfsqltype="CF_SQL_VARCHAR">,
               <cfqueryparam value="#arguments.imageDesc#" cfsqltype="CF_SQL_VARCHAR">,
               <cfqueryparam value="#arguments.fileupload#" cfsqltype="CF_SQL_VARCHAR">
                 
               )
                
      </cfquery>     
      <cflocation url="14_thumbnail.cfm?path=#arguments.fileupload#"><!--- To send the name of image--->
   </cffunction>
</cfcomponent>