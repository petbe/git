

<%@page import="java.sql.Timestamp"%>

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

/* Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";

Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
String sql="select * from member where id=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1,id);
ResultSet rs = pstmt.executeQuery();
 */
String myId="";
String myPass="";
String myName="";
Timestamp date=null;
int age=0;
String gender="";
String email="";
/* if(rs.next()){
	 myId=rs.getString("id");
	 myPass=rs.getString("pass");
	 myName=rs.getString("name");
	 date = rs.getTimestamp("reg_date");
	 age = rs.getInt("age");
	 gender = rs.getString("gender");
	 email = rs.getString("email");
} */
%>
<h1>WebContent/jspdb2/info.jsp</h1>
<h3>회원정보조회</h3>
<table border="1">
<tr><th colspan="2">회원정보 조회페이지</th></tr>
<tr><th>아이디:</th><td><%=myId %></td></tr>
<tr><th>비밀번호:</th><td><%=myPass %></td></tr>
<tr><th>이름:</th><td><%=myName %></td></tr>
<tr><th>나이:</th><td><%=age %></td></tr>
<tr><th>성별:</th><td><%=gender %></td></tr>
<tr><th>이메일:</th><td><%=email %></td></tr>
<tr><th>가입날짜:</th><td><%=date %></td></tr>
</table>

<a href="Main.jsp">메인가기</a>
<%-- <%rs.close();
pstmt.close();
con.close();
%> --%>
</body>
</html>