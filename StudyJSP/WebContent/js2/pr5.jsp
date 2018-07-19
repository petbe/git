<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 웹브라웆 내장객체 
	window - location
		   - history
		   - document - image,layer,link,anchor..
	document.images[0].속성 .src   .border    .width  .height
	document.images[0].메서드()
	
	document.이미지이름.속성
	document.이미지이름.메서드()
	*/
function fun1(){
	alert(document.images[0].src);
	//이미지 "1.jpg" 변경
	//document.images[0].src="1.jpg";
	document.im.src="1.jpg";
	//테두리 두꼐 너비 높이
	document.im.border=10;
	document.im.width=100;
	document.im.height=50;
}
</script>
</head>
<body>
<!-- <img src="2.jpg" name="im" border="5" width="300" height="200">
<input type="button" value="이미지속성" onclick="fun1()"> -->
 <img src="2.jpg" name="im" border="5" width="300" height="200" onclick="fun1()"> 
</body>
</html>