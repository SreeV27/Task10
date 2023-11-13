<cfcomponent>
    <cffunction name="saveData"  access="public">
        <cfargument name="position">
        <cfargument name="relocate">
        <cfargument name="joinDate">
        <cfargument name="portfolio">    
        <cfargument name="salary">
        <cfargument name="fname">
        <cfargument name="lname">
        <cfargument name="email">
        <cfargument name="phno">
       
        <cfset destination=ExpandPath("/Task10/assets")>
        <cffile action = "upload" 
           fileField = "#arguments.fileToUpload#"
           destination ="#destination#"
           nameConflict ="overwrite"
           allowedextensions=".pdf, .doc, .docx" >
        <cfset uploadedFileName = cffile.serverFile>
            
            
        <cfset dsn = "mydb">
        <cfquery name="query" datasource="#dsn#">
              insert into dbo.tb_user(first_name,last_name,mail,phno,position,relocate,start_date,portfolio,resume,salary) 
              values(
                    <cfqueryparam value="#arguments.fname#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.lname#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.phno#"  cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.position#"  cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.relocate#"  cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.joinDate#"  cfsqltype="CF_SQL_DATE">,
                    <cfqueryparam value="#arguments.portfolio#"  cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#uploadedFileName#"  cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.salary#"  cfsqltype="CF_SQL_VARCHAR">                   
                        )
                  
        </cfquery>

     

    </cffunction>
</cfcomponent>