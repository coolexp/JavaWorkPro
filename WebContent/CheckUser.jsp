<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.nikoer.vo.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page"></jsp:useBean>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	String sql = "SELECT * FROM pt_user WHERE id="+id;
	ResultSet rs = db.select(sql);
	UserInfo user = null;
	while(rs.next()){
		user = new UserInfo();
		user.setId(rs.getInt("id"));
		user.setName(rs.getString("name"));
		user.setTell(rs.getString("tell"));
		user.setCompany(rs.getString("company"));
		user.setQq(rs.getString("qq"));
		user.setEmail(rs.getString("email"));
		user.setAge(rs.getInt("age"));
		user.setSex(rs.getInt("sex"));
	}
%>
<!Doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看用户的详细资料</title>
<style type="text/css">
	.classTable{ border:none;  border-collapse: collapse;}
	.classTable td{border:1px solid #999999; height:40px;}
	a.classLink{ text-decoration:underline;color:#000000;} 
	a.classLink:hover{ text-decoration:underline;color:#FF6600;} 
	.container{ width:1000px; margin:0 auto;}
	.classButton{width:100px; height:30px;}
</style>
<script type="text/javascript">
	function goback(){
		window.location.href="ListUser.jsp";
	}
</script>
</head>

<body>
	<div class="container">
		<h1>用户详细信息</h1>
		<table  class="classTable">
		  <tr>
		    <td width="116">用户ID:</td>
		    <td width="868">
			    <% 
			    	if(user!=null){
			    		out.println(user.getId());
			    	}
			    %>
		    </td>
		  </tr>
		  <tr>
		    <td>用户名:</td>
		    <td>
				<% 
			    	if(user!=null){
			    		out.println(user.getName());
			    	}
			    %>
			</td>
		  </tr>
		  <tr>
		    <td>公司:</td>
		    <td>
				<% 
			    	if(user!=null){
			    		out.println(user.getCompany());
			    	}
			    %>
			</td>
		  </tr>
		  <tr>
		    <td>电话:</td>
		     <td>
				<% 
			    	if(user!=null){
			    		out.println(user.getTell());
			    	}
			    %>
			</td>
		  </tr>
		  <tr>
		    <td>QQ:</td>
		     <td>
				<% 
			    	if(user!=null){
			    		out.println(user.getQq());
			    	}
			    %>
			</td>
		  </tr>
		  <tr>
		    <td>Email:</td>
		    <td>
				<% 
			    	if(user!=null){
			    		out.println(user.getEmail());
			    	}
			    %>
			</td>
		  </tr>
		  <tr>
		    <td>年龄:</td>
		    <td>
				<% 
			    	if(user!=null){
			    		out.println(user.getAge());
			    	}
			    %>
			</td>
		  </tr>
		  <tr>
		    <td>性别</td>
		    <td>
				<% 
			    	if(user!=null){
			    		int sex = user.getSex();
				    	if(sex==1){
				    		out.println("男");
				    	}else{
				    		out.println("女");
				    	}
			    	}
			    %>
			</td>
		  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td><button onclick="goback()" class="classButton">返回</button></td>
		  </tr>
		</table>
	</div>
</body>
</html>
