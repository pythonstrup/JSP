<html>

<body>
<%!

public static int add(int a, int b){
	return a + b;
}

public static int subtract(int a, int b){
	return a - b;
}

%>

5 + 2 = <%= add(5, 2) %> <br>
10 - 2 = <%= subtract(10, 2) %> <br>

</body>

</html>