<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page">
</jsp:useBean>
<html>
<head>
<title>数据库连接JavaBean使用示例</title>
</head>
<body>
	<font size="2"><strong> 本页面利用JavaBean实现插入数据库的功能：</strong><br></font>
	<form action="Insert_done.jsp" method="post">
		学号：<input type="text" name="sno" size="10" /> <br/>
		姓名：<input type="text" name="sname" size="10" /> <br/>
		成绩：<input type="text" name="sgrade" size="10" /> <br/>
		<input type="submit" value="提交" />
	</form>
	
</body>
</html>

