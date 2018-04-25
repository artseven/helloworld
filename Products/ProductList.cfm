<cfquery name="ProductList" datasource="Products">
SELECT ID, ProductName, Color
FROM Products p
</cfquery>

<table border="2">
	<tr><td><b>ID</b></td><td><b>ProductName</b></td><td><b>Color</b></td><td>
		<b>Details</b></td><td><b>Edit</b></td></tr>
	<cfoutput query="ProductList">
		<tr>
		<td>#ProductList.ID#</td>
		<td>#ProductList.ProductName#</td>
		<td>#ProductList.Color#</td>
		<td><a href="ProductDetails.cfm?ID=#ProductList.ID#&Operation=View">View</a></td>
		<td><a href="ProductDetails.cfm?ID=#ProductList.ID#&Operation=Edit">Edit</a></td>
		</tr>
	</cfoutput>
</table>
