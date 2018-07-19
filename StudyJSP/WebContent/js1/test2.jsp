<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
	// 경고메세지 3개 실행문? 함수로 정의해준다
	// 함수 : 자주 사용하는 명령을 모아 정의 (자바 메소드)
	// 함수 사용 : 필요할때 함수의 이름을 불러서 사용
	/*function 함수이름(전달받은 값을 저장할 변수){
		//실행할 명령
		return 리턴할 값;
	}*/
	function msg(){
		alert('경고 1번');
		alert('경고 2번');
		alert('경고 3번');
	}
	function msg2(a){
		alert("내가 받은 금액은 : "+a);
	}
	function msg3(){
		alert("음료수를 선택하세요 ");
		return "사이다";
	}
	function msg4(x){
		//변수 : 기억장소에 이름을 부여해서 사용
		alert("내가 받은 금액은 : "+x);
		return "물";

	}
</script>
</head>
<body>
<!-- WebContent/js1/test2.jsp -->
<input type="button" value="버튼" onclick="msg()">
<input type="button" value="버튼2" onclick="msg2(100)">
<input type="button" value="버튼3" onclick="alert(msg3())">
<input type="button" value="버튼4" onclick="alert(msg4(500))">
<!-- 메세지가 여러개일땐 ;으로 구분 -->
</body>
</html>