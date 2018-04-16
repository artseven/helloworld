<head>
	<body>
		<cfset mydate = now()>
		<cfoutput>
			mydate: #mydate#<br>
		</cfoutput>
		<cfset mydate = dateformat(mydate, 'mm-dd-yyyy')>
		<cfoutput>
			mydate: #mydate#<br>
		</cfoutput>
		<cfset mydate = dateformat(mydate, 'yyyy-mm-dd')>
		<cfoutput>
			mydate: #mydate#<br>
		</cfoutput>
		<cfset mydate = timeformat(mydate, 'full')>
		<cfoutput>
			mydate: #mydate#<br>
		</cfoutput>
	</body>
</head>