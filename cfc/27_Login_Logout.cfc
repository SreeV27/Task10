<cfcomponent>
    <cffunction  name="login" access="public" returntype="boolean">
        <cfargument  name="userName" type="string" required="true"> 
        <cfargument  name="password" type="string" required="true"> 
      
        <cfquery name="qryFetchData">
            SELECT username 
            FROM
            tb_login
            WHERE username = <cfqueryparam value="#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">
            AND
            password =<cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">            
        </cfquery>       
        <cfif qryFetchData.RecordCount>            
            <cfreturn true>
        <cfelse>           
            <cfreturn false>
        </cfif>
    </cffunction>
</cfcomponent>