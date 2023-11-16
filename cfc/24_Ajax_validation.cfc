<cfcomponent>
    <cffunction  name="checkForAnyPreviousValue" access="remote" returnformat="JSON">
       <cfargument name="name" type="string" required="true">
       <cfargument name="mail" type="string" required="true">
       <cfquery name="qryvalueCheck">
          SELECT email FROM tb_subscribe WHERE email = 
          <cfqueryparam value="#arguments.mail#" cfsqltype="CF_SQL_VARCHAR">
       </cfquery>
       <cfif qryvalueCheck.RecordCount>
          <cfset result = {"status": true}>
          <cfreturn serializeJSON(result)>
          <cfelse>
          <cfset result = { "status": false}>
          <cfreturn serializeJSON(result)>
       </cfif>
    </cffunction>
    
    <cffunction  name="addSubscriber" access="remote" returntype="boolean">
       <cfargument name="name" type="string" required="true">
       <cfargument name="mail" type="string" required="true">
       <cfquery name="qryaddSubscriber" result="addSubscriberResult">
          INSERT INTO tb_subscribe(name,email) 
          VALUES (
          <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
          <cfqueryparam value="#arguments.mail#" cfsqltype="CF_SQL_VARCHAR">
          ) 
       </cfquery>
       <cfif addSubscriberResult.recordCount >
          <cfreturn true>
          <cfelse>
          <cfreturn false>
       </cfif>
    </cffunction>
 </cfcomponent>