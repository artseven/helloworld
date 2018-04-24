<cfquery name="FirstQuery" datasource="SQLAuthority">
	SELECT *
	FROM Person.Address
</cfquery>

<br>
<html>
	<body>
		Let us Display the Results<br>
		----------------------------------------------<br>
		<cfoutput query="FirstQuery">
			AddressID: #FirstQuery.AddressID[1]#<br>
			AddressLine1: #FirstQUery.AddressLine1[1]#<br>
			City: #FirstQuery.City[1]#<br>
			PostalCode: #FirstQuery.PostalCode[1]#<br>
		</cfoutput>
		<br>

	</body>
</html>