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
        <title>Tibja - top1 strona o tym Kappa</title>
        <meta name="viewport" content="width=device-width" charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="loginregister"><a href="profile.jsp"><fmt:message key='userpanel'/></a></div>
            <div class="loginregister"><a  href="Profile"><fmt:message key='hello'/></a><small>/</small>
                <a href="Logout"><fmt:message key='logout'/></a>
            </div>
        <h1><a class="headlink" href="index.jsp"><fmt:message key='h1'/></a></h1>
    </body>
</html>