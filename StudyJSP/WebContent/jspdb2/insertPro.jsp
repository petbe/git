<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jspdb2/insertPro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
Timestamp reg_date=new Timestamp(System.currentTimeMillis());

Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
String dbUser="jspid";
String dbPass="jsppass";
Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);

String sql="insert into member values(?,?,?,?)";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1,id);
pstmt.setString(2,pass);
pstmt.setString(3,name);
pstmt.setTimestamp(4,reg_date );

pstmt.executeUpdate();
%>
<script type="text/javascript">
alert("가입완료");
location.href="loginForm.jsp";
	</script>

</body>
</html>