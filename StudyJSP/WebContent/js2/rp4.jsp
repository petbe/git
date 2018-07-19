<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 웹브라우저 내장객체
	window - location
		   - history
		   - document
	document.속성    .title     .bgColor    .fgColor
					.linkColor    .alinkColor    .vlinkColor
	document.메서드()   .write()
	*/
	function fun1(){
		alert(document.bgColor);
		document.bgColor="yellow";
	}

	function fun2(col){
		//배경색 바꾸기
		document.bgColor=col;
	}
	function fun3(){
		document.write("본문쓰기");
	}
	
	</script>

</head>
<body>
<input type="button" value="배경색"  onclick="fun1()">
<input type="radio" name="ra" value="green" onclick="fun2('green')">green1
<input type="radio" name="ra" value="blue" onclick="fun2('blue')">blue
<input type="radio" name="ra" value="pink" onclick="fun2('pink')">pink
<input type="button" value="글쓰기" onclick="fun3()">
</body>
</html>