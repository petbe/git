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
//       - history 방문기록을 기록하는 속성
// history.속성      .length 개수
// history.메서드()   .back() 뒤로가기 .forward()앞으로가기
//                  .go(-3) 뒤로3만큼  .go(2) 앞으로 2만큼
function fun1() {
	alert("방문기록개수 : "+history.length);
}
function fun2() {
	alert("아이디틀림 다시입력하세요");
	history.back();
}
function fun3() {
	history.forward();
}
</script>
</head>
<body>
<!-- WebContent/js2/test3.jsp -->
<input type="button" value="방문기록개수" onclick="fun1()">
<input type="button" value="뒤로가기" onclick="fun2()">
<input type="button" value="앞으로가기" onclick="fun3()">
</body>
</html>

