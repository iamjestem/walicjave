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
        <p id="time">
            Today's date: <%= (new java.util.Date()).toLocaleString()%>
        </p>
    </body>
</html>
