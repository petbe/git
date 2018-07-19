<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check2(){
	if(document.getElementById('idd').value==""){
		alert("아이디를 입력하세요");
		document.fr1.id.focus();
		return false;
	}
	if(document.fr1.pwd.value==""){
		alert("아이디를 입력하세요");
		document.fr1.pwd.focus();0
		return false;
	}
	if(document.fr1.txt.value==""){
		alert("아이디를 입력하세요");
		document.fr1.id.focus();
		return false;
	}
	
}


</script>
</head>
<body>
<form action="a.jsp" method="get" name="fr1" onsubmit="return check()">
아이디:<input type="text" name="id" id="idd"><br>
비밀번호:<input type="password" name="pwd"><br>
자기소개:<textarea rows="5" cols="10" name="txt"></textarea><br>
성별:<input type="radio" name="gender" value="남">남
<input type="radio" name="gender" value="여">여<br>
취미:d
<input type="checkbox" name="hobby" value="여행">여행
<input type="checkbox" name="hobby" value="독서">독서
<input type="checkbox" name="hobby" value="운동">운동<br>
과목:
<select name="sel">
	<option value="">과목을 선택하세요</option>
	<option value="java">java과목</option>
	<option value="jsp">jsp과목</option>
	<option value="db">DB과목</option>
</select><br>


</form>
</body>
</html>