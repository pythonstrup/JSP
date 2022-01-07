<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page import="java.net.URLEncoder"%> 
<%@ page import="java.util.*" %>


<html>
<head>
	<title>구직사이트</title>
</head>
<%
	// SelectPage에서 선택한 직업을 job에 저장
	String job = request.getParameter("wantJob");

	// 쿠키 생성
	Cookie jobCookie = new Cookie("jobSite.jobSearch", job);
	
	// 유효기간 6개월(180일) 
	jobCookie.setMaxAge(60*60*24*180);
	
	// 만든 쿠키 저장
	response.addCookie(jobCookie);
%>
<body>
	감사합니다!! <br>
	당신의 관심사는 ${param.wantJob} 으로 설정되었습니다.
	<br><br>
	
	<a href="homepage.jsp">구직하러가기</a>


</body>

</html>