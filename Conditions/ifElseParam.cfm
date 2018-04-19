<html>
	<body>
		<cfparam name="url.Month" default="0">
		<cfif url.Month EQ 1>
			January is the first month of the year!
		<cfelseif url.Month EQ 12>
			December is the last month of the year!
		<cfelseif url.Month GT 1 AND url.Month LT 12>
			You selected a good month.
		<cfelse>
			You entered invalid month.
		</cfif>
	</body>
</html>