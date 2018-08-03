<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/sessionDel.jsp</h1>
<%
//세션에서 하나의 이름 삭제   
session.removeAttribute("sname");
%>
<script type="text/javascript">
	alert("세션값 하나삭제");
	location.href="sessiontest.jsp";
</script>
</body>
</html>