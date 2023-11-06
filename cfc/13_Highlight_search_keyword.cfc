<cfcomponent>
    <cffunction name="wordSearching" access="public">
        <cfargument name="word">
        <cfset sentence="the quick brown fox jumps over the lazy dog">


            <cfset wordCount = 0>
            <cfset wordList = ListToArray(sentence, " ")>
            <cfloop from="1" to="#ArrayLen(wordList)#" index="i">
                 <cfif CompareNoCase(wordList[i], #arguments.word#) EQ 0>
                    <cfset wordCount = wordCount + 1>
                </cfif>
            </cfloop>

<cfoutput>
  Found the key word in #wordCount# times - #sentence#
</cfoutput>

    </cffunction>


</cfcomponent>