<cfcomponent>
   <cffunction name="imageValidation" access="public">
      <cfargument name="imageName">
      <cfargument name="imageDesc">
      <cfargument name="imagePath">      
            

      <cfset local.dsn = "mydb">
      <cfquery name="query" datasource="#local.dsn#">
         insert into dbo.tb_image_details (name,description,image_name) 
         values(
               <cfqueryparam value="#arguments.imageName#" cfsqltype="CF_SQL_VARCHAR">,
               <cfqueryparam value="#arguments.imageDesc#" cfsqltype="CF_SQL_VARCHAR">,
               <cfqueryparam value="#arguments.imagePath#" cfsqltype="CF_SQL_VARCHAR">
                 
               )
                
      </cfquery>     
      <cflocation url="14_thumbnail.cfm?path=#arguments.imagePath#"><!--- To send the name of image--->
   </cffunction>
</cfcomponent>