<cfcomponent>
   <cffunction name="multiply" access="public" returntype="numeric">
      <cfset result=1>
      <!--- Loop through all arguments  --->
      <cfloop index="i" from="1" to="#arrayLen(arguments)#">
         <cfset result *= arguments[i]>
      </cfloop>
      <cfreturn result>
   </cffunction>
</cfcomponent>