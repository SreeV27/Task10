<cfcomponent>
   <cffunction name="dateFormatting" access="public">
      <cfset local.currentDate = CreateDateTime(
      Year(Now()), Month(Now()), Day(Now()))>
      <cfset local.formattedDate = DateFormat(local.currentDate, 'dd-mm-yyyy')>
      <cfset  local.monthInword= DateTimeFormat(local.currentDate,"mmmm")>
      <cfset  local.monthInNumeric= DateTimeFormat(local.currentDate,"mm")>
      <cfoutput>Today's date:#local.formattedDate#</cfoutput>
      <br>
      <cfoutput>Month in Numeric:#local.monthInNumeric#</cfoutput>
      <br>
      <cfoutput> Month in Word:#local.monthInWord#</cfoutput>
      <br>
      <cfset local.dtThisMonth = CreateDate(Year( Now() ),Month( Now() ),	1) />
      <!---
         Now, get the last day of the current month. We
         can get this by subtracting 1 from the first day
         of the next month.
         --->
      <cfset local.dtLastDay = (DateAdd( "m", 1, local.dtThisMonth ) -1) />
      <!-- Format the date in "yyyy-mm-dd" format -->
      <cfset local.formattedDate = DateFormat(local.dtLastDay, "dd-mm-yyyy") />
      <cfoutput>Last Date: #local.formattedDate#</cfoutput>
      <br>
      <cfset local.today = Now()>
      <!-- Get the last day of the current month -->
      <cfset local.lastDayOfMonth = CreateDateTime(
      Year(local.today),
      Month(local.today) + 1,
      1,
      0, 0, 0
      ) - CreateTimeSpan(0, 0, 1, 0)>
      <cfset local.lastDayOfMonth = DateAdd("d", -1, local.lastDayOfMonth)>
      <!-- Calculate the date of the last Friday within the current month -->
      <cfloop condition="DayOfWeek(lastDayOfMonth) neq 6">
         <cfset local.lastDayOfMonth = DateAdd("d", -1, local.lastDayOfMonth)>
      </cfloop>
      <!-- Format the date as desired (e.g., "dd-mm-yyyy") -->
      <cfset local.formattedDate = DateFormat(local.lastDayOfMonth, 'dd-mm-yyyy')>
      <cfoutput>Last Friday : #local.formattedDate#</cfoutput>
      <br>
      <cfset today = Now()>
      <cfoutput>
         <table class="m-auto">
            <style>
               .red { color: red; }
               .green { color: green; }
               .orange { color: orange; }
               .yellow { color: pink; }
               .bold-black { color: black; font-weight: bold; }
               .blue { color: blue; }
               .bold-red { color: red; font-weight: bold; }
            </style>
            <tr>
               <th>Date</th>
               <th>Day</th>
            </tr>
            <cfloop from="0" to="4" index="i">
               <tr>
                  <cfset currentDate = DateAdd("d", i, today)>
                  <cfset currentDayOfWeek = DayOfWeek(currentDate)>
                  <cfset currentDay = DayOfWeekAsString(currentDayOfWeek)>
                  <td>
                     <cfif currentDayOfWeek EQ 1>
                        <span class="red">#DateFormat(currentDate, "dd/mm/yy")#</span>
                        <cfelseif currentDayOfWeek EQ 2>
                        <span class="green">#DateFormat(currentDate, "dd/mm/yy")#</span>
                        <cfelseif currentDayOfWeek EQ 3>
                        <span class="orange">#DateFormat(currentDate, "dd/mm/yy")#</span>
                        <cfelseif currentDayOfWeek EQ 4>
                        <span class="yellow">#DateFormat(currentDate, "dd/mm/yy")#</span>
                        <cfelseif currentDayOfWeek EQ 5>
                        <span class="bold-black">#DateFormat(currentDate, "dd/mm/yy")#</span>
                        <cfelseif currentDayOfWeek EQ 6>
                        <span class="blue">#DateFormat(currentDate, "dd/mm/yy")#</span>
                        <cfelseif currentDayOfWeek EQ 7>
                        <span class="bold-red">#DateFormat(currentDate, "dd/mm/yy")#</span>
                     </cfif>
                  </td>
                  <td>
                     <cfif currentDay EQ "Sunday">
                        <span class="red">#currentDay#</span>
                        <cfelseif currentDay EQ "Monday">
                        <span class="green">#currentDay#</span>
                        <cfelseif currentDay EQ "Tuesday">
                        <span class="orange">#currentDay#</span>
                        <cfelseif currentDay EQ "Wednesday">
                        <span class="yellow">#currentDay#</span>
                        <cfelseif currentDay EQ "Thursday">
                        <span class="bold-black">#currentDay#</span>
                        <cfelseif currentDay EQ "Friday">
                        <span class="blue">#currentDay#</span>
                        <cfelseif currentDay EQ "Saturday">
                        <span class="bold-red">#currentDay#</span>
                     </cfif>
                  </td>
               </tr>
            </cfloop>
         </table>
      </cfoutput>
   </cffunction>
</cfcomponent>