<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- WebContent/jsp1/testForm2.jsp -->
<form action="testPro2.jsp" method="post" name="fr1" onsubmit="return">
<label>아이디:<input type="text" name="id" placeholder="아이디를 입력해주세요." id="idd"></label> 
<br>
비밀번호:<input type="password" name="pwd"><br>
email :<input type="email" name="email"><br><br>
자기소개:<textarea rows="5" cols="10" name="txt"></textarea><!--공간이 있으면 문자가 있는걸로 취급.  --><br>
<br>
성별:
<input type="radio" name="gender" value="남">남<!--네임에 밸류값을 남아 넘기기 떄문에 name value는 꼭 적어야한다.  -->
<label for"g1"><input type="radio" name="gender" value="여" id="g1">여</label>
<br><br>
취미:
<input type="checkbox" name="hobby" value="여행">여행
<input type="checkbox" name="hobby" value="게임">게임
<input type="checkbox" name="hobby" value="독서">독서
<br><br>
<input type="submit" vlaue="전송">
<input type="reset" vlaue="취소">
</form>
</body>
</html>