<cfcomponent>
    <cffunction  name="insertIntoDb" access="remote" returntype="any">
       <cfargument  name="value">
        <cfset session.myList = listToArray(#arguments.value#," ")> 
       
        <!-- Loop through the elements in the array -->
        <cfloop index="item" array="#session.myList#">

           <cfif Len(item) GT 2 >
                <cfquery name="qryCheck">
                    SELECT * FROM tb_text
                    WHERE text = <cfqueryparam value='#item#' cfsqltype="CF_SQL_VARCHAR">
                </cfquery>
            
                <cfif qryCheck.recordCount eq 0>
                    <cfquery name="qryInsert" result="insertResult">
                        INSERT INTO tb_text (text)
                        VALUES (
                            <cfqueryparam value="#item#" cfsqltype="CF_SQL_VARCHAR">
                        )
                    </cfquery>
                  <!---  <cfif insertResult.recordCount >
                        <cfset result = true>
                    <cfelse>
                        <cfset result = false>
                    </cfif>--->
                </cfif>
            </cfif>          
        </cfloop>
        
      
            <cfreturn 1>
       

    </cffunction>
</cfcomponent>