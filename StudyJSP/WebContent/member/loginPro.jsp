<%@page import="member.MemberDAO"%>
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

MemberDAO d = new MemberDAO();

int logck;
logck=d.userCheck(id,pass);



//out.println(rs.getString("id"));
if(logck==1){
	out.println("아이디있음");
	//비밀번호 비교
	
		out.println("비밀번호 있음");
		//세션값 생성 "id",id
		session.setAttribute("id", id);
		response.sendRedirect("Main.jsp");
	
}

if(logck==0){
		out.println("비밀번호 없음");
		//response.sendRedirect("loginForm.jsp");
		//메시지-비밀번호 없음 , 뒤로이동
		%><script>
		alert("비밀번호 없음");
		history.back();</script><% 
}	

if(logck==-1){
	out.println("아이디없음");
	//response.sendRedirect("loginForm.jsp");
	//메시지-아이디없음 , 뒤로이동
		%><script type="text/javascript">
		alert("아이디없음");
		location.href="loginForm.jsp";</script><% 

}

%>

</body>
</html>