<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/board/deleteForm.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
%>
<form action="deletePro.jsp" method="post">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="pageNum" value="<%=pageNum%>">
<table>
<tr><td colspan="2"> 게시물을 삭제하시겠습니까?</td></tr>
<tr><td>비밀번호</td><td><input type="text" name="pass"></td></tr>
<tr><td><input type="submit" value="석제하기">
<input type="button" value="다시쓰기" onclick="history.back()"></td></tr>
</table>

<form>
</body>
</html>