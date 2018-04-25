<cfparam name="URL.City" default="">
<cfparam name="URL.PostalCode" default="" >

<cfquery name="FirstQuery" datasource="SQLAuthority">
	SELECT *
	FROM Person.Address
	WHERE City = '#URL.City#'
		<cfif len(URL.POstalCode)>
			AND PostalCode = '#URL.PostalCode#'
		</cfif>
</cfquery>
Total number of records: <cfoutput>#FirstQuery.RecordCount#</cfoutput>
<br>
<html>
	<body>
		<table border="2">
		<cfoutput query="FirstQuery">
			<tr><td>AddressID: #FirstQuery.AddressID#</td></tr>
			<tr><td>AddressLine1: #FirstQUery.AddressLine1#</td></tr>
			<tr><td>City: #FirstQuery.City#</td></tr>
			<tr><td>PostalCode: #FirstQuery.PostalCode#</td></tr>
		</cfoutput>
		</table>
		<br>
	</body>
</html>