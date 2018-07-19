<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*  웹브라우저 내장객체
 * window - location
 		  - histoey
 		  - document -image,layer,link,anchor
 		  			 -from - text, password, textarea
 */
function fun1() {
	//document.폼이름.텍스트상자이름 .속성
	// .type   .name    .value
	//document.폼이름.덱스트상자이름 .메서드();
	//document.fr1.id.속성
	//.focus()   .blur() 커서 깜빡임 해제   .select() 블럭 설정
	alert(document.fr1.id.value);
	 document.fr1.id.value="";
	document.fr1.id.focus(); 
	document.fr1.id.blur(); 
	document.fr1.id.select();
}

function fun2(){
	//비밀번호 상자에 value값이 비어있으면
	//비밀번호 입력하세요 메시지.
	//비밀번호 포커스
	//문자열객체, 속성, .length 문자열의 길이 알수잇음. 
	//문자열객체.메서드()   .charAt(위치)  
	//비어있찌 않으면 전송.submit()
	//.substr(시작위치,끝위치)
	//.split("분리기준문자",개수)
//  	 str='문자열abcd';
// 	alert("문자열길이:"+str.length);
// 	alert("a 한문자뽑기:"+str.charAt(3));
// 	alert("ab 문자뽑기:"+str.substring(3,5));
// 	alert("abcd 문자뽑기:"+str.substring(3));
// 	str2="딸기/바나나/사과";
// 	alert("문자분리"+str2.split("/",3)); 
	
	if(document.fr1.id.value.length==0){
		alert("아이디를 입력하세요.");
		document.fr1.id.focus();
		return;
	}
	//alert(document.fr1.id.value.length)
	
	
	if(document.fr1.pwd.value.length ==0){
		alert("비밀번호를 입력하세요.");
		document.fr1.pwd.focus();
		return;
	}
	//비밀번호를 4자리로 제한하기.
	//if(document.fr1.pwd.value.length <3 || document.fr1.pwd.value.length >8){
	if(!(document.fr1.pwd.value.length >3&& document.fr1.pwd.value.length<8))
		alert("비밀번호가 4~7자리를 입력하세요.");
		document.fr1.pwd.focus();
		return;
	}
	
	if(document.fr1.txt.value.length==0){
		alert("텍스트를 입력하세요.");
		document.fr1.txt.focus();
		return;
	}
	
		alert(document.fr1.pwd.value);
		document.forms[0].action="basket.jsp";
		document.fr1.submit();
	 
	
}


</script>
</head>
<body>
<!--WenContent/js3/test2.jsp  -->

<form action="a.jsp" method="get" name="fr1">
아이디: <input type="text" name="id" value="아이디를 입력해주세요."><br>
비밀번호:<input type="password" name="pwd"><br>
<input type="password" name="pwd"  maxlength="4">dfdf
자기소개:<textarea rows="5" cols="10" name="txt"></textarea><!--공간이 있으면 문자가 있는걸로 취급.  -->
<input type="button" value="버튼" onclick="fun1()">
<input type="button" value="버튼2" onclick="fun2()">

</form>
</body>
</html>