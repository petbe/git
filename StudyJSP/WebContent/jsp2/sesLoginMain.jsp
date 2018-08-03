<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WenContent/jsp2/sesLoginMain.jsp</h1>

<%//세션값이 없으면 sesLoginForm.jsp로이동 
	String str=(String)session.getAttribute("id");
	if(str==null){
		response.sendRedirect("sesLoginForm.jsp");
	}
%>

<%=session.getAttribute("id") %>님이 로그인되었습니다.

<%//로그아웃하기 %>
<input type="button" value="로그아웃" onclick="location.href='sesLoginout.jsp'">
</body>
</html>