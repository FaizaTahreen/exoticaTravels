<%-- 
    Document   : LoginPage
    Created on : 17 Mar, 2020, 3:18:29 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html>
<head>
<title>Registration Page</title>         
</head>
<body>
<jsp:include page="Template.jsp"></jsp:include>
<td valign="top">
<html:form action="/ValidateAction" method="post">
<table cellspacing='10' align='center'>
<tr>
<td><font color='darkblue' size='+2'> Login Form
</tr>
</td>
</table>
<table cell spacing='10' align='center' border='2' bordercolor='black'>
    <tr><td bordercolor='white'>User Id:<td colspan='2' bordercolor='white'><html:text property="userid"/>
    <tr><td bordercolor='white'>Password:<td colspan='2' bordercolor='white'><html:password property="password"/>
    <tr><td bordercolor='white'>Role:<td bordercolor='white'><html:radio property='r1' value="administrator">Administrator</html:radio>
<td bordercolor='white'><html:radio property='r1' value="customer">Customer</html:radio>
<tr><td bordercolor='white'><input type="submit" value="SUBMIT"/>
<td bordercolor='white'><input type="reset" value="RESET"/>
</table>
</html:form>
</body>
