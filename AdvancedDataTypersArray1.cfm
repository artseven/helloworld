<html>
	<body>
		<cfoutput>
			<cfset items = ArrayNew(2)>
			<cfset items[1][1] = 'Bike'>
			<cfset items[1][2] = 'White'>
			<cfset items[2][1] = 'Scooter'>
			<cfset items[2][2] = 'Blue'>
			<cfset items[3][1] = 'Car'>
			<cfset items[3][2] = 'Yellow'>
			<cfdump var="#items#">
			Length of the Array #ArrayLen(items)#<br>
		</cfoutput>
	</body>
</html>