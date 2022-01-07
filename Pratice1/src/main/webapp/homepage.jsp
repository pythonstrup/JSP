<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page import="java.net.URLEncoder"%> 
<%@ page import="java.util.*" %>

<html>
<head>
	<title>구직사이트</title>
</head>
<%
	// 쿠키가 설정되기 전 초기화
	String job = "개발자";
	
	// 쿠키 값 가져오기
	Cookie[] jobCookies = request.getCookies();
	
	if(jobCookies != null){
		for(Cookie temp: jobCookies) {
			// 내가 선택한 값과 쿠키의 값이 동일하면 선택
			if("jobSite.jobSearch".equals(temp.getName())){
				job = temp.getValue();
				break;
			}
		}
	}
%>
<body>
<a href="selectPage.jsp">당신의 관심 구직분야를 선택하세요!</a><br><br>


<h2><%= job %>로서 경력을 개발하세요</h2>
1. 000 님의 <%= job %> 성공기<br>
2. <%= job %>로 취업하는 법은?<br><br>

<h2><%= job %>를 뽑는 회사</h2>
1. 00 회사
2. ㅁㅁ 회사
3. @@ 회사


</body>

</html>