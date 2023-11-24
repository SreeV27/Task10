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
            OFFSET #local.row#-1 ROWS
            FETCH NEXT 1 ROWS ONLY;
      </cfquery>
      <cfreturn qryFetchSpecificRow>
   </cffunction>

   <!---<cffunction name="dbProcessing" access="public">
      <cfargument name="num">
      <cfset local.row=#arguments.num#>     

      <cfquery name="queryName">
         SELECT * FROM dbo.tb_name
      </cfquery>
      <center>
         <table>
            <tr>
               <th>Firstname</th>
               <th>Lastname</th>
            </tr>
            <cfloop query="queryName">
               <tr>
                  <td><cfoutput>#queryName.firstname#</cfoutput></td>
                  <td><cfoutput>#queryName.lastname#</cfoutput></td>
               </tr>
            </cfloop>
         </table>

         <cfquery name="specificRow" >
            SELECT *
            FROM dbo.tb_name
            ORDER BY (SELECT NULL)  -- You can use any constant expression here for ordering
            OFFSET #local.row#-1 ROWS
            FETCH NEXT 1 ROWS ONLY;
         </cfquery>
         
         <table>
            <tr>
               <th>Firstname</th>
               <th>Lastname</th>
            </tr>
               <cfoutput query="specificRow">
                  <tr>
                     <td>#specificRow.firstname#</td>
                     <td>#specificRow.lastname#</td>
                  </tr>
              </cfoutput>
         </table>
      </center>
   </cffunction>--->
</cfcomponent>