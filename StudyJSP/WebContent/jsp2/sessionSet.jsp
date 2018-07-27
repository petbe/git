<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/sessionSet.jsp</h1>
<% 
//세션값 저장 이름,값 "sname",  "session value"
//이동 "세션값 생성" 메시지
// sessiontest.jsp 이동
session.setAttribute("sname", "session value");
//response.sendRedirect("sessiontest.jsp");
%>
<script type="text/javascript">
alert("세션값 생성");
location.href="sessiontest.jsp";

</script>

</body>
</html>