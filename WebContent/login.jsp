<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
	.classTable{ border:none;  border-collapse: collapse;}
	.classTable td{border:1px solid #999999;};
	.classLink{border:0px;}
	.container{ width:1000px; margin:0 auto;}
</style>
<script type="text/javascript">
	function clearTxt(){
		var userName = document.getElementById("username");
		var password = document.getElementById("password");
		userName.value = "";
		password.value = "";
	}
</script>
</head>

<body>
	<div class="container">
		<h1>用户登陆系统</h1>
		<form action="LoginCheck.jsp" method="post">
			<table style="width:1000px;" class="classTable">
			  <tr>
			    <td width="148" height="44">用户名</td>
			    <td width="840" style="padding:5px;"><input type="text" style="width:180px; height:40px;" name="username" id="username" /></td>
			    </tr>
			    <tr>
			    <td height="56">密码</td>
			    <td style="padding:5px;"><input type="password" style="width:180px; height:40px;" name="password" id="password" /></td>
			    </tr>
			    <tr>
			    <td height="67">&nbsp;</td>
			    <td style="padding:5px;"><input style="width:100px; height:40px;" type="submit" value="登陆"/>  <input style="width:100px; height:40px;" type="button" onclick="clearTxt()" value="清空"/></td>
			    </tr>
			  </table>
		</form>
	 </div>
</body>
</html>
