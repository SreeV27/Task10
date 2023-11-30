<cfcomponent>
   <cffunction name="grading" access="public" >
      <cfargument name="inputValue">
      <cfswitch expression ="#arguments.inputValue#">
         <cfcase value = "5">
            <cfreturn 5>
         </cfcase>

         <cfcase value = "4">
            <cfreturn 4>
         </cfcase>

         <cfcase value = "3">
            <cfreturn 3>
         </cfcase>

         <cfcase value = "2">
            <cfreturn 2>
         </cfcase>

         <cfcase value = "1">
            <cfreturn 1>
         </cfcase>

         <cfdefaultcase>
            <cfreturn 0>
         </cfdefaultcase>
         
      </cfswitch>
   </cffunction>
</cfcomponent>