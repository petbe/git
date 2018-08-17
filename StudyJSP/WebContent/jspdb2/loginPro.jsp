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
<h1>WebContent/jspdb2/loginForm.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
//loginForm request.
String id=request.getParameter("loId");
String pass=request.getParameter("loPass");

Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
String sql="select * from member where id=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1,id);
ResultSet rs = pstmt.executeQuery();
//out.println(rs.getString("id"));
if(rs.next()){
	out.println("아이디있음");
	//비밀번호 비교
	if(rs.getString("pass").equals(pass)){
		out.println("비밀번호 있음");
		//세션값 생성 "id",id
		session.setAttribute("id", id);
		response.sendRedirect("Main.jsp");
	}else{
		out.println("비밀번호 없음");
		//response.sendRedirect("loginForm.jsp");
		//메시지-비밀번호 없음 , 뒤로이동
		%><script type="text/javascript">
		alert("비밀번호 없음");
		ihstory.back();</script><% 
	}
}else{
	out.println("아이디없음");
	response.sendRedirect("loginForm.jsp");
	//메시지-아이디없음 , 뒤로이동
		%><script type="text/javascript">
		alert("아이디없음");
		location.href="loginForm.jsp";</script><% 
}

rs.close();
pstmt.close();
con.close();
%>

</body>
</html>