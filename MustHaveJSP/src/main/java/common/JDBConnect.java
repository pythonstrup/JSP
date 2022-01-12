package common;

import javax.servlet.ServletContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class JDBConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	public JDBConnect() {
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/musthave?useSSL=false&characterEncoding=UTF-8&serverTimezone=UTC";
			String user = "root";
			String pwd = "1234";
			
			
//			Class.forName(application.getInitParameter("MySQLDriver"));
//			String url = "jdbc:mysql://localhost:3306/musthave?useSSL=false&characterEncoding=UTF-8&serverTimezone=UTC";
//			String user = application.getInitParameter("MySQLId");
//			String pwd = application.getInitParameter("MySQLPwd");
			
			con = DriverManager.getConnection(url, user, pwd);
			
			System.out.println("DB Connection Success");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if (rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			
			System.out.println("JDBC Disconnection!");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
