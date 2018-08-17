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
<%
String id=(String)session.getAttribute("id");
if(id==null){
	response.sendRedirect("loginForm.jsp");
}
request.setCharacterEncoding("utf-8");
Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
String sql="select * from member where id=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1,id);
ResultSet rs = pstmt.executeQuery();
String myId="";
String myPass="";
String myName="";
if(rs.next()){
myId=rs.getString("id");
myPass=rs.getString("pass");
myName=rs.getString("name");
}


%>

<h1>WebContent/jspdb2/updateForm.jsp</h1>
<form action="updatePro.jsp" method="post" >
아이디:<input type="text" name="id" readonly value="<%=myId%>"><br>
비밀번호:<input type="password" name="pass"><br>
이름:<input type="text" name="name" value="<%=myName%>"><br>
<input type="submit" value="정보수정">
<input type="button" value="뒤로가기" onclick="history.back()"> 

<!-- 태그 입력값을 가지고 인설트위해 request로 파라미터 값 넘기고 pro에 -->
</form>
</body>
</html>