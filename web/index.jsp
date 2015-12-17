
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
    <sql:query var="subjects" dataSource="jdbc/NieLubimyJavy">
    SELECT * from cathegories
</sql:query>
<sql:query var="adminnote" dataSource="jdbc/NieLubimyJavy">SELECT * from adminnote</sql:query>
    <body>
     <div class="adminnote"><c:forEach var="row" items="${adminnote.rowsByIndex}">  
         <c:forEach var="column" items="${row}">
    <c:out value="${column}"></c:out>
        </c:forEach>
     </c:forEach></div>
        <table>
    <!-- column headers -->
        <thead>
                <tr>
                        <th><fmt:message key='idCathegory'/></th>
                        <th><fmt:message key='catname'/></th>
                </tr>
        </thead>
<!-- column data -->
<c:forEach var="row" items="${subjects.rowsByIndex}">
    <tr class="mouseover" onclick="document.location = 'ShowTopics?cathegory='+${row[0]};">
    <c:forEach var="column" items="${row}">
        <td><c:out value="${column}"/></td>
    </c:forEach>
    </tr>
</c:forEach>
    
</table>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>
