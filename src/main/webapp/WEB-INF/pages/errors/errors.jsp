<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/pages/includes/taglib.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>오류 페이지입니다.</title>
</head>
<body>
	<h1>
		<c:if test="${pageContext.errorData.statusCode == '401'}">서버 권한 에러입니다.</c:if>
		<c:if test="${pageContext.errorData.statusCode == '403'}">서버 접근 권한 에러입니다.</c:if>
		<c:if test="${pageContext.errorData.statusCode == '404'}">존재하지 않는 페이지입니다.</c:if>
		<c:if test="${pageContext.errorData.statusCode == '405'}">허용되지 않은 페이지입니다.</c:if>
		<c:if test="${pageContext.errorData.statusCode == '500'}">서버 내부 오류 입니다.</c:if>
	</h1>
	
	<c:if test="${pageContext.errorData.requestURI != null}">URI : ${pageContext.errorData.requestURI}<br/></c:if>

	<c:if test="${pageContext.exception != null}">Error : ${pageContext.exception}<br/></c:if>
	<!-- 서버 반영할땐 지워야함 -->
	<c:if test="${pageContext.exception.stackTrace != null}">
		Stack trace : 
		<c:forEach var="trace" items="${pageContext.exception.stackTrace}">
			<p>${trace}</p>
		</c:forEach>
	</c:if>
</body>
</html>