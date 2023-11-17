<cfcomponent>
    <!--- Define constructor --->
    <cffunction name="init" access="public" returntype="struct">
       <cfargument name="text" type="string" required="true">
       <!--- Split the text into an array based on space --->
       <cfset var textArray = listToArray(arguments.text, " ")>
       <!--- Create a structure to hold the text values --->
       <cfset var textStructure = structNew()>
       <!--- Populate the structure with values from the array --->
       <cfloop array="#textArray#" index="item">
          <cfset textStructure[item] = true>
       </cfloop>
       
       <!--- Return the populated structure --->
       <cfreturn textStructure>
       <!--- Return the instance of the component --->
    
    </cffunction>



    <cffunction  name="insertIntoDb" access="public" returntype="boolean">
       <cfargument name="text"  type="struct">
      
       <cfset result = 0>
       <cfset var keyList = structKeyList(arguments.text)>
       <cfloop index="item" list="#keyList#">
          <cfif Len(item) GT 2 >
          <cfquery name="qryInsert" result="insertResult">
             INSERT INTO tb_text (text)
             VALUES (
             <cfqueryparam value="#item#" cfsqltype="CF_SQL_VARCHAR">
             )
          </cfquery>
          <!-- Check if the record was successfully inserted -->
          <cfif insertResult.recordCount>
             <cfset result = 1>
             <cfelse>
             <cfset result = 0>
          </cfif>
          </cfif>
       </cfloop>
       <cfreturn result>
    </cffunction>

    <cffunction  name="displayValues" access="public" returntype="any">
        <cfargument name="text" >
        <cfset wordsArray = listToArray(arguments.text, " ")>
        <cfset out="">
        <cfquery name="qryFetchData">
            
            SELECT text
            FROM tb_text
            ORDER BY LEN(text) DESC, text ASC;
        </cfquery>
            <cfset resultStructure = {}>
            <cfloop query="qryFetchData">
                <cfset currentRowText = qryFetchData.text>
                <cfset count=0>
                <cfloop array="#wordsArray#" index="word">

                    <cfif currentRowText eq word>
                        <cfif structKeyExists(resultStructure, word)>
                            <cfset resultStructure[word]+=1>
                            <cfelse>
                                <cfset resultStructure[word] = 1>
                        </cfif>
                        
                    </cfif>
                       
                   
                </cfloop>



            </cfloop>





     <!--- Convert the structure to an array of structures for sorting --->
     <cfdump  var="#resultStructure#" abort>

      <cfreturn resultStructure> 


    </cffunction>
 </cfcomponent>