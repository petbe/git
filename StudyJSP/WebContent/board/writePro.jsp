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
<h1>WebContent/board/writePro.jsp</h1>
<%
//reqeust 한글처리
request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="bb" class="board.BoardBean"/>  <!-- 객체 생성 -->
<jsp:setProperty property="*" name="bb"/><!--form의 내용이 담긴다.  -->	
<%-- <jsp:setProperty property="name" name="bb"/>	
<jsp:setProperty property="pass" name="bb"/>
<jsp:setProperty property="subject" name="bb"/>
<jsp:setProperty property="content" name="bb"/>

 --%>

<%
//데이터저장해서 전송 자바빈파일 패키지 board 파일이름 BoardBean

//액션태그 객체 생성 useBean BoardBean bb

//액션태그setProperty 폼파리미터 =>자바빈 멤버변수 저장

//디비작업 파일 패키지 board 파일이름 BoardDAO
//객체생성 BoardDAO dbao
 BoardDAO d = new BoardDAO();
d.InsertBoard(bb);
//메서드 호출 InsertBoard(폼파리미터 저장된 자바빈 주소)

//list.jsp이동

%>
<script type="text/javascript">
	alert("수정완료");
	location.href="list.jsp";
	</script>
</body>
</html>