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
<body >
<h1>WebContent/jspdb/select.jsp</h1>
<%
//1단계 드라이브 불러오기
Class.forName("com.mysql.jdbc.Driver");
//2단계 디비연결->연결정보저장
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
//3단계 연결정보이용해서 sql 구문만들고 실행할 객체 생성
String sql="select * from student";
PreparedStatement pstmt = con.prepareStatement(sql);

// 모든 학생 정보를 자겨오는 sql구문
//4단계 결과 저장 ResultSet rs = 실행 -> .executeQuery();
ResultSet rs = pstmt.executeQuery();
//cmd에서 봣던 데이터 가 담겨진다. REsultSet에.
// rs.next()는 다음데이터 있으면 true라서 없을 떄까지 출력한다. 
//대디터 다 사라지면 false가 됨다. rs.get()으로 데이터를 가져올 수 있음.

//5단계  테이블태그에 뿌려준다.

%>


<table border="1">
<% while(rs.next()){
	//다음 행으로 접근 데이터 있으면 true 없으면 flase
	//열접근 반복될 실행문 쿼리문에 나열된 열이 값이 있는지 없는지 검색하게됨.
	int no=rs.getInt("no");
	String name=rs.getString("name");
%><tr><td>번호</td><td><%=no %></td><td>이름</td><td><%=name %></td></tr><% 
//날짜
}

//마무리
rs.close();
pstmt.close();
con.close();
%>


</table>
</body>
</html>