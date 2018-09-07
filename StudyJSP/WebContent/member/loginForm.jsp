<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">


</script>

<h1>WebContent/member/loginForm.jsp</h1>
※회원목록은 admin으로 로그인해야 볼 수 있음.
<form action="loginPro.jsp" method="post">
아이디:<input type="text" name="loId"><br>
비밀번호:<input type="password" name="loPass"><br>
<input type="submit" value="로그인"> 

<input type="button" value="회원가입"  onclick="location.href='insertForm.jsp'">
</form>

</body>
</html>