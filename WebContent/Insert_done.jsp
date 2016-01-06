<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page">
</jsp:useBean>
<%
int no=Integer.parseInt(request.getParameter("sno"));
String name=request.getParameter("sname");
int grade=Integer.parseInt(request.getParameter("sgrade"));
 String sql_query="select 1 from student where sno="+no;
 ResultSet rs = db.select(sql_query);
 if(!rs.next()){

String sql_insert="insert student values (" + no + ",'" + name + "'," + grade + ")";
db.insert(sql_insert);
 }else
 out.print("<script>alert('添加失败！'); window.location='Insert.jsp' </script>");
 %>

<html>
<head>
<title>数据库连接JavaBean使用示例</title>
</head>
<body>
	<font size="2"><strong> 成功插入数据！<a href="Insert.jsp">返回继续</a></br>
	<a href="Query.jsp">查看当前数据库数据</a>
	</strong><br> </font>
	
</body>
</html>
