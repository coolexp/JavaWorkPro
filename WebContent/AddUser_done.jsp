<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page">
</jsp:useBean>
<%
	String name=request.getParameter("sname");
	int sex=Integer.parseInt(request.getParameter("ssex"));
	String company=request.getParameter("scompany");
	String qq=request.getParameter("sqq");
	String mobile=request.getParameter("smobile");
	String email=request.getParameter("semail");
	int age=Integer.parseInt(request.getParameter("sage"));
 	String sql_insert="INSERT INTO pt_user VALUES ('" + name + "','" 
	+ company + "','" + mobile + "','"+qq+"','"+email+"',"+age+","+sex+")";
	db.insert(sql_insert);
 %>

<html>
<head>
<title>���ݿ�����JavaBeanʹ��ʾ��</title>
</head>
<body>
	<div>
		<div><a href="Insert.jsp">���ؼ���</a></div>
		<div><a href="Query.jsp">�鿴��ǰ���ݿ�����</a></div>
	</div>
</body>
</html>
