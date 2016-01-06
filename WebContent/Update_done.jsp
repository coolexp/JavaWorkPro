<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page">
</jsp:useBean>
<%
int no=Integer.parseInt(request.getParameter("sno"));
String name=request.getParameter("sname");
int grade=Integer.parseInt(request.getParameter("sgrade"));
String sql_update="update student set sname='" + name + "',sgrade=" + grade + " where sno=" + no + "";
db.update(sql_update);
 %>

<html>
<head>
<title>数据库连接JavaBean使用示例</title>
</head>
<body>


	<font size="2"><strong> 成功修改数据！
	<a href="Query.jsp">查看当前数据库数据</a>
	</strong><br> </font>
	
	
	
</body>
</html>
