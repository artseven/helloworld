<html>
	<body>
		<cfoutput>
			<cfset Colors = 'white, blue, orange, black, red'>
			List of Colors = #Colors#<br>
			First Color = #listFirst(Colors)#<br>
			Last Color  = #listLast(Colors)#<br>
			2nd Color = #listGetAt(Colors, 2)#<br>
			<cfset Colors = ListSort(Colors, "text", "desc")>
			List of Colors = #Colors#<br>		
		</cfoutput>
	</body>
</html>