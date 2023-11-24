<cfcomponent>

    <cffunction  name="login" access="public" returntype="boolean">
       <cfargument  name="userName" type="string" required="true">
       <cfargument  name="password" type="string" required="true">
       <cfquery name="qryFetchData">
          SELECT role 
          FROM
          details
          WHERE username = 
          <cfqueryparam value="#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">
          AND
          password =
          <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">
       </cfquery>
       <cfif qryFetchData.RecordCount>
          <cfset local.roleValue = qryFetchData.role[1]>
          <cfif local.roleValue eq "user">
             <cfset session.login=true>
             <cflocation  url="28_User_Page.cfm">
             <cfelse>
             <cfset session.login=true>
             <cflocation  url="28_Admin_Page.cfm">
          </cfif>
          <cfelse>
          <cfreturn false>
       </cfif>
    </cffunction>

    <cffunction  name="addPageDetails" access="remote">
       <cfargument  name="pageName" type="string" required="true">
       <cfargument  name="pageDescription" type="string" required="true">
       <cfquery name="qryAddPage" >
          INSERT INTO tb_page(pagename,pagedescription) 
          VALUES (
          <cfqueryparam value="#arguments.pageName#" cfsqltype="CF_SQL_VARCHAR">
          ,
          <cfqueryparam value="#arguments.pageDescription#" cfsqltype="CF_SQL_LONGVARCHAR">
          ) 
       </cfquery>
    </cffunction>

    <cffunction  name="fetchPageDetails" access="public" returntype="any">
       <cfquery name="qryFetchPageDetails">
          SELECT id,pagename,pagedescription
          FROM 
          tb_page
       </cfquery>
       <cfreturn qryFetchPageDetails>
    </cffunction>
    
    <cffunction  name="fetchPageDetailsUsingId" access="remote" returntype="any">
       <cfargument  name="id"  required="true">
       <cfquery name="qryFetchPageDetailsUsingId">
          SELECT pagename,pagedescription
          FROM 
          tb_page
          WHERE
          id= 
          <cfqueryparam value="#arguments.id#" cfsqltype="CF_SQL_INTEGER">
       </cfquery>
       <cfreturn qryFetchPageDetailsUsingId>
    </cffunction>

    <cffunction  name="deletePageDetails" access="remote">
       <cfargument  name="id"  required="true">
       <cfquery name="qrydeletePageDetails" >
          DELETE 
          FROM
          tb_page
          WHERE
          id=
          <cfqueryparam value="#arguments.id#" cfsqltype="CF_SQL_INTEGER">
       </cfquery>
    </cffunction>

    <cffunction  name="updatePageDetails" access="remote">
       <cfargument  name="id"  required="true">
       <cfargument  name="pagename"  required="true">
       <cfargument  name="pageDescription"  required="true">
       <cfquery name="qryUpdatePageDetails" >
          UPDATE                    
          tb_page
          SET
          pagename =  
          <cfqueryparam value="#arguments.pageName#" cfsqltype="CF_SQL_VARCHAR">
          ,
          pagedescription = 
          <cfqueryparam value="#arguments.pageDescription#" cfsqltype="CF_SQL_LONGVARCHAR">
          WHERE
          id=
          <cfqueryparam value="#arguments.id#" cfsqltype="CF_SQL_INTEGER">
       </cfquery>
    </cffunction>

 </cfcomponent>