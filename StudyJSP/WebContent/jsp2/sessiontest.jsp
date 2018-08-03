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
//세션 : 연결정보 서버 저장
//id는 세션 전체 공간의 id.  우리가 넣은 값은 그 공간 안에 들어간다.
//어떤 페이지를 다니든 세션은 살아있음.
String ses=(String)session.getAttribute("sname");//오브젝트형이라 스트링으로 형변환 해줘야함.
//세션값이 없으면 "세션값 없음"
			if(ses==null){
				ses="세션없음"	;
			}

%>

세션 id값:<%=session.getId()%><br>
세션 값:<%=ses%>
<h1>WebContent/jsp2/sessiontest.jsp</h1>
<input type="button" value="세션값저장" onclick="location.href='sessionSet.jsp'"><br>
<input type="button" value="세션값삭제" onclick="location.href='sessionDel.jsp'"><br>
<input type="button" value="세션값초기화" onclick="location.href='sessionInval.jsp'"><br>


</body>
</html>