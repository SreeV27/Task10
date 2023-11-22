<cfcomponent>
           
    <cffunction  name="saveDoc" returntype="string">
        <cfargument name="fileupload" type="string" required="true">
       
        <cfset local.destination=ExpandPath("/Task10/assets")>
        <cffile action = "upload" 
           fileField = "#arguments.fileupload#"
           destination = "#local.destination#"
           nameConflict = "MakeUnique"
           allowedextensions=".doc,.txt" >

           <cfset local.uploadedFilePath = destination & "/" & cffile.serverFile>

           <cffile action="read"
        file="#local.uploadedFilePath#"
        variable="fileContent">

     
        <cfreturn fileContent>
    </cffunction>
</cfcomponent>