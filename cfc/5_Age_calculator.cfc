<cfcomponent>
   <cffunction name="age" access="public">
      <cfargument name="userDob">
      <cfargument name="motherDob">
      <cfset local.userDob = "#arguments.userDob#">
      <cfset local.motherDob = "#arguments.motherDob#">
      <cfset local.currentDate = Now()>
      <cfset local.userAge = DateDiff("yyyy", local.userDob, local.currentDate)>
      <cfoutput>
         User is  #userAge# years old.
      </cfoutput>
      <br>
      <cfset local.motherAge = DateDiff("yyyy", local.motherDob, local.currentDate)>
      <cfset local.deliveredAge = local.motherAge-local.userAge>
      <cfoutput>
         Age of his mother at the time delivered him is  #local.deliveredAge# years old.
      </cfoutput>
      <br>
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
      <cfoutput>
         Days are remaining for user birthday is:#local.userBdayRmngDays#.
      </cfoutput>
      <br>
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
      <cfoutput>
         Days are remaining for mothers birthday is:#local.motherBdayRmngDays#.
      </cfoutput>
   </cffunction>
</cfcomponent>