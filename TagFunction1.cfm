<html>
	<body>
		<cfif LEN(form.userName)>
			<cfoutput> Hello #form.userName#<br>
				As you were born on #dateformat(form.birthDate, "long")#
				you are #datediff("m", form.birthDate, now())# months old.
			</cfoutput>
		<cfelse>
			Your name can't be an empty string!
		</cfif>
	</body>
	
</html>