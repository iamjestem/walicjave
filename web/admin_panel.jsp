<%-- 
    Document   : Admin Panel
    Created on : 2015-12-15, 22:03:18
    Author     : Marcin
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/menus/header.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key='title'/></title>
    </head>
    <body>
        <h2>Panel Administracyjny</h2>
        <table>
    <tr>
        <th>Notka admina</th>
        <th><a href="Note">Przejdź</a></th>
    </tr>
    <tr>
        <th>Lista użytkowników</th>
        <th><a href="Users">Przejdź</a></th>
    </tr> 
    <tr>
        <th>Lista prywatnych wiadomości użytkowników</th>
        <th><a href="AllMessages">Przejdź</a></th>
    </tr>
</table>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>