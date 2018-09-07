<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="member.MemberDAO"%>
<html>
<head><%@page import="java.sql.ResultSet"%>
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
<h1>WebContent/jspdb2/deletePro.jsp</h1>
<%

request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pass=request.getParameter("pass");

MemberDAO d = new MemberDAO();
boolean flag=d.memberdelete(id,pass);




if(flag){
	
		session.invalidate();
		%><script type="text/javascript">
  		alert("삭제완료");
		location.href="Main.jsp";
  		</script><% 
	
}else{
	  %><script type="text/javascript">
		alert("비밀번호 틀림");
	 	history.back();
		</script><% 
}

 %>
</body>
</html>
