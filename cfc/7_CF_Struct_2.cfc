<cfcomponent>
   <cffunction name="struct1" access="public">
      <cfargument name="txt1">
      <cfargument name="txt2">
      <cfset session.myStruct[arguments.txt1] = arguments.txt2>
      <center>
         <cfdump var="#session.myStruct#">
      </center>
   </cffunction>
</cfcomponent>