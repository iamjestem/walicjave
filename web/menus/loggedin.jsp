<%-- 
    Document   : header
    Created on : 2015-12-07, 23:28:56
    Author     : Administrator
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><fmt:message key='title'/></title>
        <meta name="viewport" content="width=device-width" charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="loginregister"><a href="sendmessage.jsp"><fmt:message key='sendmessage'/></a><small>/</small>
            <a href="Messages"><fmt:message key='messages'/></a><small>/</small>
            <a href="Profile"><fmt:message key='userpanel'/></a><small>/</small>
                <a href="Logout"><fmt:message key='logout'/></a>
            </div>
        <h1><a class="headlink" href="Stats"><fmt:message key='h1'/></a></h1>
    </body>
</html>