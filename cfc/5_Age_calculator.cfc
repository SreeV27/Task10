<cfcomponent>
   <cffunction name="age" access="public">
      <cfargument name="userDob">
      <cfargument name="motherDob">
      <cfset userDob = "#arguments.userDob#">
      <cfset motherDob = "#arguments.motherDob#">
      <cfset currentDate = Now()>
      <cfset userAge = DateDiff("yyyy", userDob, currentDate)>
      <cfoutput>
         User is  #userAge# years old.
      </cfoutput>
      <br>
      <cfset motherAge = DateDiff("yyyy", motherDob, currentDate)>
      <cfset deliveredAge = motherAge-userAge>
      <cfoutput>
         Age of his mother at the time delivered him is  #deliveredAge# years old.
      </cfoutput>
      <br>
      <!--- User Remaining Days--->
      <!-- Calculate the next age (adding 1 year) -->
      <cfset nextAge = userAge + 1>
      <!-- Create a date with the same month and day as the DOB but with the next age -->
      <cfset nextBirthday = CreateDateTime(Year(currentDate), Month(userDob), Day(userDob), 0, 0, 0)>
      <!-- Check if the next birthday has already occurred this year, and if so, add 1 year -->
      <cfif nextBirthday LT currentDate>
         <cfset nextBirthday = DateAdd("yyyy", 1, nextBirthday)>
      </cfif>
      <cfset userBdayRmngDays = DateDiff("d", currentDate,nextBirthday )>
      <cfoutput>
         Days are remaining for user birthday is:#userBdayRmngDays#.
      </cfoutput>
      <br>
      <!--- Mothers Remaining Days--->
      <!-- Calculate the next age (adding 1 year) -->
      <cfset nextAge = motherAge + 1>
      <!-- Create a date with the same month and day as the DOB but with the next age -->
      <cfset nextBirthday = CreateDateTime(Year(currentDate), Month(motherDob), Day(motherDob), 0, 0, 0)>
      <!-- Check if the next birthday has already occurred this year, and if so, add 1 year -->
      <cfif nextBirthday LT currentDate>
         <cfset nextBirthday = DateAdd("yyyy", 1, nextBirthday)>
      </cfif>
      <cfset motherBdayRmngDays = DateDiff("d", currentDate,nextBirthday )>
      <cfoutput>
         Days are remaining for mothers birthday is:#motherBdayRmngDays#.
      </cfoutput>
   </cffunction>
</cfcomponent>