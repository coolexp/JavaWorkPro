<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page"></jsp:useBean>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String valueTemplate = "SELECT * FROM pt_user WHERE name='%s' AND password='%s'";
 	String sql = String.format(valueTemplate, username,password);
 	ResultSet rs = db.select(sql);
 	String msg="";
 	int result = 1;
 	while(rs.next()){
 		result = 0;
 	}
 	if(result == 1){
 		msg="登陆失败,请检查用户名与密码正确与否";
 	}else{
 		msg = "欢迎, "+username;
 	}
 %>

<!Doctype html>
<html xmlns=http://www.w3.org/1999/xhtml>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=msg%>></title>
<style type="text/css">
	.classTable{ width:1000px;border:none;  border-collapse: collapse;}
	.classTable td{border:1px solid #999999; height:40px;}
	a.classLink{ text-decoration:underline;color:#FF0000;} 
	a.classLink:hover{ text-decoration:underline;color:#FF6600;} 
	.container{ width:1000px; margin:0 auto;}
</style>

</head>
<body>
	<div class="container">
		<h1><%=msg%></h1>
		<%
			if(result==1){		
		%>
			<h3><a href="login.jsp" class="classLink">重新登陆</a></h3>
		<%
		}
		%>
	</div>
</body>
</html>
