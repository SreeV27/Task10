<cfcomponent>

   <cffunction name="fetchAllData" returntype="query"> 
      <cfquery name="qryFetchAllData">
         SELECT * FROM dbo.tb_name
      </cfquery>
      <cfreturn qryFetchAllData>
   </cffunction>

   <cffunction name="fetchSpecificRow" returntype="query"> 
      <cfargument name="num">
      <cfset local.row=#arguments.num#>   
         <cfquery name="qryFetchSpecificRow">
            SELECT *
               FROM dbo.tb_name
               ORDER BY (SELECT NULL)  -- You can use any constant expression here for ordering
               OFFSET <cfqueryparam value="#local.row#" cfsqltype="CF_SQL_VARCHAR">-1 ROWS
               FETCH NEXT 1 ROWS ONLY;
         </cfquery>
      <cfreturn qryFetchSpecificRow>
   </cffunction>

  
</cfcomponent>