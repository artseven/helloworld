<cfquery name="ProductList" datasource="Products">
	SELECT p.ID, p.ProductName, p.Color, psl.Price, psl.Quantity, psl.Discount
	FROM Products p
	INNER JOIN ProductStockDetails psl ON p.ID = psl.ProductID
</cfquery>

<table border="2">
	<tr><td><b>ID</b></td><td><b>ProductName</b></td><td><b>Color</b></td><td><b>Price</b></td>
		<td><b>Quantity</b></td><td><b>Discount</b></td><td><b>Edit</b></td></tr>
	<cfoutput query="ProductList">
		<tr>
		<td>#ProductList.ID#</td>
		<td>#ProductList.ProductName#</td>
		<td>#ProductList.Color#</td>
		<td>#ProductList.Price#</td>
		<td>#ProductList.Quantity#</td>
		<td>#ProductList.Discount#</td>
		<td><a href="ProductDetails.cfm?ID=#ProductList.ID#&Operation=Edit">Edit</a></td></tr>
	</cfoutput>
</table>
