<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<h1>WebContent/jspdb2/updatePro.jsp</h1>
<%request.setCharacterEncoding("utf-8");
  
  String reId=request.getParameter("id");
  String rePass=request.getParameter("pass");
  String reName=request.getParameter("name");
  
  Class.forName("com.mysql.jdbc.Driver");
  String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
  String dbUser="jspid";
  String dbPass="jsppass";
  Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
  String sql="select pass from member where id=?";
  PreparedStatement pstmt = con.prepareStatement(sql);
  pstmt.setString(1,reId);
  ResultSet rs = pstmt.executeQuery();
  rs.next();
  String pass=rs.getString("pass");
  
  if(rePass.equals(pass)){
	  String sql2="update member set name=? where id=?";
	  PreparedStatement pstmt2 = con.prepareStatement(sql2);
  		pstmt2.setString(1,reName);
  		pstmt2.setString(2,reId);
  		pstmt2.executeUpdate();
  		pstmt2.close();
  		
  		%><script type="text/javascript">
  		alert("수정완료");
		location.href="Main.jsp";
  		</script><% 
  }else{
	  %><script type="text/javascript">
		alert("비밀번호 틀림");
	 	history.back();
		</script><% 
  }
  
 
  rs.close();
  pstmt.close();
  con.close();
  
%>
</body>
</html>