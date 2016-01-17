<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.nikoer.vo.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page"></jsp:useBean>
<!Doctype html>
<html xmlns=http://www.w3.org/1999/xhtml>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>所有用户列表信息</title>
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
		<h1>当前用户列表信息</h1>
		<table class="classTable">
		  <tr>
		    <td>编号</td>
		    <td>用户名</td>
		    <td>公司名</td>
		    <td>电话</td>
		    <td>QQ</td>
		    <td>Email</td>
		    <td>年龄</td>
		    <td>性别</td>
		    <td>操作</td>
		  </tr>
		  <%
		  		String sql = "SELECT * FROM pt_user";  
		  		ResultSet rs = db.select(sql); 
		  		List<UserInfo> list = new ArrayList<UserInfo>();
		  		while(rs.next()){
		  			UserInfo user = new UserInfo();
		  			user.setId(rs.getInt("id"));
		  			user.setName(rs.getString("name"));
		  			user.setTell(rs.getString("tell"));
		  			user.setCompany(rs.getString("company"));
		  			user.setQq(rs.getString("qq"));
		  			user.setEmail(rs.getString("email"));
		  			user.setAge(rs.getInt("age"));
		  			user.setSex(rs.getInt("sex"));
		  			user.setPassword(rs.getString("password"));
		  			list.add(user);
		  		}
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
					    <td><%
					    	int sex = user.getSex();
					    	if(sex==1){
					    		out.println("男");
					    	}else{
					    		out.println("女");
					    	}
					    %></td>
					    <td><a class="classLink" href="CheckUser.jsp?id=<%=user.getId()%>">查看用户</a></td>
					  </tr>
			  			<%
			  		}
			  	}
		  %>
		  
		</table>
	</div>

</body>
</html>
