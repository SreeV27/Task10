<cfcomponent>
    <cffunction  name="checkForAnyPreviousValue" access="remote" returntype="boolean">


        <cfdump var="sds" abort>
        <cfargument name="requestData" type="string" required="true">

        <!-- Deserialize the JSON data -->
        <cfset requestData = deserializeJSON(arguments.requestData)>

        <!-- Access individual properties from the JSON data -->
        <cfset name = requestData.name>
        <cfset mail = requestData.mail>
        <cfoutput>
            #name#
        </cfoutput>
    </cffunction>
</cfcomponent>