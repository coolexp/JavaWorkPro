<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page"></jsp:useBean>
<%
  
	String name=request.getParameter("sname");
	String password=request.getParameter("spassword");
	int sex=Integer.parseInt(request.getParameter("ssex"));
	String company=request.getParameter("scompany");
	String qq=request.getParameter("sqq");
	String mobile=request.getParameter("smobile");
	String email=request.getParameter("semail");
	int age=Integer.parseInt(request.getParameter("sage"));
	String valueTemplate = "INSERT INTO pt_user (name,password,company,tell,qq,email,age,sex) VALUES ('%s','%s','%s','%s','%s','%s',%d,%d)";
 	String sql_insert = String.format(valueTemplate, name,password,company,mobile,qq,email,age,sex);
	db.insert(sql_insert);
 %>

<!Doctype html>
<html xmlns=http://www.w3.org/1999/xhtml>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据库连接JavaBean使用示例</title>
<style type="text/css">
	.classTable{ width:1000px;border:none;  border-collapse: collapse;}
	.classTable td{border:1px solid #999999; height:40px;}
	a.classLink{ text-decoration:underline;color:#000000;} 
	a.classLink:hover{ text-decoration:underline;color:#FF6600;} 
	.container{ width:1000px; margin:0 auto;}
</style>
</head>
<body>
	<div class="container">
		<h1>插入数据成功</h1>
		<div style="float:left;width:100px;"><a href="AddUser.jsp">返回继续</a></div>
		<div style="float:left;width:200px;"><a href="ListUser.jsp">查看当前数据库数据</a></div>
		<div style="clear:both;"></div>
	</div>
</body>
</html>
