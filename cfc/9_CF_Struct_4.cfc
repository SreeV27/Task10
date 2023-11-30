<cfcomponent>
   <cffunction name="struct1" access="public">
      <cfargument name="key">
      <cfargument name="value">
        <cfif structKeyExists(session.myStruct3,"#arguments.key#")>
            <cfdump var=" The Key #arguments.key# Already Exists" abort>
        </cfif>
      <cfset session.myStruct3[arguments.key] = arguments.value>
      <center>
         <cfdump var="#session.myStruct3#">
      </center>
   </cffunction>
</cfcomponent>