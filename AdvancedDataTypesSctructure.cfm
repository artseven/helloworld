<html>
	<body>
		<cfoutput>
			<cfset items = StructNew()>
			<cfset items.name = 'Bike'>
			<cfset items.color = 'White'>
			<cfset items.size = 'Small'>
			<cfdump var="#items#">
			I have a #items.name# of #items.color# color and it is of #items.size# size.<br>
			Struct key List: #StructKeyList(items)# <br>
			-------------------------------------------
			Check the existence of the Structure Key: <br>
			Size Exist? : #StructKeyExists(items, "size")#<br>
			Size1 Exist?: #StructKeyExists(items, "size1")#
		</cfoutput>
	</body>
</html>