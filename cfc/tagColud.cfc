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
          <cfif !isNumeric(item) and Len(item) GT 2 >
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
             <cfif !isNumeric(word) and currentRowText eq word>
             <cfif structKeyExists(resultStructure, word)>
             <cfset resultStructure[word]+=1>
             <cfelse>
             <cfset resultStructure[word] = 1>
             </cfif>
             </cfif>
          </cfloop>
       </cfloop>
       <cfset newStructure = StructNew("ordered")>
       <!--- Find the maximum value --->
       <cfloop condition="NOT structIsEmpty(resultStructure)">
          <cfset maxValue = 0>
          <cfloop collection="#resultStructure#" item="wordCount">
             <cfif resultStructure[wordCount] gt maxValue>
                <cfset maxValue = resultStructure[wordCount]>
             </cfif>
          </cfloop>
          <!--- Create a new structure with key-value pairs having the maximum value --->
          <cfset maxWordCounts = {}>
          <cfloop collection="#resultStructure#" item="word" >
             <cfif resultStructure[word] eq maxValue>
                <cfset maxWordCounts[word] = resultStructure[word]>
                <!--- Remove the item from resultStructure --->
                <cfset structDelete(resultStructure, word)>
             </cfif>
          </cfloop>
          <!--- Output the sorted maxWordCounts structure
             <cfdump var="#maxWordCounts#">
             <cfdump var="#wordCounts#"> --->
          <cfset keyLengths = []>
          <!-- Populate the array with key and length information -->
          <cfloop index="key" array="#StructKeyArray(maxWordCounts)#">
             <cfset keyLengths.append({"key" = key, "length" = Len(key)})>
          </cfloop>
          <!-- Sort the array based on key length in descending order and then alphabetically -->
          <cfset ArraySort(keyLengths, function(a, b) {
          if (b.length - a.length neq 0) {
          return b.length - a.length;  // Sort by length in descending order
          } else {
          return CompareNoCase(a.key, b.key);  // If lengths are the same, sort alphabetically
          }
          })>
          <!-- Create a new empty structure to store sorted key-value pairs -->
          <cfset sortedStructure = StructNew("ordered")>
          <!-- Iterate through the sorted array and add key-value pairs to the new structure -->
          <cfloop array="#keyLengths#" index="item">
             <cfset sortedStructure[item.key] = maxWordCounts[item.key]>
          </cfloop>
          <cfset structAppend(newStructure, sortedStructure)>
          <!--- Remove all key-value pairs from maxWordCounts --->
          <cfset structClear(maxWordCounts)>
          <cfset structClear(sortedStructure)>
          <!--- Output the updated maxWordCounts structure (empty) 
             <cfdump var="#maxWordCounts#">--->
       </cfloop>
       <!--- Output the new structure 
          <cfdump var="#newStructure#" abort> --->
       <cfreturn newStructure>
    </cffunction>


    <cffunction  name="sortStruct" access="public" returntype="any">
      <cfargument name="text" >
      <cfset newStructure = StructNew("ordered")>
       <!--- Find the maximum value --->
       <cfloop condition="NOT structIsEmpty(arguments.text)">
          <cfset maxValue = 0>
          <cfloop collection="#arguments.text#" item="wordCount">
             <cfif arguments.text[wordCount] gt maxValue>
                <cfset maxValue = arguments.text[wordCount]>
             </cfif>
          </cfloop>
          <!--- Create a new structure with key-value pairs having the maximum value --->
          <cfset maxWordCounts = {}>
          <cfloop collection="#arguments.text#" item="word" >
             <cfif arguments.text[word] eq maxValue>
                <cfset maxWordCounts[word] = arguments.text[word]>
                <!--- Remove the item from arguments.text --->
                <cfset structDelete(arguments.text, word)>
             </cfif>
          </cfloop>
          <!--- Output the sorted maxWordCounts structure
             <cfdump var="#maxWordCounts#">
             <cfdump var="#wordCounts#"> --->
          <cfset keyLengths = []>
          <!-- Populate the array with key and length information -->
          <cfloop index="key" array="#StructKeyArray(maxWordCounts)#">
             <cfset keyLengths.append({"key" = key, "length" = Len(key)})>
          </cfloop>
          <!-- Sort the array based on key length in descending order and then alphabetically -->
          <cfset ArraySort(keyLengths, function(a, b) {
          if (b.length - a.length neq 0) {
          return b.length - a.length;  // Sort by length in descending order
          } else {
          return CompareNoCase(a.key, b.key);  // If lengths are the same, sort alphabetically
          }
          })>
          <!-- Create a new empty structure to store sorted key-value pairs -->
          <cfset sortedStructure = StructNew("ordered")>
          <!-- Iterate through the sorted array and add key-value pairs to the new structure -->
          <cfloop array="#keyLengths#" index="item">
             <cfset sortedStructure[item.key] = maxWordCounts[item.key]>
          </cfloop>
          <cfset structAppend(newStructure, sortedStructure)>
          <!--- Remove all key-value pairs from maxWordCounts --->
          <cfset structClear(maxWordCounts)>
          <cfset structClear(sortedStructure)>
          <!--- Output the updated maxWordCounts structure (empty) 
             <cfdump var="#maxWordCounts#">--->
       </cfloop>
       <!--- Output the new structure 
          <cfdump var="#newStructure#" abort> --->
       <cfreturn newStructure>
    </cffunction>
 </cfcomponent>