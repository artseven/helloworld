<html>
	<body>
		<cfif IsDefined('url.Month') EQ TRUE AND url.Month EQ 1>
			January is the first month of the year!
		<cfelseif IsDefined('url.Month') EQ TRUE AND url.Month EQ 12>
			Decemeber is the last month of the year!
		<cfelseif IsDefined('url.Month') EQ TRUE AND (url.Month GT 1 AND url.Month LT 12)>
			You selected a good month.
		<cfelse>
			You entered invalid month.
		</cfif>
	</body>
</html>