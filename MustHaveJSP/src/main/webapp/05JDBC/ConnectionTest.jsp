<%@ page import="common.JDBConnect" %>
<%@ page import="common.DBConnPool" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<html>

<head><title>JDBC</title></head>
<body>
	<h2>JDBC 테스트 1</h2>
	<%
	//String url = application.getInitParameter("MySQLURL");
	//String user = application.getInitParameter("MySQLId");
	//String pwd = application.getInitParameter("MySQLPwd");
	//JDBConnect jdbc = new JDBConnect(url, user, pwd);
	
	//JDBConnect jdbc = new JDBConnect();
	
	JDBConnect jdbc = new JDBConnect();
	
	jdbc.close();
	%>
	
	<%
	String drv = application.getInitParameter("MySQLDriver");
	String url = application.getInitParameter("MySQLURL");
	String user = application.getInitParameter("MySQLId");
	String pwd = application.getInitParameter("MySQLPwd");
	JDBConnect jdbc1 = new JDBConnect(drv, url, user, pwd);
	
	jdbc1.close();
	%>
	
	<h2>Connection Pool Test</h2>
	<%
	DBConnPool pool = new DBConnPool();
	pool.close();
	%>
</body>
</html>