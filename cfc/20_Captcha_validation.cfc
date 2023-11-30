<cfcomponent>
    <cffunction  name="captchaGenerate" access="public" returntype="string">
        <cfset local.characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789">
        <cfset  local.captchaText="">
        <cfset length = 6>
        <cfloop from="1" to="#length#" index="i">
            <cfset  local.captchaText &= mid( local.characters, randRange(1, len( local.characters)), 1)>
        </cfloop>            
        <cfreturn local.captchaText>            
    </cffunction>
</cfcomponent>