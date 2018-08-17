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
<h1>WebContent/jspdb/updataPro.jsp</h1>

<%
request.setCharacterEncoding("utf-8");
%>
<% 
String no=request.getParameter("no");
String name=request.getParameter("name");
int num=Integer.parseInt(no);


//1단계
Class.forName("com.mysql.jdbc.Driver");

//2단계
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);

//3단계
//update 테이블이름 set 변경할 열이름=? where 조건열=?
String sql="update student set name=? where no=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(2, num);//pstmt.setInt(물음표순서,값);
pstmt.setString(1, name); //번호는 무조건 무름표순서
//4단계
pstmt.executeUpdate();
%>
번호: <%=no %>
이름:<%=name %>


</body>
</html>