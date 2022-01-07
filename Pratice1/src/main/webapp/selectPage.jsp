<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page import="java.net.URLEncoder"%> 
<%@ page import="java.util.*" %>

<html>

<head>
	<title>구직사이트</title>
</head>

<body>

<form action="personalPage.jsp">
	원하는 분야를 선택하세요!
	<select name="wantJob">
		<option>개발자</option>
		<option>간호사</option>
		<option>기획자</option>
		<option>카피라이터</option>
		<option>도면설계가</option>
		<option>디자이너</option>
	</select>
	<br><br>
	
	<input type="submit" value="Submit">
</form>


</body>

</html>