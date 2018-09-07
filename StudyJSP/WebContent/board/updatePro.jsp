<%@page import="board.BoardBean"%>
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
<h1>WebContent/board/updatePro.jsp</h1>
<%
request.setCharacterEncoding("utf-8");
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

BoardDAO bdao = new BoardDAO();

int num1 =bdao.boardCheck(num,pass);//디비에서 가져온 패스워드
BoardBean bb= new BoardBean();

System.out.println(num1);


if(num1==0){//디비서 가져온 패스워드와 파라미터로 넘겨온 값을 비교.
	%>
	<script type="text/javascript">
	alert("비밀번호 오류");
	history.back();
	</script>
	<% 
}
if(num1==1){
bb.setNum(num);
bb.setName(name);
bb.setSubject(subject);
bb.setContent(content);
bdao.updateContent(bb);
%>
<script type="text/javascript">
	alert("수정완료");
	location.href="content.jsp?num=<%=num%>&pageNum=<%=pageNum%>";
	</script>
<%} %>
</body>
</html>