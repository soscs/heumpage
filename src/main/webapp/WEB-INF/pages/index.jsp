<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/pages/includes/taglib.jsp" %>
<!doctype html>
<html lang="ko">
    <head>
        <title>Home</title>
    </head>
    <body>
        <div>
            <h1>Home</h1>
            <security:authorize access="isAnonymous()">
                <p>
                    <a href="/spring_security_login">Sign In</a>
                </p>
            </security:authorize>

            <security:authorize access="isAuthenticated()">
                <p>Hello, ${userDetails.username}! <a href="/j_spring_security_logout">Sign Out</a></p>
            </security:authorize>

            <security:authorize access="hasRole('admin')">
                <p>
                    <a href="/admin">Admin page</a>
                </p>
            </security:authorize>
        </div>
    </body>
</html>