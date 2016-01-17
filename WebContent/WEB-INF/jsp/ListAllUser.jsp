<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!Doctype html>
<html xmlns=http://www.w3.org/1999/xhtml>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:text name="message"/></title>
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
		<h2><s:property value="message"/></h2>
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
		<s:append id="userIterator">
		     <s:param value="%{users}" />
		</s:append>
		<s:iterator value="%{#userIterator}">
			<tr>
			    <td><s:property value="id" /></td>
			    <td><s:property value="name" /></td>
			    <td><s:property value="company" /></td>
			    <td><s:property value="tell" /></td>
			    <td><s:property value="qq" /></td>
			    <td><s:property value="email" /></td>
			    <td><s:property value="age" /></td>
			    <td><s:property value="sexName" /></td>
			    <td><a class="classLink" href="CheckUser.jsp?id=<s:property value="id" />">查看用户</a></td>
		  </tr>
		</s:iterator>

		</table>
	</div>

</body>
</html>
