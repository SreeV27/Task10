<cfcomponent>
    <cffunction name="evenOrOdd" access="public" returntype="boolean">
        <cfargument name="num">
        <cfif num MOD 2 EQ 0>
            <cfreturn true>

            <cfelse>
                <cfreturn false>

        </cfif>  



    </cffunction>

</cfcomponent>