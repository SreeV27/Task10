<cfcomponent>
   <cffunction name="grading" access="public" >
        <cfargument name="inputValue">        
            <cfif "#arguments.inputValue#" ==5>
                <cfreturn 5>
            <cfelseif "#arguments.inputValue#"==4>
                <cfreturn 4>
            <cfelseif "#arguments.inputValue#"==3>
                <cfreturn 3>
            <cfelseif "#arguments.inputValue#"==1 || "#arguments.inputValue#"==2>
                <cfreturn 1>
            <cfelse>
                <cfreturn "Please enter  value between 1 and 5">
            </cfif>
   </cffunction>
</cfcomponent>