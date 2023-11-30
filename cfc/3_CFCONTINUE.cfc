<cfcomponent>
   <cffunction name="dividedByThree" access="public">   
      <cfargument name="inputValue">      
      <cfset local.resultList = "" >
      <cfloop list="#arguments.inputValue#" index="i">
         <cfif #i# % 3 ==0>
         <cfset  local.resultList=listAppend(local.resultList, "#i#")>
         </cfif>        
      </cfloop>
      <cfreturn local.resultList>
   </cffunction>
</cfcomponent>