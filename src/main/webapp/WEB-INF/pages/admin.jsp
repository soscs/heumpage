<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/pages/includes/taglib.jsp" %>
<!doctype html>
<html lang="ko">
    <head>
        <title>관리자</title>
    </head>
    <body>
        <h1>Admin</h1>
        <p>Hello, ${userDetails.username}!</p>

        <p>User authorities: ${userAuthorities}</p>

        <a href="/">Back</a>
    </body>
</html>