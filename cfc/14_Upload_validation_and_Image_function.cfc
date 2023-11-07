<cfcomponent>
   <cffunction name="imageValidation" access="public">
      <cfargument name="imageName">
      <cfargument name="imageDesc">
      <cfargument name="imagePath">
      <cfset destination="C:\ColdFusion2023\cfusion\wwwroot\Task10\assets">
      <cffile action = "upload" 
         fileField = "#arguments.imagePath#"
         destination = "#destination#"
         nameConflict = "MakeUnique"
         allowedextensions=".jpg, .jpeg, .png, .gif" >
      <cflocation url="14_thumbnail.cfm">
   </cffunction>
</cfcomponent>