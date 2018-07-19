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
//window 생략가능
// window.location.속성(멤버변수)
// window.location.메서드()(멤버함수)
// location.href 주소 저장 하이퍼링크 기능
// .protocol  .hostname  .port .host
// location.reload() 새로고침
// location.replace() 주소 변경
function fun1() {
	//alert("프로토콜:"+location.protocol);
	//alert("서버:"+location.host);
	alert("현페이지주소 : "+location.href);
	alert("test1.jsp이동");
	location.href="test1.jsp"; //재이동
	//location.replace("test1.jsp"); 뒤로가기가 없음.//기존꺼 제거 하고 새롷만들어서 이전 페이지가 없음
	//새로고침
	//location.reload();
}
</script>
</head>
<body>
<!-- WebContent/js2/test2.jsp -->
<input type="button" value="페이지주소확인" onclick="fun1()">
</body>
</html>


