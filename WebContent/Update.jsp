<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page">
</jsp:useBean>
<%
int id=Integer.parseInt(request.getParameter("id"));
String sql_select="select * from student where sno="+id;
ResultSet rs=db.select(sql_select);

rs.next();

 %>

<html>
<head>
<title>���ݿ�����JavaBeanʹ��ʾ��</title>
</head>
<body>

<%--
��ǩinput��������readonly=������ֻ��ģʽ��
������readonly=��disabled��ʱ���������ɴ��ݣ�
--%>

<form action="Update_done.jsp"  method="post">
		sno:<input type="text" name="sno" value=<%=rs.getInt("sno")%> size="10" readonly=���� />
               &nbsp;sname:<input type="text" name="sname" value=<%=rs.getString("sname")%> size="10" />
		sgrade:<input type="text" name="sgrade" value=<%=rs.getInt("sgrade")%> size="10" />
		<input type="submit" value="�޸�" />
</form>

</body>
</html>
