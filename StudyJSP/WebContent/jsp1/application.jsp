<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- WebContent/jsp1/application.jsp  -->
<%
//application 내장객체  
/* application 웹서버가 동작하는 동안 기억하고 있는 내장객체 
서버가 시작되면 하나의 웹어플리케이션이 동작하는 것이다. 그 와 동시에 어플리케이션이라는 내장객체가 만들어진다. 웹서비스 중에는 1개가 계속 .
사용자들이 접속했을떄 생기는건 세션.  사용자가 요청을 하면 서블렛스레드가 생성되고 요청 끝나면 사라진다. */
%>
서버정보: <%=application.getServerInfo() %><br>
물리적경로:<%=application.getRealPath("/") %><br>
<%
/*out 내장객체 : 출력정보를 기억하고 있는 내장 객체  */
out.println("출력정보 저장하는 내장객체<br>");
%>
출력버퍼크기:<%=out.getBufferSize() %> 바이트<br>
출력버퍼의 남은양 :<%=out.getRemaining() %>바이트<br>
<%out.close();
out.println("출력정보 담은 후 출력");%>
<% //pageContext: 현재페이지 정보 기억하는 내장객체
   //config,page,exceptiion... 등등의 객체가  잇다
%>
</body>
</html>