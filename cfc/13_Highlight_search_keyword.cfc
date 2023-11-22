<cfcomponent>
    <cffunction name="wordSearching" access="public">
        <cfargument name="word">
        <cfargument name="sentence">
        <cfset local.sentence=#arguments.sentence#> 
        <cfset local.wordCount = 0>
        <cfset local.wordList = ListToArray(local.sentence, " ")>
        <cfloop from="1" to="#ArrayLen(local.wordList)#" index="i">
            <cfif CompareNoCase(local.wordList[i], #arguments.word#) EQ 0>
                <cfset local.wordCount = local.wordCount + 1>
            </cfif>
        </cfloop>

        <cfoutput>
            Found the key word in #local.wordCount# times - #local.sentence#
        </cfoutput>

    </cffunction>
</cfcomponent>