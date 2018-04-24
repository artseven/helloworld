<cfquery name="FirstQuery" datasource="SQLAuthority">
	SELECT TOP 1 *
	FROM Person.Address
</cfquery>

<br>
<html>
	<body>
		Let us Display the Results<br>
		First Record:<br>
		<cfoutput>
			AddressID: #FirstQuery.AddressID#<br>
			AddressLine1: #FirstQUery.AddressLine1#<br>
			City: #FirstQuery.City#<br>
			PostalCode: #FirstQuery.PostalCode#<br>
		</cfoutput>
	</body>
</html>