<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//세션 : 연결정보 서버 저장
%>
<h1>WebContent/jsp2/sessiontest.jsp</h1>
<input type="button" value="세션값저장" onclick="location.href='sessionSet.jsp'"><br>
<input type="button" value="세션값삭제" onclick="location.href='sessionDel.jsp'"><br>
<input type="button" value="세션값초기화" onclick="location.href='sessionInval.jsp'"><br>
세션 값:<%=session.getAttribute("sname") %>

</body>
</html>