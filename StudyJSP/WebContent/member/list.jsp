<%@page import="member.MemberBean"%>
<%@page import="java.util.ArrayList"%>

<%@page import="member.MemberDAO"%>
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

<script type="text/javascript">



</script>
<h1>WebContent/member/list.jsp</h1>

<%request.setCharacterEncoding("utf-8");


String id=(String)session.getAttribute("id");
if(id==null||!id.equals("admin")){/*관리자 db를 만들어서 그걸로 뿌려줄듯.*/
	response.sendRedirect("loginForm.jsp");
}

%>

	
<%
MemberDAO d = new MemberDAO();

for(MemberBean b:d.get_M_List()){
	
%><table border="1">
<tr><th colspan="2">회원정보 페이지<</th></tr>
<tr><th>아이디:</th><td><%=b.getId() %></td></tr>
<tr><th>비밀번호:</th><td><%=b.getPass() %></td></tr>
<tr><th>이름:</th><td><%=b.getName() %></td></tr>
<tr><th>나이:</th><td><%=b.getAge() %></td></tr>
<tr><th>성별:</th><td><%=b.getGender() %></td></tr>
<tr><th>email:</th><td><%=b.getEmail() %></td></tr>
<tr><th>생성날짜:</th><td><%=b.getReg_date() %></td></tr>
</table>

<hr>

<% }
%>
<a href="Main.jsp">메인가기</a>
</body>
</html>