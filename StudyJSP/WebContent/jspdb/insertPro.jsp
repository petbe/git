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
//post 방식  request 한글처리
request.setCharacterEncoding("utf-8");
%>
<h1>WebContent/jspdb/insertPro.jsp</h1>
<%
String no=request.getParameter("no");
String name=request.getParameter("name");
%>

<%
//1단계  JDBC프로그램에서 Driver연결프로그램가져오기
Class.forName("com.mysql.jdbc.Driver");

//2단계 Driver연결프로그램 가지고 디비에 연결
//DriverManager.getConnection(디비주소/디비명,디비사용자, 디비비밀번호);드라이버를 관리하는 역할 드라이버중 이디드라이버를 사용.하게됨.  
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con= DriverManager.getConnection(dbUrl,dbUser,dbPass);
//out.println("연결성공"+con);

//Connection  은 정보를 담는 곳
//3단계 연결정보를 이용해서 sql 만들고 실행할수 있는 프로그램 생성
int num=Integer.parseInt(no);
//String sql="insert into student values("+no+",'"+name+"')";
String sql="insert into student values(?,?)";
PreparedStatement pstmt = con.prepareStatement(sql);//con을 이용해 sql실행하고 생성하는 것 사용.
//pstmt.setInt(물음표순서,값);
pstmt.setString(2, name);


//4단계  sql실행 =>insert, update, delete
pstmt.executeUpdate();
//sql실행 =>결과 저장 select
//5단계 결과 출력,저장,..
//마무리작업
%>

번호: <%=no %>
이름:<%=name %>
</body>
</html>