<%-- 
    Document   : Note
    Created on : 2015-12-15, 23:05:58
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
        <div class='note'>  
            <textarea class='note' width='500' height='300'>
                ${note}
            </textarea>
        </div>
        <p>${error}</p>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>
