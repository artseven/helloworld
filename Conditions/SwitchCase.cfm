<html>
	<body>
		<cfparam name="url.Month" default="0">
		<cfswitch expression="#url.Month#" >
			<cfcase value=1 >
				January is the first month of the year!
			</cfcase>
			<cfcase value=12>
				December is the last month of the year!
			</cfcase>
			<cfcase value="2,3,4,5,6,7,8,9,10,11">
				You selected a good month.
			</cfcase>
			<cfdefaultcase>
				You entered an invalid month.
			</cfdefaultcase>
		</cfswitch>
	</body>
</html>