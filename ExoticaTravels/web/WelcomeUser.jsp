<%-- 
    Document   : WelcomeUser
    Created on : 26 May, 2020, 11:37:20 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <jsp:include page="Template.jsp"></jsp:include>
    <td valign="top" rowspan="200" colspan="80">
        <table>
            <tr>
                <td> <c:set var="message" value="${requestScope.NewUser}"/>
                <font color="darkblue" size="+2">Welcome to Exotica Travels
                <c:out value="${message}"/>.you have registered successfully.
        </table>
    </body>
</html>
