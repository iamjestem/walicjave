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
 
    <%String sub = request.getParameter("topic");
    %>
<!DOCTYPE html>
<html>
    <head>
    </head>
 
    <body>
        <table>
    <!-- column headers -->
        <thead>
        </thead>
    <c:forEach items="${listofposts}" var="row">
        <tr>
                <td class="bubble">${row.Nickname}:</td>
        </tr>
        <tr>
                <td><pre>${row.topic}</pre></td>
        </tr>
    </c:forEach>
</table>
        <form action="NewPost" method="POST" id='notes' name='notes'>
        <div class='note'>
            <input tyle='text' name='newtopic'/>
            <input type='hidden' name='topic' value="<%=sub.toString()%>"/>
            <input  type="submit" name="submit"  value="Dodaj sobie nowy post">
        </div>
        <p>${error}</p></form>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>