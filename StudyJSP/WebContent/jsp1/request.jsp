<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WebCont/jsp1/request.jsp  -->
URL : <%=request.getRequestURL() %> <br>
URI : <%=request.getRequestURI() %> <br>
서버 도메인 : <%=request.getServerName() %><br>
포트번호 : <%=request.getServerPort() %><br>
프로토콜 : <%=request.getProtocol() %>
전송방식: <%=request.getMethod() %> 
컨텍스트경로 : <%=request.getContextPath() %><br>
컨텐트타입 : <%= request.getContentType() %><br>
사용자 ip주소 : <%=request.getRemoteAddr() %><br>
물리적 경로:<%=request.getRealPath("/") %><br>
http 헤더정보 : <%=request.getHeader("host") %><br>
http 헤더정보 : <%=request.getHeader("accept-language") %><br>
http 헤더정보 : <%=request.getHeader("user-agent") %><br>
http 헤더정보 : <%=request.getHeader("connection") %><!-- 요청 하면 커넥트 연결해서 가만있으면 끊어짐  -->

</body>
</html>