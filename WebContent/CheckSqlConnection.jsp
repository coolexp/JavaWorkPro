<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试JDBC连接数据库</title>
</head>
<body>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	}catch(Exception ex){
		out.println("Error "+ex);
	}
	try{
		String url = "jdbc:mysql://localhost:3306/mysql";
		String user = "root";
		String password = "";
		Connection conn = DriverManager.getConnection(url, user, password);
		if(!conn.isClosed()){
			out.println("成功连接数据库");
		}
		conn.close();
	}catch(SQLException ex){
		out.println("SQLExceptionMsg:"+ex.getMessage());
		out.println("SQLState:"+ex.getSQLState());
		out.println("ErrorCode:"+ex.getErrorCode());
	}
%>
</body>
</html>