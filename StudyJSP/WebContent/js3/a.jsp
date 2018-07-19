<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WdbContent/js3/a.jsp  -->
<!--http://localhost:8080/StudyJSP/js3/a.jsp?id=111&pwd=1111&email=1111%4014.com&postIdex=06322&txt=1&gender=%EC%97%AC&hobby=%EA%B2%8C%EC%9E%84&sel=jsp  -->
<!-- http가 서버에 값을 넘겨주고 a.jsp를 요청하는 것. http는 post일떄는 자기 안에 데이터를 담고 get일떄는 
주소에 앞세우고 웹서버로 가서 a.jsp를 요청하는 정보를 웹서버에 요청한다. 
http/:.... 주소-> 웹서버 (요청정보) =>서버에서 요청정보를 저장할 공간에 저장 :request라는 객체에 저장됨.
request에 저장된 데이터들을 뽑아내는 함수는 request.getParameter()이다. 
//request.getParameter("파라미터,태그이름")-->
<!-- http가 데이터 가져가서 웹서버에 정보요청->웹서버가 http의 정보를 받기위헤  request객체를 준비
request 안에 모든 클라이언트 정보, 서버정보, 파라미터정보(id,wpd...)
request.getParameter("파리미터, 태그이름")을 사용해서 정보를 꺼낼수 있다.

이페이지의 경우 test6에서 정보를 넘겨 받아 현재 request에 form데이터들이 저장되어 있는 상태이다. 
--> 
<h1>a/jsp페이지 get방식으로 님기면 주소에 name속성의 값이 나열되어 있다.</h1>
&lt;%= %&gt;는 값을 바로 출력.<br>
아이디:<%=request.getParameter("id")%><br>
비밀번호:<%=request.getParameter("id") %><br>
email:<%=request.getParameter("email") %><br>
postIndex:<%=request.getParameter("postIndex") %><br>
txt: <%= request.getParameter("txt") %><br>
gender:<%=request.getParameter("gender") %><br>
<br><!-- request.getParameterValues 여러값받을때 --> 
   hobby:<% 
  			
  				String[] hobbies=request.getParameterValues("hobby");

				for(String val :hobbies){
					 out.print(val+"<br>");
				}	
				/* for(int i=0;i<hobbies.length;i++){
					out.print(hobbies[i]);
				} */
		%>  
sel: <%=request.getParameter("sel") %><br>
<%
//문자열 변수 name 정수형 변수 age 
String name="lsh";
int age=28;

out.println(name+"님의 <hr> 나이는 "+age+"입니다.<br>");
%>
<%=name+"의 나이는"+age%>
<%=name %>님의 <%="<br>"%>
나이는 <%=age %>입니다.

  
</body>
</html>