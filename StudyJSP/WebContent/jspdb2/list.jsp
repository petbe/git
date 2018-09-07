<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
if(id==null||!id.equals("admin")){/*관리자 db를 만들어서 그걸로 뿌려줄듯.*/
	response.sendRedirect("loginForm.jsp");
}
Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";

Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
String sql="select * from member";
PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
%>




<%while(rs.next()){
	String listId=rs.getString("id");
	String listPass=rs.getString("pass");
	String listName=rs.getString("name");
	int listAge=Integer.parseInt(rs.getString("age"));
	String listGender=rs.getString("gender");
	String listEmail=rs.getString("email");
	Timestamp listDate=rs.getTimestamp("reg_date");
	
%><table border="1">
<tr><th colspan="2">회원정보 페이지<</th></tr>
<tr><th>아이디:</th><td><%=listId %></td></tr>
<tr><th>비밀번호:</th><td><%=listPass %></td></tr>
<tr><th>이름:</th><td><%=listName %></td></tr>
<tr><th>나이:</th><td><%=listAge %></td></tr>
<tr><th>성별:</th><td><%=listGender %></td></tr>
<tr><th>email:</th><td><%=listEmail %></td></tr>
<tr><th>생성날짜:</th><td><%=listDate %></td></tr>


</table>
<hr>

<%} 
rs.close();
pstmt.close();
con.close();%>
<a href="Main.jsp">메인가기</a>
</body>
</html>