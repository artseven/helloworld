<cfquery name="LoginCheck" datasource="Products">
SELECT UserName, Password
FROM Accounts
WHERE UserName = '#form.Username#' AND Password = '#form.Password#'
</cfquery>

<cfoutput>
	<cfif LoginCheck.Recordcount GT 0>
		You logged in Successfully.<br>
		<a href="ProductList.cfm">Click Here to Continue...</a>
	<cfelse>
		Incorrect Username or Password.<br>
		<a href="login.cfm">Click Here to go to Login Page.</a> 
	</cfif>
</cfoutput>