<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page"></jsp:useBean>
<!Doctype html>
<html xmlns=http://www.w3.org/1999/xhtml>
<head>
<title>���ݿ�����JavaBeanʹ��ʾ��</title>
<style type="text/css">
	#inputTable .LabelTxt{
		width:200px;
		height:50px;
	};
</style>
</head>
<body>
<div style="width:1024px;margin:0 auto;">
	<h1>����û���Ϣ</h1>
	<form action="Insert_done.jsp" method="post">
	<table id="inputTable" style="width:1000px;border:1px solid #999999;padding:10px;">
		<tr>
			<td class="LabelTxt">����:</td>
			<td><input type="text" name="sname" size="10" style="width:200px;" /> </td>
		</tr>
		<tr>
			<td class="LabelTxt">�Ա�:</td>
			<td>
			<select id="sex" name="ssex" style="width:200px;">
				<option value="1">��</option>
				<option value="0">Ů</option>
			</select></td>
		</tr>
		<tr>
			<td class="LabelTxt">��˾����:</td>
			<td><input type="text" name="scompany" size="10" style="width:200px;" /> </td>
		</tr>
		
		<tr>
			<td class="LabelTxt">Mobile:</td>
			<td><input type="text" name="smobile" size="10" style="width:200px;" /> </td>
		</tr>
		
		<tr>
			<td class="LabelTxt">QQ:</td>
			<td><input type="text" name="sqq" size="10" style="width:200px;" /> </td>
		</tr>
		
		<tr>
			<td class="LabelTxt">Email:</td>
			<td><input type="text" name="semail" size="10" style="width:200px;" /> </td>
		</tr>
		
		<tr>
			<td class="LabelTxt">����:</td>
			<td><input type="text" name="sage" size="10" style="width:200px;" /> </td>
		</tr>
		
		<tr>
			<td class="LabelTxt"></td>
			<td><input style="width:100px;height:40px;" type="submit" value="�ύ" /></td>
		</tr>
	</table>
	</form>
</div>

	
</body>
</html>

