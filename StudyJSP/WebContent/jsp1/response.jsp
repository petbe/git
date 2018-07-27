<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WebCont/jsp1/response.jsp  -->
<%
//response 내장객체 : 처리결과만 응답정보를 저장하는 내장객체  
//서버->클라이언트에게 주기 위한 준비 하는 객체  보낼 자료를 준비해 서버로 보내면 
//그 자료를 http가 클라이언트에 전달 location.href  자바스크립트단에서 데이터 넘기는거
//request에서 getheader("host")하면 그건 http에서 가져온 정보들이다.  이제 처리한 정보를 보낼때는? setheader("host",값) 
//request로 홛인하고 response로 값을 줄 수 있다. ↓
//response.setHeader(이름,값) : http 해더정보를 변경할떄
//response.addCookie(쿠키) :서버에서 클라이언트로 쿠키값 저장  
//response.setContentType("타입값")  //contentType="text/html; charset=UTF-8" 클라이언트의 ContentTpye 변경 가능
//response.Redirect("주소 URL") 주소로 (이동)  값을 가지고 잇지는 않다.

response.sendRedirect("request.jsp");

out.print("adf");
//계속해서 아래의 코드를 실행하기 떄문에 페이지를 넘기거나 정료시켜야하는듯.
%>
</body>
</html>