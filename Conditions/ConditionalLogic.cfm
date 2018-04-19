<html>
	<body>
		<cfset Month=1>
		<cfoutput>
			<cfloop condition="Month lt 13">
				#MonthAsString(Month)#<br>
				<cfset Month++>
			</cfloop>
		</cfoutput>
	</body>
</html>