<%-- 
    Document   : GetLogDetails
    Created on : 17 Mar, 2020, 10:43:13 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Log Details Page</title>           
</head>
<body>
<jsp:include page="Template.jsp"></jsp:include>
<td valign="top" rwospan="200" colspan="80"
<table>
<tr>
<td><jsp:include page="/GetLogDetails">
<jsp:param name="title" value="GetLogDetails"/>
</jsp:include>
</table>
</body>
</html>
