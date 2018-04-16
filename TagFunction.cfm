<html>
	<body>
		<cfoutput>
			<form action="TagFunction1.cfm" method="post">
				Your Name: <input type="text" name="userName"><br>
				Your Birthday: <input type="text" name="birthDate" value="#dateformat(now(), "mm-dd-yyyy")#">
				<input type="submit" value="Click to Submit">
			</form>
		</cfoutput>
	</body>
</html>