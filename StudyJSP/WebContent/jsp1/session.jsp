<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WebCont/jsp1/session.jsp  -->
<!-- 사용자가 주소가 서버에 도착하면 세션이라는 공간이 생겨 "연결 정보"를 저장한다.  그후 처리 담당자와 리퀘스트가 생김. 요청을 처리후 사용자에게 정보를 주고 ,  그후 반응이 없으면 사용자와 서버는
연결이 끊어 지는데, 사용자가 다른 페이지를 넘어가단가 실행을 하면?  그대로 돌아간다.  그 이유는 세션이 유지가 되기 때문에. 세션에 연결정보가 담겨있기 때문에
연결이 끊어져도 세션이 살아있어 더시 연결된다.   세션이 사라지는 경우는 로그아웃 , 혹은 셋팅된 시간(기본시간30분)이 지났을때 사라진다.
ps.내장객체는 전부 저장 공간. 내.장.객.체 리서 별다른 생성없이 사용 가능.  세션의 경우 자바단에선 생성해서 써야한다.쿠키는 객체를 생성해서 저장.
-->

<%
	//session 서버연결정보를 저장
%>
세션 ID : <%=session.getId() %><br>
생선시간 :<%=session.getCreationTime() %><br>
최종접속시간: <%=session.getLastAccessedTime() %><br>
세션유지시간:<%=session.getMaxInactiveInterval() %><br>
세션유지시간 벼경<% session.setMaxInactiveInterval(3600); %><br>
세션유지시간:<%=session.getMaxInactiveInterval() %><br>
세션삭제: <% session.invalidate(); %>
</body>
</html>