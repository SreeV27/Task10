<cfcomponent>
    <cffunction name="sendWish" access="public">
       <cfargument name="name">
       <cfargument name="email">
       <cfargument name="wishes">
       <cfargument name="image">
       <cfmail to="#arguments.email#"
          from="sreenath123@gmail.com"
          subject="Welcome to Bedrock"
          type="text"
          mimeattach="/Task10/assets/#arguments.image#">
          #arguments.wishes#     
       </cfmail>
    </cffunction>
 </cfcomponent>