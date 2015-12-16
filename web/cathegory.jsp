
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
    <%String sub = request.getParameter("cathegory"); 
    %>
    <c:set var="subj" value="Gra"/>
    <sql:query var="subjects" dataSource="jdbc/NieLubimyJavy">
    SELECT * from topics t, cathegories c WHERE c.idCathegory = t.idCathegory
</sql:query>
 
    
    
    <body>
                <h1><%=sub.toString()%>    </h1>
        <table>
    <!-- column headers -->
    <tr>
    <c:forEach var="columnName" items="${subjects.columnNames}">
        <th><c:out value="${columnName}"/></th>
    </c:forEach>
</tr>
<!-- column data -->
<c:forEach var="row" items="${subjects.rowsByIndex}">
<c:if test="${true}">
    <tr>
    <c:forEach var="column" items="${row}">
        <td><a href="topic.jsp?topic=${column}"><c:out value="${column}"/></a></td>
    </c:forEach>
    </tr>
</c:if> 
</c:forEach>
</table><table>
    <c:forEach items="${resultofmyquery}" var="row">
        <tr>
            <td>${row.field1}</td>
            <td>${row.field2}</td>
            <td>${row.field3}</td>
        </tr>
    </c:forEach>
</table>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>