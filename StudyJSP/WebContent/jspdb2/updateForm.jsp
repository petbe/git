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
int myAge=0;
String myGender="";
String myEmail="";
if(rs.next()){
myId=rs.getString("id");
myPass=rs.getString("pass");
myName=rs.getString("name");
myAge = rs.getInt("age");
myGender = rs.getString("gender");
myEmail = rs.getString("email");
}


%>

<h1>WebContent/jspdb2/updateForm.jsp</h1>
<form action="updatePro.jsp" method="post" >
<table border="1">
<tr><th colspan="2">회원정보 수정페이지</th></tr>
<tr><th>아이디:</th><td><input type="text" name="id" id="id" value="<%=rs.getString("id")%>" readonly></td></tr>
<tr><th>비밀번호:</th><td><input type="password" name="pass" id="pass"></td></tr>
<tr><th>이름:</th><td><input type="text" name="name" id="name" value="<%=rs.getString("name")%>"></td></tr>
<tr><th>나이:</th><td><input type="text" name="age" id="age" value="<%=rs.getInt("age")%>"></td></tr>
<tr><th>성별:</th><td>남<input type="radio" name="gender" value="남" <%
if(myGender.equals(null)){%>checked<%}
if(myGender.equals("남")){%>checked<%} %>>
	여<input type="radio" name="gender" value="여"<%if(myGender.equals("여")){%>checked<%} %>></td></tr>
<tr><th>이메일:</th><td><input type="email" name="email" value="<%=rs.getString("email")%>"></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="정보수정">
<input type="button" value="뒤로가기" onclick="history.back()"> </td></tr>
</table>



<!-- 태그 입력값을 가지고 인설트위해 request로 파라미터 값 넘기고 pro에 -->
</form>
</body>
</html>