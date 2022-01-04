<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.net.URLEncoder"%>

<html>
<head>
<meta charset="EUC-KR">
<title>진단표</title>
</head>
<body>
	<h1>진단표</h1>
	
	<form action="response.jsp">	
		이름: <input type="text" name="name">
		<br><br>
		전화번호: <input type="text" name="phone">
		<br><br>
		
		최근 나타난 증상<br>
		<input type="checkbox" name="select" value="심장 문제"> 불규칙한 맥박
		<input type="checkbox" name="select" value="호흡곤란"> 호흡곤란
		<input type="checkbox" name="select" value="근육통"> 근육통<br>
		<input type="checkbox" name="select" value="두통"> 두통
		<input type="checkbox" name="select" value="어지럼증"> 어지럼증
		<br><br>
		
		스트레스 정도<br>
		<input type="radio" name="degree" value="문제 없음"> 전혀 없음
		<input type="radio" name="degree" value="문제 없음"> 약간 없음
		<input type="radio" name="degree" value="문제 없음"> 보통
		<input type="radio" name="degree" value="주의 요망"> 약간 있음
		<input type="radio" name="degree" value="관리 필요"> 많음
		<br><br>
		
		원하는 진료과<br>
		<select name="diagnosis">
			<option>외과</option>
			<option>내과</option>
			<option>정형외과</option>
			<option>이비인후과</option>
			<option>정신과</option>
		</select>
		<br><br>
		
		<input type="submit" value="submit">
	</form>
</body>

</html>