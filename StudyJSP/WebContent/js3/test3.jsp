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
 		  			 	   - checkbox, radio
 */
/* document.폼이름.라디오박스이름.속성  
 * .type  .name .value. .checked 체크되어있으면 true/false
   document.폼이름.라디오 박스이름[].메서드()
 
 */
 function fun1(){
	alert(document.fr1.gender[0].value);
	
	document.fr1.gender[0].focus();//블럭 잡아준다
	document.fr1.gender[1].click();//체크 눌러준다 클릭해줌
	alert(document.fr1.gender[1].checked);//지금 클릭되 있는지 아닌지 알수 있음 T/F
	
	
}
function fun2(){
	//남 선택 안되어 있고 여 선택 안되어 있는 경우
	
	if(document.fr1.gender[0].checked==false && document.fr1.gender[1].checked==false){
		alert("남여 성별을 고르세요.");
		document.fr1.gender[0].focus();
		return;
	}
	if(document.fr1.hobby[0].checked==false &&document.fr1.hobby[1].checked==false && document.fr1.hobby[2].checked==false)
	{	
		alert("취미를 선택하세요.");
		document.fr1.hobby[0].focus();
		return;
	}
	
	
	
	count=0;
	
 	for(i=0; i<3;i++){
 		
 		 if(document.fr1.hobby[i].checked==true)
		{
			count++;
		} 
	}
 	alert(count);
 	
	if(count>=2){
		alert("취미는 2개 까지만 선택 가능합니다.");
		document.fr1.hobby[0].focus();
		return;
	} 
	
	//document.fr1.action="a.jsp";
	document.fr1.submit();
	
}
 
 
</script>
</head>
<body>
<form action="a.jsp" method="get" name="fr1">
성별:<input type="radio" name="gender" value="남">남<!--네임에 밸류값을 남아 넘기기 떄문에 name value는 꼭 적어야한다.  -->
<label for"g1"><input type="radio" name="gender" value="여" id="g1">여</label>
<br>
취미:
<input type="checkbox" name="hobby" value="여행">여행
<input type="checkbox" name="hobby" value="게임">게임
<input type="checkbox" name="hobby" value="독서">독서
<input type="button" value="버튼" onclick="fun2()">
</form>
</body>
</html>