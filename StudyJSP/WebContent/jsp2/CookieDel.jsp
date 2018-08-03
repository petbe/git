<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/CookieDel.jsp</h1>
<%
//클라이언트에서 쿠키값 가져오기
//쿠키값이 있으면
//for if 쿠키값 찾기"CookName"
//시간을 0으로 설정함. 
String name="";
String value="";
Cookie cookies[]=request.getCookies();
		if(cookies!=null){
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("cookName")){
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}
		
%>
<script type="text/javascript">
alert("쿠키값 삭제");
location.href="CookieTest.jsp";
</script>
</body>
</html>