<cfcomponent>
   <cffunction name="dateFormatting" access="public">
      <cfset currentDate = CreateDateTime(
      Year(Now()), Month(Now()), Day(Now()))>
      <cfset formattedDate = DateFormat(currentDate, 'dd-mm-yyyy')>
      <cfset  monthInword= DateTimeFormat(currentDate,"mmmm")>
      <cfset  monthInNumeric= DateTimeFormat(currentDate,"mm")>
      <cfoutput>Today's date:#formattedDate#</cfoutput>
      <br>
      <cfoutput>Month in Numeric:#monthInNumeric#</cfoutput>
      <br>
      <cfoutput> Month in Word:#monthInWord#</cfoutput>
      <br>
      <cfset dtThisMonth = CreateDate(Year( Now() ),Month( Now() ),	1) />
      <!---
         Now, get the last day of the current month. We
         can get this by subtracting 1 from the first day
         of the next month.
         --->
      <cfset dtLastDay = (DateAdd( "m", 1, dtThisMonth ) -1) />
      <!-- Format the date in "yyyy-mm-dd" format -->
      <cfset formattedDate = DateFormat(dtLastDay, "dd-mm-yyyy") />
      <cfoutput>Last Date: #formattedDate#</cfoutput>
      <br>
      <cfset today = Now()>
      <!-- Get the last day of the current month -->
      <cfset lastDayOfMonth = CreateDateTime(
      Year(today),
      Month(today) + 1,
      1,
      0, 0, 0
      ) - CreateTimeSpan(0, 0, 1, 0)>
      <cfset lastDayOfMonth = DateAdd("d", -1, lastDayOfMonth)>
      <!-- Calculate the date of the last Friday within the current month -->
      <cfloop condition="DayOfWeek(lastDayOfMonth) neq 6">
         <cfset lastDayOfMonth = DateAdd("d", -1, lastDayOfMonth)>
      </cfloop>
      <!-- Format the date as desired (e.g., "dd-mm-yyyy") -->
      <cfset formattedDate = DateFormat(lastDayOfMonth, 'dd-mm-yyyy')>
      <cfoutput>Last Friday : #formattedDate#</cfoutput>
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