<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
//함수 fun1()
//10+20=(10+20)   
function fun1(){
	alert(10+"+"+20+"="+(10+20));
	alert(10+"-"+20+"="+(10-20));
	alert(10+"*"+20+"="+(10*20));
	alert(10+"/"+20+"="+(10/20)); // 형 상관없이 동작을함 java = 0 // javaScript =0.5	
}

function fun2(a,b){
	//변수 선언 -> 자바스크립트는 형이없음 (int, double ....), String 형태는 ""나 ''로 묶어줄수있음
	//var a=10;	//var 포함해서 변수 선언
	//b=20;		// var 없이도 변수 선언가능
	alert(a+"+"+b+"="+(a+b));
	alert(a+"-"+b+"="+(a-b));
	alert(a+"*"+b+"="+(a*b));
	alert(a+"/"+b+"="+(a/b));	
}
function fun3(a,b){
	return a+b;
}
function fun4(a,b){
	if(a>b)
		return a;
	else
		return b;
}
function fun5(a){
	if(a%2==0)
		return "짝수";
	else
		return "홀수";
}
function fun6(a){
	if(a==0)
		return 0;
	else if(a>0)
		return "양수";
	else
		return "음수";
}
</script>

</head>
<body>
<!-- WebContent/js1/test3.jsp -->

<input type="button" value ="연산" onclick="fun2(30,70)">
<input type="button" value ="더하기" onclick="alert('더한 결과 :'+fun3(10,20))">
<input type="button" value ="최대값" onclick="alert('최대값 :'+fun4(10,20))">
<input type="button" value ="짝수홀수" onclick="alert('결과값 :'+fun5(7))">
<input type="button" value ="양수영음수" onclick="alert('결과값 :'+fun6(-5))">
</body>
</html>