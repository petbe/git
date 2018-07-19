<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script src="script.js"></script> <!-- 자바스크립트 파일을 불러옴 / 여러개의 jsp파일을 한번에 수정가능 -->

<script type="text/javascript">
	alert("head 안에 자바스크립트");
</script>

</head>
<body>

<!-- WebContent/js1/test1.jsp -->
<!-- html 주석 (설명글)-->

<input type="button" value="버튼" onclick="alert('클릭')">
<input type="button" value="버튼2" ondblclick="alert('더블클릭')">
<input type="button" value="버튼3" onmouseover="alert('마우스오버')">
<input type="text" name="txt" onfocus="alert('포커스')"><!--커서가 깜박이는 형태를 포커스라함-->
</body>
</html>