<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
String id=(String)session.getAttribute("id");
if(id==null){
	response.sendRedirect("loginForm.jsp");
	
}


%>
<h1>WebContent/member/deleteForm.jsp</h1>

<form action="deletePro.jsp" method="post" onsubmit="return cp()">
아이디:<input type="text" name="id" readonly value="<%=id%>"><br>
비밀번호:<input type="password" name="pass"><br>

<input type="submit" value="탈퇴하기">
<input type="button" value="뒤로가기" onclick="history.back()"> 
</form>
</body>
</html>