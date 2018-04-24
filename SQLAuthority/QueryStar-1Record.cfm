Very First Query
<cfquery name="FirstQuery" datasource="AdventureWorks">
	SELECT TOP 1 *
	FROM Person.Address
</cfquery>
<br>
Let Us Display the Results
<cfdump var="#FirstQuery#">