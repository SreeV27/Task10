<cfcomponent>
<cffunction name="struct1" access="public">

<cfargument name="txt1">
<cfargument name="txt2">

<cfset myStruct = structNew()>
<cfset myStruct[arguments.txt1] = arguments.txt2>

<cfdump var="#myStruct#">
</cffunction>

</cfcomponent>