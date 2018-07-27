<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WebContent/jsp1/sProPro/jsp -->
<h1>WebContent/jsp1/sProPro.jsp</h1>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String age=request.getParameter("age");
//기억 공간에 값이 저장된다. 값으로는 모든형이 다 들어갈 수 있따. 


%>

아이디 : <%=id %>    ---------request를 받지 못햇으니 null이다<br>
비밀번호 : <%=pass %><br>
나이: <%=age %><br>
<br><br>
pageContext:<%=pageContext.getAttribute("page") %><br>
request :<%=request.getAttribute("req") %><br>
session :<%=session.getAttribute("sss") %><br>
application: <%=application.getAttribute("app") %><br>

<a href="sProPro.jsp">이동한다 ->서버에 페이지를 요청한다.이동만 요청 할뿐. 데이터를 넘기지는 못한다.</a>
</body>
</html>