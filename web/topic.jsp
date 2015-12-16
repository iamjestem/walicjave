
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 
    Document   : index
    Created on : 2015-12-07, 17:10:50
    Author     : Marcin
--%>
<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    </head>
 
    <body>
        <table>
    <!-- column headers -->
        <thead>
                    <th><fmt:message key='idPost'/></th>
                    <th><fmt:message key='tekst'/></th>
                    <th><fmt:message key='idTopic'/></th>
                    <th><fmt:message key='idUsers'/></th>
        </thead>
    <c:forEach items="${listofposts}" var="row">
        <tr>
                <td>${row.idTopic}</td>
                <td>${row.topic}</td>
                <td>${row.idCathegory}</td>
                <td>${row.idUsers}</td>
        </tr>
    </c:forEach>
</table>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>