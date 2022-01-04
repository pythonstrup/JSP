
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="EUC-KR">
<title>진단표</title>
</head>
<body>
	<h1>진단표</h1>
	
	이름: ${param.name}
	<br><br>
	전화번호: ${param.phone}
	<br><br>
	
	증상 목록: 
	<%
		String[] list = request.getParameterValues("select");
		
		for(String str: list){
			out.println(str + ", ");
		}
	%>
	<br><br>
	스트레스 정도: ${param.degree}
	<br><br>
	원하는 진료과: ${param.diagnosis}
	<br><br>
	

</body>

</html>