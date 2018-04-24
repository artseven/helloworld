<html>
<head>
<cfif NOT (cgi.script_name EQ '/products/login.cfm' OR cgi.script_name EQ '/products/logincheck.cfm')>
	<div style="float: left;">Header <a href="ProductList.cfm">ProductList</a> 
		<a href="ProductListAll.cfm">All Product List<a/></div>
	<div style="float: right;"><a href="Login.cfm">Logout</a></div>
</cfif>
<br>
<hr>
</head>
<body>
