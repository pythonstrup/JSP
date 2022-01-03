<%@ page import="com.bigbell.practiceClass.*" %>

<html>
<head>

<title>Using Class</title>
</head>
<body>

<h3>This is Class Practice.</h3>

<%
	int a = 10;
	int b = 5;
	out.println(a + " + " + b + " = " + Calculator.adder(a, b) + "<br>"); 
	out.println(a + " - " + b + " = " + Calculator.subtract(a, b) + "<br>");
%>
</body>
</html>