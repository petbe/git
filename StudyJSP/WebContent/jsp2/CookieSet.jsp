<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/CookieSet.jsp</h1>
<%
//쿠키값 생성 -> 유지시간설정 -> 클라이언트 저장
//Cookie cookie = new Cookie("이름",값);
Cookie cookie = new Cookie("cookName","Cookioe value");
cookie.setMaxAge(30*60);
response.addCookie(cookie);//서버의 값을 클라이언트에게로 보냄
%>
<script type="text/javascript">
	alert("쿠키값생성");
	location.href="CookieTest.jsp";
</script>

</body>
</html>