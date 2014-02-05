<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="tags" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<% pageContext.setAttribute("crlf", "\r\n"); %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="reqUrl" value="${pageContext.request.requestURL}" />
<c:set var="localeCode" value="${pageContext.response.locale}" />
<c:set var="uri" value="${pageContext.request.requestURI}" />
<c:set var="query" value="${pageContext.request.queryString}" />
<security:authorize var="loggedIn" access="isAuthenticated()" />