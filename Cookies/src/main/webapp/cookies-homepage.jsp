<html>

<body>
<h2>Training Portal</h2>

<!-- read the favorite programming language cookie -->
<%
	String favLang = "Java";

	Cookie[] theCookies = request.getCookies();
	
	if(theCookies != null){
		for(Cookie tempCookie : theCookies) {
			if("myApp.favoriteLanguage".equals(tempCookie.getName())){
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<!-- show a personalized page -->
<h3>New Books for <%= favLang %></h3>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h3>Latest News reports for <%= favLang %></h3>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h3>Hot Jobs for <%= favLang %></h3>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>

</html>