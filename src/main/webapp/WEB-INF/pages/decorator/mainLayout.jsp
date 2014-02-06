<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/pages/includes/taglib.jsp" %>
<%@ page trimDirectiveWhitespaces="true" %>
<html lang="ko">
<head>
    <title><decorator:title/> | Kwangheum</title>
    <link href="${ctx }/resources/images/favicon.ico" rel="icon" type="image/x-icon"/>
    <jsp:include page="/WEB-INF/pages/includes/include_file.jsp" />
    <decorator:head/>
</head>
<body>
<decorator:body></decorator:body>
</body>
</html>