<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 웹브라우저 내장객체 
 * window - location 
		  - history
   history.속성    .length 개수
   hostory.메서드() .back() 뒤로가기   .forward()앞으로가기
				   .go(-3) 뒤로 3만큼   .g0(2)  앞으로 2만큼
 */
 function fun1() {
	alert("방문기록 개수:"+history.length);	
}

function fun2(){
	alert("뒤로");
	history.back();
	
}
function fun3(){
	history.forward();
}
</script>
</head>
<body>
<input type="button" value="방문기록개수" onclick="fun1()">
<input type="button" value="뒤로" onclick="fun2()">
<input type="button" value="앞으로" onclick="fun3()">
</body>
</html>