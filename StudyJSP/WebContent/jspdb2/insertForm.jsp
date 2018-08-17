<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jspdb2/insertFrom.jsp</h1>
<form action="insertPro.jsp" method="post">
아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="pass"><br>
이름:<input type="text" name="name"><br>
<input type="submit" value="학생등록"> 
<!-- 태그 입력값을 가지고 인설트위해 request로 파라미터 값 넘기고 pro에 -->
</form>
<a href="loginForm.jsp"><input type="button" value="로그인 화면" ></a>
</body>
</html>