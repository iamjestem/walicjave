
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<c:choose>
            <c:when test="${sessionScope.login == null}">
                  <%@include file="basicheader.jsp" %>
            </c:when>
            
            <c:when test="${sessionScope.login == 'admin'}">
                  <%@include file="adminheader.jsp" %>
            </c:when>   
                  
            <c:otherwise>
                  <%@include file="loggedin.jsp" %>
            </c:otherwise>
    
</c:choose>
