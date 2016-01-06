<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>  
<jsp:useBean id="db" class="com.nikoer.SQLBean" scope="page"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
    String sql = "SELECT * FROM student";  
    ResultSet rs = db.select(sql);  
%> 
<table width="387" border="1" height="82">  
        <tr>  
  
            <td>sno</td>  
            <td>sname</td>  
            <td>sgrade</td>  
            <td>delete</td>  
            <td>update</td>  
              
  
        </tr>  
 <%  
     while (rs.next()) {  
     //int id=rs.getInt("sno");  
         out.print("<tr>");  
         out.print("<td>" + rs.getInt("sno")+ "</td>");  
         out.print("<td>" + rs.getString("sname") + "</td>");  
         out.print("<td>" + rs.getInt("sgrade") + "</td>");  
           
         out.print("<td><a href=Delete_done.jsp?id=" + rs.getInt("sno") + " onclick=\"return window.confirm('是否确定删除？')\">删除</a></td>");  
                         out.print("<td><a href=Update.jsp?id=" + rs.getInt("sno") + " onclick=\"return window.confirm('是否确定编辑？')\" >编辑</a></td>");  
         out.print("</tr>");  
     }  
     if (rs != null) {  
         rs.close();  
     }  
 %>  
 </table> 
</body>
</html>