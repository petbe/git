<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/CookiePro.jsp</h1>
<% Cookie language = new Cookie("lang",request.getParameter("lang"));
	language.setMaxAge(30*60);
	response.addCookie(language);
%>
<script type="text/javascript">
alert("선택");
location.href="CookieForm.jsp";

</script>

</body>
</html>