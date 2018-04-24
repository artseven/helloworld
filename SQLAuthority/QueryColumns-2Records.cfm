<cfquery name="FirstQuery" datasource="SQLAuthority">
	SELECT TOP 2 *
	FROM Person.Address
</cfquery>

<br>
<html>
	<body>
		Let us Display the Results<br>
		First Record:<br>
		<cfoutput>
			AddressID: #FirstQuery.AddressID[1]#<br>
			AddressLine1: #FirstQUery.AddressLine1[1]#<br>
			City: #FirstQuery.City[1]#<br>
			PostalCode: #FirstQuery.PostalCode[1]#<br>
		</cfoutput>
		<br>
		Second Record:<br>
		<cfoutput >
			AddressID: #FirstQuery.AddressID[2]#<br>
			AddressLine1: #FirstQuery.AddressLine1[2]#<br>
			City: #FirstQuery.City[2]#<br>
			PostalCode: #FirstQuery.PostalCode[2]#<br>
		</cfoutput>
	</body>
</html>