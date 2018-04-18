<html>
	<body>
		<cfoutput>
			<cfset items = ArrayNew(1)>
			<cfset items[1] = 'Bike'>
			<cfset items[2] = 'Scooter'>
			<cfset items[3] = 'Car'>
			<cfdump var="#items#" >
			Append to Array <cfset #ArrayAppend(items, 'Truck')#><br>
			<cfdump var="#items#">
			Array to List <cfset listItems = ArrayToList(items, ",")>
			List Output: #listItems#
		</cfoutput>
	</body>
</html>