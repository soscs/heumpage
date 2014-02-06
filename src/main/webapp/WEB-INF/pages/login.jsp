<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/pages/includes/taglib.jsp" %>
<!doctype html>
<html lang="ko">
<head>
    <title>로그인</title>
    <meta name="menu" content="login">
    <script>
        $(document).ready(function(){
            $("#remember_me").change(function(){
                if($(this).is(":checked")){
                    $("#alert_remember").show();
                }else{
                    $("#alert_remember").hide();
                }
            });
        });
    </script>
</head>
<body>
<c:if test="${param.error == 1 }">
    <div class="alert alert-danger text-center">
        아이디나 비밀번호를 확인해주세요.
    </div>
</c:if>
<form action="${ctx }/j_spring_security_check" method="post" id="login" class="form-signin">
    <h2 class="form-signin-heading">로그인</h2>
    <input type="text" class="input-block-level" name="j_username" placeholder="Email address">
    <input type="password" class="input-block-level" name="j_password" placeholder="Password">
    <label for="remember_me" class="checkbox">
        <input type="checkbox" id="remember_me" name="_spring_security_remember_me"> 자동로그인
    </label>
    <div id="alert_remember" class="alert alert-danger alert-dismissable" style="position: absolute;z-index: 1;margin-top:-33px; display: none;">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <strong>개인정보 보호를 위해&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
        <br/>개인 PC에서 사용하세요
    </div>
    <button class="btn btn-large btn-primary" type="submit">로그인</button>
</form>
</body>
</html>
