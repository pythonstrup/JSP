<html>

<head><title>Student Confirmation Title</title></head>

<body>

	The student is confirmed: ${param.firstName} ${param.lastName}
	<br><br>
	
	<!-- display list of data -->
	The student's Favorite Programming Language:
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
			
			for(String tempLang: langs){
				out.println("<li>" + tempLang + "</li>");
			}
		%>
	</ul>

</body>

</html>