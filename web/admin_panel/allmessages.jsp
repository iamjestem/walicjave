<%-- 
    Document   : allmessages
    Created on : 2015-12-16, 12:38:36
    Author     : Marcin
--%>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>

        <table>
    <!-- column headers -->
    <tr>
        <thead>
            <tr> 
            <th><fmt:message key='sender'/></th>
            <th><fmt:message key='receiver'/></th>
            <th><fmt:message key='message'/></th>
            <th><fmt:message key='delete'/></th>
            </tr>
        </thead>
</tr>
<!-- column data -->
<c:forEach items="${mesg}" var="current">
    
<form action='AllMessages' method ="POST" id='allm' name='allm' >
                                <tr>
                                    <td> <c:out value="${current.idSender}" /></td>
                                    <td> <c:out value="${current.idReceiver}" /></td>      
                                    <td><c:out value="${current.Message}" /></td>
                                    <td align='right'><input  type="submit" name="submit"  value="Submit"></td>
                                </tr>
</form>
                            </c:forEach>
    
        </table>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>
