<html>
	<body>
		<cfset sampleVar = 'Test'>
		<cfset samplevar1 = 'Test'>
		
		<cfif sampleVar EQ 'Test'>
			sampleVar is Equal to Test<br>
		</cfif>
		
		<cfif sampleVar NEQ 'Test1'>
			sampleVar is NOT Equal to Test1<br>
		</cfif>
		
		<cfif sampleVar EQ sampleVar1>
			sampleVar is Equal to sampleVar1<br>
		</cfif>	
	</body>
</html>