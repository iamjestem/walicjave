
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
    <body>
                    
        
        
        <table>
    <!-- column headers -->
    <tr>
    <c:forEach var="columnName" items="${subjects.columnNames}">
        <th><c:out value="${columnName}"/></th>
    </c:forEach>
</tr>
<!-- column data -->
<c:forEach var="row" items="${subjects.rowsByIndex}">
    <tr>
    <c:forEach var="column" items="${row}">
        <td><a href="cathegory.jsp?cathegory=${column}"><c:out value="${column}"/></a></td>
         
    </c:forEach>
    </tr>
</c:forEach>
    
</table>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>
