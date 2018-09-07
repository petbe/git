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
<h1>WebContent/board/content.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");

	BoardDAO dbao = new BoardDAO();
	BoardBean bb=dbao.getContent(num);
	int readCount=dbao.readCount(bb.getReadcount(),bb.getNum());
	
%>

<table border="1">
<tr><td>글번호</td><td><%=bb.getNum()%></td>
	<td>조회수</td><td><%=readCount%></td>
	<td>작성일</td><td><%=bb.getDate() %></tr>
<tr><td>글제목</td><td colspan="3"><%=bb.getSubject()%></td></tr>
<tr><td>글내용</td><td colspan="3"><%=bb.getContent()%></td></tr>
<tr><td colspan="4">
<input type="button" value="글수정"
onclick="location.href='updateForm.jsp?num=<%=num %>&pageNum=<%=pageNum%>'">
<input type="button" value="글삭제"
onclick="location.href='deleteForm.jsp?num=<%=num %>&pageNum=<%=pageNum%>'">
<input type="button" value="글목록"
onclick="location.href='list.jsp?num=<%=num %>&pageNum=<%=pageNum%>'">
</td></tr>
</table>
</body>
</html>