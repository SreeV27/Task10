<cfcomponent>
   <cffunction name="struct1" access="public">
      <cfargument name="key">
      <cfargument name="value">
      <cfset session.myStruct3[arguments.key] = arguments.value>
      <center>
         <cfset keyArray = []>
         <cfloop item="key" collection="#session.myStruct3#">
            <cfset arrayAppend(keyArray, key)> <!--- store the keys from structure to keyarray--->
         </cfloop>
         <cfset arraySort(keyArray, "text")>
         <cfloop array="#keyArray#" index="item">
            <cfset session.myStruct4[item] = session.myStruct3[item]>
         </cfloop>
         <cfdump var="#session.myStruct4#">
      </center>
   </cffunction>
</cfcomponent>