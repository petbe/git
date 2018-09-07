
<%@page import="board.BoardDAO"%>
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
request.setCharacterEncoding("utf-8");
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
String pass=request.getParameter("pass");

BoardDAO bdao = new BoardDAO();

int a=bdao.boardCheck(num,pass);

if(a==1){
	bdao.boarddelete(num);
	%>
	<script type="text/javascript">
		alert("삭제완료");
		location.href='list.jsp?num=<%=num %>&pageNum=<%=pageNum%>';
		</script>
	<%
}
if(a==0){
	%>
	<script type="text/javascript">
	alert("비밀번호 오류");
	history.back();
	</script>
	<% 
}

%>
</body>
</html>