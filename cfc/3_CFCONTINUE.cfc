<cfcomponent>
   <cffunction name="dividedByThree" access="public" >
   
      <cfargument name="inputValue">
      
      <cfset resultList = "" >
      <cfloop list="#arguments.inputValue#" index="i">
         <cfif #i# % 3 ==0>
         <cfset  resultList=listAppend(resultList, "#i#")>
         </cfif>        
      </cfloop>
      <cfoutput>#resultList#</cfoutput>
   </cffunction>
</cfcomponent>