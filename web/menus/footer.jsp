<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 
    Document   : footer
    Created on : 2015-12-08, 00:00:52
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>
    </head>     
    <body>
        <div>
        <p class="time"><fmt:message key='date'/> <%= (new java.util.Date()).toLocaleString()%></p>
        <p class="copyrights"><fmt:message key='foot'/></p>
        <p class="visitations"><fmt:message key='visited'/>: ${visited}</p>
        <p class="registered"><fmt:message key='registred'/>: ${a}</p>
        </div>
    </body>
</html>
