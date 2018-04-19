<html>
	<body>
		<cfif IsDefined('url.Month') EQ 'TRUE'>
			<cfif url.Month EQ 1>
				January is the first month of the year!
			<cfelseif url.Month EQ 12>
				December is the last month of the year!
			<cfelseif url.Month GT 1 AND url.Month LT 12>
				You selected a good month.
			<cfelse>
				You entered invalid month.
			</cfif>
		<cfelseif IsDefined('url.Year') EQ 'TRUE'>
			<cfif url.Year LT YEAR(NOW())>
				Old is Gold!
			<cfelseif url.Year GT YEAR(NOW())>
				Save Nature for Future!
			<cfelse>
				This Year!
			</cfif>
		<cfelse>
			There is no URL Variable.
		</cfif>
	</body>
</html>