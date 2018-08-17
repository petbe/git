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
<h1>WebContent/jspdb/deletePro.jsp</h1>
<% 
//request에서 값 받아야함.
request.setCharacterEncoding("utf-8");
String no=request.getParameter("no");
int num=Integer.parseInt(no);

//1단계 JDBC 설치 드라이버 파일을 불러옴.
Class.forName("com.mysql.jdbc.Driver");
//2단계 드라이버 이용 디비연결
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
//3단계 sql 만들어서 실행할수 있는 객체 생성
String sql="delete from student where no=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1,num);//pstmt.setInt(?의 순서,값);
//4단계 실행
pstmt.executeUpdate();
sql="select * from student";
pstmt = con.prepareStatement(sql);
//response.sendRedirect("select.jsp");
//4단계 실행
ResultSet rs = pstmt.executeQuery(); //rs에 저장.

%>
<table border="1">
<tr><td>번호</td><td>이름</td></tr>
<%//5단계 출력 
while(rs.next()){
	%><tr><td><%=rs.getInt("no") %></td><td><%=rs.getString("name") %></td></tr><%
}
%>
</table>
</body>
</html>