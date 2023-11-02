<cfcomponent>

<cffunction name="struct1" access="public">
<cfset session.myStruct = structNew()>

<cfargument name="txt1">
<cfargument name="txt2">



<cfset structInsert(session.myStruct, arguments.txt1, arguments.txt2)>

<cfdump var="#session.myStruct#">
</cffunction>

</cfcomponent>