<html>

<body>

<h3>Hello World of Java</h3>

<%
	String str = "Scriptlet";
	
	for(int i = 0; i<2; i++){
		out.println(str+"<br>");
	}
	
	int number = 10;
	if(number > 15){
		out.println("this is big number!");
	} else {
		out.println("this is small number...");
	}
%>

</body>

</html>