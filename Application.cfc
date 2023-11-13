<cfcomponent>
    <cfset this.name = "Coldfusion Task">
    <cfset this.sessionManagement = true>
    <cfset this.sessionTimeout = CreateTimeSpan(0 ,0,1,0)> 
     

    <cffunction name="onSessionStart" returnType="boolean">
            <cfset session.myStruct = structNew()>
            <cfset session.myStruct2 = structNew()>
            <cfset session.myStruct3 = structNew()>
            <cfset session.myStruct4 = structNew()>
            <cfreturn true>
    </cffunction>
 
     
</cfcomponent>

