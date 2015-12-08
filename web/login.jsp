<%-- 
    Document   : login
    Created on : 2015-12-07, 23:34:10
    Author     : Marcin
--%>

<jsp:include page="header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form method="post" action="logination.jsp">
            <div class="form">
                <p>Username:</p>
                <input type="text" name="userName" value="" />
                <p>Password:</p>
                <input type="password" name="userPassword" value="" /><br>
                <input type="submit" value="Submit" name="submitLogin" />
            </div>
       </form>
    </body>
</html>
<jsp:include page="footer.jsp"/>
