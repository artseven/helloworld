<head>
	<body>
		<cfset mydate = now()>
		<cfoutput>
			Row Data: #mydate#<br>
			Date in mm-dd-yyyy: #dateformat(mydate, 'mm-dd-yyyy')#<br>
			Date in yyyy-mm-dd: #dateformat(mydate, 'yyyy-mm-dd')#<br>
			Last month: #dateadd("m",-1,mydate)#<br>
			Next month: #dateformat(dateadd("m", 1, mydate), 'mm-dd-yyyy')#<br>
			Days in Current month: #DaysInMonth(mydate)#<br>
			-------------------------------------------<br>
			Raw Data again: #mydate#<br>

		</cfoutput>
	</body>
</head>