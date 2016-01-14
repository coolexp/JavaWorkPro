<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.nikoer.vo.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page"></jsp:useBean>
<!Doctype html>
<html xmlns=http://www.w3.org/1999/xhtml>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table style="width:1000px;border:1px solid #999999;padding:10px;">
  <tr>
    <td>编号</td>
    <td>用户名</td>
    <td>公司名</td>
    <td>电话</td>
    <td>QQ</td>
    <td>Email</td>
    <td>年龄</td>
    <td>性别</td>
  </tr>
  <%
	  	List<UserInfo> list = (List<UserInfo>)request.getAttribute("List");
	  	if(list==null||list.size()==0){
	  		out.println("NO DATA");
	  	}else{
	  		for(UserInfo user:list){
	  			%>
			  <tr>
			    <td><%=user.getId()%></td>
			    <td><%=user.getName()%></td>
			    <td><%=user.getCompany()%></td>
			    <td><%=user.getTell()%></td>
			    <td><%=user.getQq()%></td>
			    <td><%=user.getEmail()%></td>
			    <td><%=user.getAge()%></td>
			    <td><%=user.getSex()%></td>
			  </tr>
	  			<%
	  		}
	  	}
  %>
  
</table>
</body>
</html>
