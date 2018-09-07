<%@page import="member.MemberBean"%>
<%@page import="member.MemberDAO"%>

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
<h1>WebContent/member/updatePro.jsp</h1>
<%request.setCharacterEncoding("utf-8");
  
  String reId=request.getParameter("id");
  String rePass=request.getParameter("pass");
  String reName=request.getParameter("name");
  int reAge=Integer.parseInt(request.getParameter("age"));
  String reGender=request.getParameter("gender");
  String reEmail=request.getParameter("email");
  
  
  MemberBean b= new MemberBean();
  b.setId(reId);
  b.setPass(rePass);
  b.setName(reName);
  b.setAge(reAge);
  b.setGender(reGender);
  b.setEmail(reEmail); 
  MemberDAO d= new MemberDAO();
  
  boolean flag=d.updateMember(b);

  
  if(flag){
	
  		
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
  
 
  /* rs.close();
  pstmt.close();
  con.close(); */
  
%>
</body>
</html>