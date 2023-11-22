<cfcomponent>
    <!--- Define constructor --->
    <cffunction name="init" access="public" returntype="struct">
       <cfargument name="text" type="string" required="true">
       <!--- Split the text into an array based on space --->
       <cfset  local.textArray = listToArray(arguments.text, " ")>
       <!--- Create a structure to hold the text values --->
       <cfset  local.textStructure = structNew()>
       <!--- Populate the structure with values from the array --->
       <cfloop array="#local.textArray#" index="item">
          <cfset local.textStructure[item] = true>
       </cfloop>
       <!--- Return the populated structure --->
       <cfreturn local.textStructure>
       <!--- Return the instance of the component --->
    </cffunction>
    
    <cffunction  name="insertIntoDb" access="public" returntype="boolean">
       <cfargument name="text"  type="struct">
       <cfset local.result = 0>
       <cfset local.keyList = structKeyList(arguments.text)>
       <cfloop index="item" list="#local.keyList#">
          <cfif !isNumeric(item) and Len(item) GT 2 >
          <cfquery name="qryInsert" result="insertResult">
             INSERT INTO tb_text (text)
             VALUES (
             <cfqueryparam value="#item#" cfsqltype="CF_SQL_VARCHAR">
             )
          </cfquery>
          <!-- Check if the record was successfully inserted -->
          <cfif insertResult.recordCount>
             <cfset local.result = 1>
             <cfelse>
             <cfset local.result = 0>
          </cfif>
          </cfif>
       </cfloop>
       <cfreturn local.result>
    </cffunction>

    <cffunction  name="displayValues" access="public" returntype="any">
       <cfargument name="text" >
       <cfset local.wordsArray = listToArray(arguments.text, " ")>
      
       <cfquery name="qryFetchData">
          SELECT text
          FROM tb_text
          ORDER BY LEN(text) DESC, text ASC;
       </cfquery>

       <cfset local.resultStructure = {}>
       <cfloop query="qryFetchData">
          <cfset local.currentRowText = qryFetchData.text>
          <cfset local.count=0>
          <cfloop array="#local.wordsArray#" index="word">
             <cfif !isNumeric(word) and local.currentRowText eq word>
             <cfif structKeyExists(local.resultStructure, word)>
             <cfset local.resultStructure[word]+=1>
             <cfelse>
             <cfset local.resultStructure[word] = 1>
             </cfif>
             </cfif>
          </cfloop>
       </cfloop>
       <cfset local.newStructure = StructNew("ordered")>
       <!--- Find the maximum value --->
       <cfloop condition="NOT structIsEmpty(local.resultStructure)">
          <cfset local.maxValue = 0>
          <cfloop collection="#local.resultStructure#" item="wordCount">
             <cfif local.resultStructure[wordCount] gt local.maxValue>
                <cfset local.maxValue = local.resultStructure[wordCount]>
             </cfif>
          </cfloop>
          <!--- Create a new structure with key-value pairs having the maximum value --->
          <cfset local.maxWordCounts = {}>
          <cfloop collection="#local.resultStructure#" item="word" >
             <cfif local.resultStructure[word] eq maxValue>
                <cfset local.maxWordCounts[word] = local.resultStructure[word]>
                <!--- Remove the item from resultStructure --->
                <cfset structDelete(local.resultStructure, word)>
             </cfif>
          </cfloop>
          <!--- Output the sorted maxWordCounts structure
             <cfdump var="#maxWordCounts#">
             <cfdump var="#wordCounts#"> --->
          <cfset keyLengths = []>
          <!-- Populate the array with key and length information -->
          <cfloop index="key" array="#StructKeyArray(local.maxWordCounts)#">
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
          <cfset local.sortedStructure = StructNew("ordered")>
          <!-- Iterate through the sorted array and add key-value pairs to the new structure -->
          <cfloop array="#keyLengths#" index="item">
             <cfset local.sortedStructure[item.key] = local.maxWordCounts[item.key]>
          </cfloop>
          <cfset structAppend(local.newStructure, local.sortedStructure)>
          <!--- Remove all key-value pairs from maxWordCounts --->
          <cfset structClear(local.maxWordCounts)>
          <cfset structClear(local.sortedStructure)>
          <!--- Output the updated maxWordCounts structure (empty) 
             <cfdump var="#maxWordCounts#">--->
       </cfloop>
       <!--- Output the new structure 
          <cfdump var="#newStructure#" abort> --->
       <cfreturn local.newStructure>
    </cffunction>


    <cffunction  name="sortStruct" access="public" returntype="any">
      <cfargument name="text" >
      <cfset local.newStructure = StructNew("ordered")>
       <!--- Find the maximum value --->
       <cfloop condition="NOT structIsEmpty(arguments.text)">
          <cfset local.maxValue = 0>
          <cfloop collection="#arguments.text#" item="wordCount">
             <cfif arguments.text[wordCount] gt local.maxValue>
                <cfset local.maxValue = arguments.text[wordCount]>
             </cfif>
          </cfloop>
          <!--- Create a new structure with key-value pairs having the maximum value --->
          <cfset local.maxWordCounts = {}>
          <cfloop collection="#arguments.text#" item="word" >
             <cfif arguments.text[word] eq local.maxValue>
                <cfset local.maxWordCounts[word] = arguments.text[word]>
                <!--- Remove the item from arguments.text --->
                <cfset structDelete(arguments.text, word)>
             </cfif>
          </cfloop>
          <!--- Output the sorted maxWordCounts structure
             <cfdump var="#maxWordCounts#">
             <cfdump var="#wordCounts#"> --->
          <cfset local.keyLengths = []>
          <!-- Populate the array with key and length information -->
          <cfloop index="key" array="#StructKeyArray(local.maxWordCounts)#">
             <cfset local.keyLengths.append({"key" = key, "length" = Len(key)})>
          </cfloop>
          <!-- Sort the array based on key length in descending order and then alphabetically -->
          <cfset ArraySort(local.keyLengths, function(a, b) {
          if (b.length - a.length neq 0) {
          return b.length - a.length;  // Sort by length in descending order
          } else {
          return CompareNoCase(a.key, b.key);  // If lengths are the same, sort alphabetically
          }
          })>
          <!-- Create a new empty structure to store sorted key-value pairs -->
          <cfset local.sortedStructure = StructNew("ordered")>
          <!-- Iterate through the sorted array and add key-value pairs to the new structure -->
          <cfloop array="#local.keyLengths#" index="item">
             <cfset local.sortedStructure[item.key] = local.maxWordCounts[item.key]>
          </cfloop>
          <cfset structAppend(local.newStructure, local.sortedStructure)>
          <!--- Remove all key-value pairs from maxWordCounts --->
          <cfset structClear(local.maxWordCounts)>
          <cfset structClear(local.sortedStructure)>
          <!--- Output the updated maxWordCounts structure (empty) 
             <cfdump var="#maxWordCounts#">--->
       </cfloop>
       <!--- Output the new structure 
          <cfdump var="#newStructure#" abort> --->
       <cfreturn local.newStructure>
    </cffunction>
 </cfcomponent>