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
<title>���ݿ�����JavaBeanʹ��ʾ��</title>
</head>
<body>
	<font size="2"><strong> �ɹ�ɾ�����ݣ�
	<a href="Query.jsp">�鿴��ǰ���ݿ�����</a>
	</strong><br> </font>
	
</body>
</html>
