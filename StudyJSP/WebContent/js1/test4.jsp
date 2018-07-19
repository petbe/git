<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*사이트에 가입할건지 물어보고 확인 누르거  */
 
 function fun1() {
	//자바스크립트의 내장 함수 중 confirm("가입하려면 확인 단추를 누르세요");
	 r=confirm("가입하려면 확인 단추를 누르세요");
	 //true false가 리턴된다.
	 
	 if(r){
		 alert("환영합니다.");
	 }else{
		 alert("취소되었습니다.");
	 }
	 
}
function fun2(){
	a=prompt("입력하세요","");/* prompt("입력하라는 메세지가 뜸","입력 가능한 text공간") 함수는 입력값을 리턴한다. */
	alert((parseInt(a)+100));//+를 사용하면 100 alert(100+100) 입력시에 100100으로 나온다. */-는 문제 없음.
						 //parseInt() 문자형태인 숫자를 int 형으로 바꿔 줄 수 있따. 
						 //parseFloat() 실수형태로 바꿔준다.
	alert(isNaN(a));     //문자 true  숫자 false
}
function fun3(){
	//값을 입력 받아서  문자라면 그대로 출력
	//문자숫자이면 더하기 100해서 출력
	a=prompt("입력하세요","");
	b=isNaN(a);
	//alert(b);
	if(b==true){
		alert(a+"입니다.");
	}else{
		alert(parseInt(a)+100);
	} 
}//fun3()
	
	function fun10(){
		a=4+5;
		alert(a);
		return a;
	}//
	

</script>
</head>
<body>
<!--WebContent/sp1/test4/jsp  -->
<input type="button" value="가입" onclick="fun1()">
<input type="button" value="확인" onclick="fun2()">
<input type="button" value="확인" onclick="fun3()">
<input type="button" value="확인" onclick="alert(fun10())">
</body>
</html>