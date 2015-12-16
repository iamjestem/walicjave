<<<<<<< HEAD
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 
　　Document　 : index
　　Created on : 2015-12-07, 17:10:50
　　Author　　 : Marcin
--%>
<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
　　<head>
　　</head>
　　<%String sub = request.getParameter("cathegory"); %>
　　
　　<body>
　　　　<table>
　　<!-- column headers -->
　　　　<thead>
　　　　　　　　　　<th><fmt:message key='idTopic'/></th>
　　　　　　　　　　<th><fmt:message key='topic'/></th>
　　　　　　　　　　<th><fmt:message key='idCathegory'/></th>
　　　　　　　　　　<th><fmt:message key='idUsers'/></th>
　　　　</thead>
　　<c:forEach items="${listoftopics}" var="row">
　　　　<tr class='mouseover' onclick="document.location = 'ShowPosts?topic='+${row.idTopic}; ">
　　　　　　　　<td>${row.idTopic}</td>
　　　　　　　　<td>${row.topic}</td>
　　　　　　　　<td>${row.idCathegory}</td>
　　　　　　　　<td>${row.idUsers}</td>
　　　　</tr>
　　</c:forEach>
</table>
　　　　<form action="NewTopic" method="POST" id='notes' name='notes'>
              <div class='note'>
            <input tyle='text' name='newtopic'/>
            <input type='hidden' name='cathegory' value="<%=sub.toString()%>"/>
            <input  type="submit" name="submit"  value="Dodaj sobie nowy temat">
        </div>
　　　　<p>${error}</p></form>
　　</body>
</html>
<jsp:include page="/menus/footer.jsp"/>
=======
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 
　　Document　 : index
　　Created on : 2015-12-07, 17:10:50
　　Author　　 : Marcin
--%>
<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
　　<head>
　　</head>
　　<%String sub = request.getParameter("cathegory"); %>
　　
　　<body>
　　　　<table>
　　<!-- column headers -->
　　　　<thead>
　　　　　　　　　　<th><fmt:message key='idTopic'/></th>
　　　　　　　　　　<th><fmt:message key='topic'/></th>
　　　　　　　　　　<th><fmt:message key='idCathegory'/></th>
　　　　　　　　　　<th><fmt:message key='idUsers'/></th>
　　　　</thead>
　　<c:forEach items="${listoftopics}" var="row">
　　　　<tr class='mouseover' onclick="document.location = 'ShowPosts?topic='+${row.idTopic}; ">
　　　　　　　　<td>${row.idTopic}</td>
　　　　　　　　<td>${row.topic}</td>
　　　　　　　　<td>${row.idCathegory}</td>
　　　　　　　　<td>${row.idUsers}</td>
　　　　</tr>
　　</c:forEach>
</table>
　　　　<form action="NewTopic" method="POST" id='notes' name='notes'>
　　　　<div class='note'>　
　　　　　　<input tyle='text' name='newtopic'/>
　　　　　　<input type='hidden' name='cathegory' value="<%=sub.toString()%>"/>
　　　　　　<input　type="submit" name="submit"　value="Dodaj sobie nowy temat">
　　　　</div>
　　　　<p>${error}</p></form>
　　</body>
</html>
<jsp:include page="/menus/footer.jsp"/>
>>>>>>> origin/master
