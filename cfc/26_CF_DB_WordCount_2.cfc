<cfcomponent>
            <cffunction name="init" access="public" returntype="any">
       <cfargument name="text" type="string" required="true">

      
    </cffunction>



    <cffunction  name="saveDoc" returntype="string">
        <cfargument name="fileupload" type="string" required="true">
       
        <cfset destination=ExpandPath("/Task10/assets")>
        <cffile action = "upload" 
           fileField = "#arguments.fileupload#"
           destination = "#destination#"
           nameConflict = "MakeUnique"
           allowedextensions=".doc,.txt" >

           <cfset uploadedFilePath = destination & "/" & cffile.serverFile>

           <cffile action="read"
        file="#uploadedFilePath#"
        variable="fileContent">

        <cfdump var="#fileContent#">
    </cffunction>
</cfcomponent>