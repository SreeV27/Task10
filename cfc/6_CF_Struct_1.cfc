<cfcomponent>
   <cffunction name="struct1" access="public">
      <cfargument name="txt1">
      <cfargument name="txt2">
      <cfset local.myStruct = structNew()>
      <cfset local.myStruct[arguments.txt1] = arguments.txt2>
      <center>
         <cfdump var="#local.myStruct#">
      </center>
   </cffunction>
</cfcomponent>