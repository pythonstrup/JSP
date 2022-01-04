<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.util.*" %>

<html>

<body>
<h1>To Do List</h1>

<!-- todo목록을 입력할 HTML 폼 만들기 -->
<form action="todoList.jsp">
	ToDo리스트 추가하기: <input type="text" name="task">
	<input type="submit" value="Submit"><br>
</form>
<hr>


<!-- ToDo 목록 세션에 추가하기 -->
<%
	// 예전에 만들어 놓은 세션이 있다면 그 세션의 값을 반환받음
	List<String> todoList = (List<String>) session.getAttribute("mySession");
	
	if(todoList == null){
		// 세션의 반환값이 비어있다면 list를 새로 생성
		todoList = new ArrayList<String>();
		session.setAttribute("mySession", todoList);
	}
	
	// 폼에서 입력한 값을 request로 받아옴
	String task = request.getParameter("task");
	
	// ToDo리스트 추가하기에서 아무값도 입력하지 않았을 때를 예외처리
	boolean isNotEmpty = (task != null) && (task.trim().length() > 0);
	// ToDo리스트에 똑같은 값이 들어가는 것을 방지
	boolean isNotDuplicate = (task != null) && (!todoList.contains(task.trim()));
	if (isNotEmpty && isNotDuplicate) {
		todoList.add(task.trim());
	}
%>

<!-- 세션으로부터 정보 가져와서 사용자에게 보여주기 -->
<h2>ToDo 목록</h2>
<ol>
<%
	for(String str: todoList) {
		out.println("<li>" + str + "</li>");
	}
%>
</ol>
</body>

</html>