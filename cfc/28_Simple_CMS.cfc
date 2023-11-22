<cfcomponent>
    <cffunction  name="login" access="public" returntype="boolean">
        <cfargument  name="userName" type="string" required="true"> 
        <cfargument  name="password" type="string" required="true"> 
      
        <cfquery name="qryFetchData">
            SELECT role 
            FROM
            details
            WHERE username = <cfqueryparam value="#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">
            AND
            password =<cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">            
        </cfquery>       
       
        <cfif qryFetchData.RecordCount>    
           <cfset local.roleValue = qryFetchData.role[1]>   

           <cfif local.roleValue eq "user">
                 <cfset session.login=true>
                <cflocation  url="28_User_Page.cfm">
           <cfelse>
            <cfset session.login=true>
            <cflocation  url="28_Admin_Page.cfm">
           </cfif>
                
           
        <cfelse>  
            <cfreturn false>         
         
        </cfif>
    </cffunction>
</cfcomponent>