<%@page import="member.MemberDAO"%>

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
<h1>WebContent/member/insertPro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");

 String id=request.getParameter("id");
 String pass=request.getParameter("pass");
 String name=request.getParameter("name");
 int age=Integer.parseInt(request.getParameter("age"));
 if(request.getParameter("age").equals(null)){
 	age=0;}
 String gender=request.getParameter("gender");
 String email=request.getParameter("email");
 Timestamp reg_date=new Timestamp(System.currentTimeMillis());
//자바빈 - 패키지 member 파일이름 MemberBean (MemberDTO)
//멤버변수 정의 set get 메서드 준비

//MemberBean 객체 생성 mb

//풀 파라미터 값 => 자바빈 멤버변수 저장
 %>
 <jsp:useBean id="mb" class="member.MemberBean"/>
 <jsp:setProperty property="*" name="mb"/> 
 id:<jsp:getProperty property="id" name="mb"/>
 pass:<jsp:getProperty property="pass" name="mb"/>
 name:<jsp:getProperty property="name" name="mb"/>
 age:<jsp:getProperty property="age" name="mb"/>
 gender:<jsp:getProperty property="gender" name="mb"/>
 email:<jsp:getProperty property="email" name="mb"/>
 <%-- reg_date:<jsp:getProperty property="reg_date" name="mb"/> --%> 
 <jsp:plugin code="" codebase="" type="bean"></jsp:plugin>
 <% 
 
 //MemberBean mb = new MemberBean();
//mb.setId(id);
//mb.setPass(pass);
//mb.setName(name);
//mb.setAge(age);
//mb.setGender(gender);
//mb.setEmail(email);*/
 mb.setReg_date(reg_date); 
//out.println(mb.getReg_date());
 /*객체 주소를 디비에 가져사 저장하고 불러온다.*/
 
 //디비작업 하는 파일 - 패키지 member 파일이름 MemberDAO 
 //클래스  멤버변수,생성자, 메서드 
 //리턴할 형 insertMember(주소를 받아서 저정하는 변수) 메서드 만들기
 
 //MemberDAO mdao 객체 생성
 //insertMember 함수 호출

MemberDAO mdao = new MemberDAO();
mdao.InsertMember(mb);

 
// Class.forName("com.mysql.jdbc.Driver");
// String dbUrl="jdbc:mysql://localhost:3306/jspdb2";
// String dbUser="jspid";
// String dbPass="jsppass";
// Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);

// String sql="insert into member values(?,?,?,?,?,?,?)";
// PreparedStatement pstmt = con.prepareStatement(sql);
// pstmt.setString(1,id);
// pstmt.setString(2,pass);
// pstmt.setString(3,name);
// pstmt.setTimestamp(4,reg_date );
// pstmt.setInt(5,age);
// pstmt.setString(6,gender);
// pstmt.setString(7,email);
// pstmt.executeUpdate();
%>
 <script type="text/javascript">
alert("가입완료");
location.href="loginForm.jsp";
	</script>

</body>
</html>