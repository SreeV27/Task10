<cfcomponent>
   <cffunction name="multiply" access="public" returntype="numeric">
      <cfset local.result=1>
      <!--- Loop through all arguments  --->
      <cfloop index="i" from="1" to="#arrayLen(arguments)#">
         <cfset local.result *= arguments[i]>
      </cfloop>
      <cfreturn local.result>
   </cffunction>
</cfcomponent>