<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/board/updateForm.jsp</h1>

<%
request.setCharacterEncoding("utf-8");
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");

BoardDAO bdao = new BoardDAO();
BoardBean bb=bdao.getContent(num);

%>
<form action="updatePro.jsp" method="post">
<table border="1">
<tr><td>글쓴이</td><td><input type="text" name="name" value="<%=bb.getName()%>" readonly></td></tr>
<tr><td>비밀번호</td><td><input type="password" name="pass" ></td></tr>
<tr><td>제목</td><td><input type="text" name="subject" value="<%=bb.getSubject()%>"></td></tr>
<tr><td>내용</td><td><textarea name="content" rows="10" cols="20" ><%=bb.getContent()%></textarea></td></tr>
<tr><td colspan="2">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="pageNum" value="<%=pageNum%>">
<input type="submit" value="수정하기">
<input type="reset" value="다시쓰기"></td></tr>

</table>
</form>
</body>
</html>