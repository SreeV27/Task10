<cfcomponent>
    <cffunction  name="visitCounting" access="public" returntype="any">
        <cfif !structKeyExists(cookie,"VisitsCounter")>
            <cfset cookie.VisitsCounter=1>        
            <cfelse>
                <cfset cookie.VisitsCounter=cookie.VisitsCounter+1>
        </cfif>
      <cfreturn cookie.VisitsCounter>
    </cffunction>
</cfcomponent>