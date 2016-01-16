<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title><s:text name="message"/></title>
</head>

<body>
<h2><s:property value="message"/></h2>



<s:checkboxlist name="test" list="values" listLabelKey="'test-' + name().toLowerCase()" />

</body>
</html>
