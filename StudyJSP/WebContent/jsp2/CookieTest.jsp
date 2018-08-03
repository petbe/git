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
/*
세션- 페이지 상관 없이 값 유지, 서버에저장, 보안상중요한 데이터 저장,연결정보저장,
쿠키- 페이지 상관 없이 값 유지, 클라이언트에저장, 보안상 상관 없는 데이터저장,서버의 부화줄이기 위해 사용
http가 자겨오는  reqeust에 담기는 데이터엔 쿠키값도 포함되어있음. 그래서 reqeust에서 가져오기.
*/
String name="";
String value="";
Cookie cookies[] = request.getCookies();//이게 객체 가지고 온거임. 내컴의 쿠키값 다 가져오는데 그중에 내가 필요하는걸 담아내는 작업이 핅요. 여러개라서 배열로 되어있음
if(cookies!=null){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("cookName")){
		  value=cookies[i].getValue();		
		  name=cookies[i].getName();
		}
		
	}
}
%>
<h1>WebContent/jsp2/CookieTest.jsp</h1>
쿠키이름:<%=name %><br>
쿠키값:<%=value %><br>

<input type="button" value="쿠키값저장" onclick="location.href='CookieSet.jsp'"><br>
<input type="button" value="쿠키값삭제" onclick="location.href='CookieDel.jsp'"><br>



</body>
</html>