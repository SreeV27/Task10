<cfcomponent>
   <cffunction name="age" access="public" returntype="struct">
      <cfargument name="userDob">
      <cfargument name="motherDob">
      <cfset local.userDob = "#arguments.userDob#">
      <cfset local.motherDob = "#arguments.motherDob#">
      <cfset dateStruct = {}>
      <cfset local.currentDate = Now()>
      <cfset local.userAge = DateDiff("yyyy", local.userDob, local.currentDate)>
      <cfset dateStruct["userAge"] = local.userAge>
     
      <cfset local.motherAge = DateDiff("yyyy", local.motherDob, local.currentDate)>
      <cfset local.deliveredAge = local.motherAge-local.userAge>

      <cfset dateStruct["deliveredAge"] = local.deliveredAge>
      
      <!--- User Remaining Days--->
      <!-- Calculate the next age (adding 1 year) -->
      <cfset local.nextAge = local.userAge + 1>
      <!-- Create a date with the same month and day as the DOB but with the next age -->
      <cfset local.nextBirthday = CreateDateTime(Year(local.currentDate), Month(local.userDob), Day(local.userDob), 0, 0, 0)>
      <!-- Check if the next birthday has already occurred this year, and if so, add 1 year -->
      <cfif nextBirthday LT currentDate>
         <cfset local.nextBirthday = DateAdd("yyyy", 1, local.nextBirthday)>
      </cfif>
      <cfset local.userBdayRmngDays = DateDiff("d", local.currentDate,local.nextBirthday )>
      <cfset dateStruct["userBdayRmngDays"] = local.userBdayRmngDays>
      
      <!--- Mothers Remaining Days--->
      <!-- Calculate the next age (adding 1 year) -->
      <cfset local.nextAge = local.motherAge + 1>
      <!-- Create a date with the same month and day as the DOB but with the next age -->
      <cfset local.nextBirthday = CreateDateTime(Year(local.currentDate), Month(local.motherDob), Day(local.motherDob), 0, 0, 0)>
      <!-- Check if the next birthday has already occurred this year, and if so, add 1 year -->
      <cfif nextBirthday LT currentDate>
         <cfset local.nextBirthday = DateAdd("yyyy", 1, local.nextBirthday)>
      </cfif>
      <cfset local.motherBdayRmngDays = DateDiff("d", local.currentDate,local.nextBirthday )>
      <cfset dateStruct["motherBdayRmngDays"] = local.motherBdayRmngDays>

     

      <cfreturn dateStruct>
   </cffunction>
</cfcomponent>