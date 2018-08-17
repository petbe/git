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
String id=(String)session.getAttribute("id");
if(id==null){
	response.sendRedirect("loginForm.jsp");
} %>

<h1>WebContent/jspdb2/Main.jsp</h1>
<%=id %>님이 로그인 하셨습니다.
<%
//세션 으로 가져온 값은 오브젝트형이라 (String)으로 다운캐스트 
//

%>
<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
<a href="info.jsp">회원정보보기</a>
<a href="updateForm.jsp">회원정보수정</a>
<a href="deleteForm.jsp">회원정보삭제</a>
<a href="list.jsp">회원목록</a>


</body>
</html>