<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page">
</jsp:useBean>
<html>
<head>
<title>���ݿ�����JavaBeanʹ��ʾ��</title>
</head>
<body>
	<font size="2"><strong> ��ҳ������JavaBeanʵ�ֲ������ݿ�Ĺ��ܣ�</strong><br></font>
	<form action="Insert_done.jsp" method="post">
		ѧ�ţ�<input type="text" name="sno" size="10" /> <br/>
		������<input type="text" name="sname" size="10" /> <br/>
		�ɼ���<input type="text" name="sgrade" size="10" /> <br/>
		<input type="submit" value="�ύ" />
	</form>
	
</body>
</html>

