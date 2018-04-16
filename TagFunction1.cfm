<html>
	<body>
		<cfif LEN(form.userName)>
			<cfoutput> Hello #form.userName#<br>
				As you were born on #dateformat(form.birthDate, "long")#
				you are #datediff("yyyy", form.birthDate, now())# year
			<cfif
					datediff("yyyy", form.birthDate, now()) gt 1>s</cfif> old.</cfoutput>
		<cfelse>
			Your name can't be an empty string!
		</cfif>
	</body>
	
</html>