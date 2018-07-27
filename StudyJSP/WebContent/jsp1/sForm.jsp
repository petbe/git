<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WebContent/jsp1/sForm -->

<form action="sPro.jsp" method="get">
아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="pass"><br>

<input type= "submit" value="전송">
</form>
<%
/*내장객체의 값 저장  내장객체.setAttribute("이름","값")  모든 내장객체에 사용 가능. 	 센션으로 가정한다면 세션안에 공간에 여러개 저장하고 불러오고 삭제가능
    내장객체 값 가져오기  	   .getAttribute("이름")이름을 알고 있을때 값 가져오기  .getAttribute("mains")모를때 값 가져오기
    내장객체 값 1개 삭제             .removeAttribute("이름")
	영역  				   영역(내장객체 		객체의 값 (속성) 유효범위 
	page  				pageContext		해당페이지 정보만 저장
	request			    request			요청이 처리되는 동안 유효
	session 			session			세션이(연결)이 유지되는 동안 유효 페이지랑 무관
	application			application		웹 에플리케이션이 실행되는 동안 유효 서버끝날떄까지
*/

%>

</body>
</html>