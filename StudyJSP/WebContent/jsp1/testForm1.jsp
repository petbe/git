<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head> 
<body>
<!--WebContent/jsp1/testForm1.jsp  -->
  
<form action="testPro1.jsp" method="post" name="fr1"> <!--post는 한글 처리를 따로해줘야한다. testPro1에서  -->
이름: <input type="text" name="name">
나이: <input type="text" name="age">
<input type="submit" value="전송">
</form>
</body>
</html>