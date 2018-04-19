<html>
	<body>
		<cfif IsDefined('url.SampleVar') EQ 'TRUE' >
			URL Sample Variable is 
			<cfoutput>
				#url.SampleVar#
			</cfoutput>
		<cfelse>
			There is no URL Sample Variable defined.
		</cfif>
	</body>
</html>