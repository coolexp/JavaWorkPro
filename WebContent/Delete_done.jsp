<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page">
</jsp:useBean>
<%
int id=Integer.parseInt(request.getParameter("id"));
String sql_delete="delete from student where sno= " + id;
db.delete(sql_delete);
 %>

<html>
<head>
<title>数据库连接JavaBean使用示例</title>
</head>
<body>
	<font size="2"><strong> 成功删除数据！
	<a href="Query.jsp">查看当前数据库数据</a>
	</strong><br> </font>
	
</body>
</html>
