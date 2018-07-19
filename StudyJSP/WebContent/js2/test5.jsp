<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//웹브라우저 내장객체
//window - location
//     - history
//     - document - image,layer,link,anchor.. 이미지 이름.속성으로 사용.
// document.images[0].속성   .src .border .width .height태그에 있는 속성값을들 가지고 변경가능하다.
// document.images[0].메서드()

// document.이미지이름.속성
// document.이미지이름.메서드()
function fun1() {
	alert(document.images[0].src);//이미지 값을 가져와서 1.jpg로 바꾸는 함수
	// 이미지  "1.jpg" 변경
	//document.images[0].src="1.jpg";
	document.im.src="1.jpg";
	// 테두리 두께   너비   높이
	document.im.border=10;
	document.im.width=100;
	document.im.height=50;
}
function fun2(){//기존 이미지를 수정해줌.클릭시에.
	document.images[1].border="5";
	document.im3.width="300";
	
}
function fun3(){
	document.im4.src="5.jpg";
}

function fun4(){
	document.im4.src="4.jpg";
}
</script>
</head>
<body>
<!-- WebContent/js2/test5.jsp -->
<!-- <img src="2.jpg" name="im" border="5" width="300" height="200">
<input type="button" value="이미지속성" onclick="fun1()"> -->
<img src="2.jpg" name="im" border="5" width="300" height="200" onclick="fun1()">
<img src="3.jpg" name="im3"   onclick="fun2()">
<img src="4.jpg" name="im4" onmouseover="fun3()" onmouseout="fun4()">//아무스 위에 있을 때 이미지 바꾸는 법.
</body>
</html>
