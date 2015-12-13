<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<c:if test="${!empty language}">
    <fmt:setLocale value="${language}" scope="session" />
</c:if>
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
            <div class="headerWidget">

                   

                      <%-- language selection widget --%>
                      <c:choose>
                        <%-- When user hasn't explicitly set language,
                             render toggle according to browser's preferred locale --%>
                        <c:when test="${empty sessionScope['javax.servlet.jsp.jstl.fmt.locale.session']}">
                          <c:choose>
                            <c:when test="${pageContext.request.locale.language ne 'pl'}">
                              english
                            </c:when>
                            <c:otherwise>
                              <c:url var="url" value="language">
                                <c:param name="language" value="en"/>
                              </c:url>
                              <div class="bubble"><a href="${url}">english</a></div>
                            </c:otherwise>
                          </c:choose> |

                          <c:choose>
                            <c:when test="${pageContext.request.locale.language eq 'pl'}">
                              polski
                            </c:when>
                            <c:otherwise>
                              <c:url var="url" value="language">
                                <c:param name="language" value="pl"/>
                              </c:url>
                              <div class="bubble"><a href="${url}">polski</a></div>
                            </c:otherwise>
                          </c:choose>
                        </c:when>

                      <%-- Otherwise, render widget according to the set locale --%>
                        <c:otherwise>
                          <c:choose>
                            <c:when test="${sessionScope['javax.servlet.jsp.jstl.fmt.locale.session'] ne 'pl'}">
                              english
                            </c:when>
                            <c:otherwise>
                              <c:url var="url" value="language">
                                <c:param name="language" value="en"/>
                              </c:url>
                              <div class="bubble"><a href="${url}">english</a></div>
                            </c:otherwise>
                          </c:choose> |

                          <c:choose>
                            <c:when test="${sessionScope['javax.servlet.jsp.jstl.fmt.locale.session'] eq 'pl'}">
                              polski
                            </c:when>
                            <c:otherwise>
                              <c:url var="url" value="language">
                                <c:param name="language" value="pl"/>
                              </c:url>
                              <div class="bubble"><a href="${url}">polski</a></div>
                            </c:otherwise>
                          </c:choose>
                        </c:otherwise>
                      </c:choose>

                  </div>
    

