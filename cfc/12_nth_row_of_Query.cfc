<cfcomponent>
   <cffunction name="dbProcessing" access="public">
      <cfargument name="num">
      <cfset row=#arguments.num#>
      <cfset dsn = "mydb">
      <cfquery name="queryName" datasource="#dsn#">
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
         <cfquery name="specificRow" datasource="#dsn#">
            SELECT *
            FROM dbo.tb_name
            ORDER BY (SELECT NULL)  -- You can use any constant expression here for ordering
            OFFSET #row#-1 ROWS
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
   </cffunction>
</cfcomponent>