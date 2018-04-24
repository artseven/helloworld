<cfoutput>

<cfif isdefined('form.Submit')>
	<cfquery name="UpdateProducts" datasource="Products">
		UPDATE Products
		SET ProductName = '#form.ProductName#',
			Color = '#form.Color#'
		WHERE ID = #URL.ID#;
	</cfquery>
	<cfquery name="UpdateProductDetails" datasource="Products">
		UPDATE ProductStockDetails
		SET Price = #form.Price#,
			Quantity = #form.Quantity#,
			Discount = #form.Discount#
		WHERE ID = #URL.ID#;
	</cfquery>
	The Records Successfully Updated. <br>
</cfif>

<cfquery name="ProductDetails" datasource="Products">
	SELECT p.ID, p.ProductName, p.Color, psl.Price, psl.Quantity, psl.Discount
	FROM Products p
	INNER JOIN ProductStockDetails psl ON p.ID = psl.ProductID
	WHERE p.ID = #URL.ID#
</cfquery>
	
<cfif URL.Operation EQ 'View'>
	<table border="2">
		<tr><td><b>ProductName:</b></td><td>#ProductDetails.ProductName#</td></tr>
		<tr><td><b>Color:</b></td><td>#ProductDetails.Color#</td></tr>
		<tr><td><b>Price:</b></td><td>#ProductDetails.Price#</td></tr>
		<tr><td><b>Quantity:</b></td><td>#ProductDetails.Quantity#</td></tr>
		<tr><td><b>Discount:</b></td><td>#ProductDetails.Discount#</td></tr>
		<tr><td><b>Edit:</b></td><td>
			<a href="ProductDetails.cfm?ID=#URL.ID#&Operation=Edit">Edit</a></td></tr>
	</table>
<cfelse>
	<form method="post" action="ProductDetails.cfm?ID=#URL.ID#&Operation=View">
	<table border="2">
		<tr><td><b>ProductName:</b></td><td>
			<input type="text" name="ProductName" value="#ProductDetails.ProductName#"></td></tr>
		<tr><td><b>Color:</b></td><td>
			<input type="text" name="Color" value="#ProductDetails.Color#"></td></tr>
		<tr><td><b>Price:</b></td><td>
			<input type="text" name="Price"  value="#ProductDetails.Price#"></td></tr>
		<tr><td><b>Quantity:</b></td><td>
			<input type="text" name="Quantity"  value="#ProductDetails.Quantity#"></td></tr>
		<tr><td><b>Discount:</b></td><td>
			<input type="text" name="Discount"  value="#ProductDetails.Discount#"></td></tr>
		<input type="hidden" name="ProductName_cfformrequired" value="You must enter valid ProductName.">
		<input type="hidden" name="Color_cfformrequired" value="You must enter valid Color.">
		<input type="hidden" name="Price_cfformrequired" value="You must enter valid Price.">
		<input type="hidden" name="Quantity_cfformrequired" value="You must enter valid Quantity.">
		<input type="hidden" name="Discount_cfformrequired" value="You must enter valid Discount.">	
		<input type="hidden" name="Price_cfforminteger" value="You must enter valid Price.">
		<input type="hidden" name="Quantity_cfforminteger" value="You must enter valid Quantity.">
		<input type="hidden" name="Discount_cfforminteger" value="You must enter valid Discount.">	
		<tr><td><b>Submit:</b></td><td><input type="submit" name="Submit" value="Submit"></td></tr>
	</table>
	</form>
</cfif>
<br>

<a href="ProductList.cfm"><b>Go to Product List</b></a>
</cfoutput>
