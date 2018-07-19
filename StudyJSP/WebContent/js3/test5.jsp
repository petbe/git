<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="test_1.js"></script>
<script type="text/javascript">

function check(){
	//아이디
	if(document.fr1.id.value==""){
		alert("아이디를 입력하세요.");
		document.fr1.id.focus();
		return;
	}
	//alert(document.fr1.id.value.length)
	
	//비밀번호
	if(document.fr1.pwd.value.length ==0){
		alert("비밀번호를 입력하세요.");
		document.fr1.pwd.focus();
		return;
	}
	//비밀번호를 4자리로 제한하기.
	//if(document.fr1.pwd.value.length <3 || document.fr1.pwd.value.length >8){
	if(!(document.fr1.pwd.value.length >3&& document.fr1.pwd.value.length<8)){
		alert("비밀번호가 4~7자리를 입력하세요.");
		document.fr1.pwd.focus();
		return;
	}
	//텍스트창
	if(document.fr1.txt.value.length==0){
		alert("텍스트를 입력하세요.");
		document.fr1.txt.focus();
		return;
	}
	//성별
	if(document.fr1.gender[0].checked==false && document.fr1.gender[1].checked==false){
		alert("남여 성별을 고르세요.");
		document.fr1.gender[0].focus();
		return;
	}
	
	//취미
	if(document.fr1.hobby[0].checked==false &&document.fr1.hobby[1].checked==false && document.fr1.hobby[2].checked==false)
	{	
		alert("취미를 선택하세요.");
		document.fr1.hobby[0].focus();
		return;
	}
	
	
	//취미 개수제한
	count=0;
	
 	for(i=0; i<3;i++){
 		
 		 if(document.fr1.hobby[i].checked==true)
		{
			++count;
		} 
	}
 	//alert(count);
 	
	if(count>=3){
		alert("취미는 2개 까지만 선택 가능합니다.");
		document.fr1.hobby[0].focus();
		return;
	} 
	//과목
	if(document.fr1.sel.selectedIndex==0){
		alert("목록을 선택해주세요.")
		document.fr1.sel.focus();
		return;
 }

	if(document.fr1.postIdex.value==""){
		alert("우편본호를 입력해야합니다.");
	
	sample4_execDaumPostcode();
	return;
	}
	r=confirm("이대로 회웝가입하시겠습니까?");
	
	 if(r){
	document.fr1.submit();
	}else
	 return;
	 
	 
}



function check2(){
		//if(document.fr1.id.value==""){/*계층적으로 불러오는 방법  */
		  if(document.getElementById('idd').value==""){/*id 속성을 사용해서 계층적으로 불러오지않고 바로 불러오기  */
			alert("아이디입력하세요.");
			document.fr1.id.focus();
			return false;//submit은 전송전에 함수를 거칠뿐이라 false를 리턴하지 않으면 무조건 전송해버린다.
			}
		//비밀번호
		if(document.fr1.pwd.value.length ==0){
			alert("비밀번호를 입력하세요.");
			document.fr1.pwd.focus();
			return false;
		}
		//비밀번호를 4자리로 제한하기.
		//if(document.fr1.pwd.value.length <3 || document.fr1.pwd.value.length >8){
		if(!(document.fr1.pwd.value.length >3&& document.fr1.pwd.value.length<8)){
			alert("비밀번호가 4~7자리를 입력하세요.");
			document.fr1.pwd.focus();
			return false;
		}
		//텍스트창
		if(document.fr1.txt.value.length==0){
			alert("텍스트를 입력하세요.");
			document.fr1.txt.focus();
			return false;
		}
		//성별
		if(document.fr1.gender[0].checked==false && document.fr1.gender[1].checked==false){
			alert("남여 성별을 고르세요.");
			document.fr1.gender[0].focus();
			return false;
		}
		
		//취미
		if(document.fr1.hobby[0].checked==false &&document.fr1.hobby[1].checked==false && document.fr1.hobby[2].checked==false)
		{	
			alert("취미를 선택하세요.");
			document.fr1.hobby[0].focus();
			return false;
		}
		
		
		//취미 개수제한
		count=0;
		
	 	for(i=0; i<3;i++){
	 		
	 		 if(document.fr1.hobby[i].checked==true)
			{
				++count;
			} 
		}
	 	//alert(count);
	 	
		if(count>=3){
			alert("취미는 2개 까지만 선택 가능합니다.");
			document.fr1.hobby[0].focus();
			return false;
		} 
		//과목
		if(document.fr1.sel.options[0].selected){
			alert("목록을 선택해주세요.")
			document.fr1.sel.focus();
			return false;
	 }

		if(document.fr1.postIdex.value==""){
			alert("우편본호를 입력해야합니다.");
		
		sample4_execDaumPostcode();
		return false;
		}
		r=confirm("이대로 회웝가입하시겠습니까?");
		
		 if(r){
		document.fr1.submit();
		}else
		 return false;
		 
	}


</script>
</head>
<body>
<!--WebContent/js3/test5.jsp  -->



<form action="a.jsp" method="get" name="fr1" onsubmit="return check2()"><!--클릭시 함수를 돌고 여기로 온다.   -->
	<fieldset>
		<legend align="top" >회원가입</legend>
<label>아이디:<input type="text" name="id" placeholder="아이디를 입력해주세요." id="idd"></label> 
<br>
비밀번호:<input type="password" name="pwd"><br>
email :<input type="email" name="email"><br><br>
우편번호: <input type="text" id="sample4_postcode" placeholder="우편번호" name="postIdex">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
<span id="guide" style="color:#999"></span>
<br><br>
자기소개:<textarea rows="5" cols="10" name="txt"></textarea><!--공간이 있으면 문자가 있는걸로 취급.  --><br>
<br>
성별:
<input type="radio" name="gender" value="남">남<!--네임에 밸류값을 남아 넘기기 떄문에 name value는 꼭 적어야한다.  -->
<label for"g1"><input type="radio" name="gender" value="여" id="g1">여</label>
<br><br>
취미:
<input type="checkbox" name="hobby" value="여행">여행
<input type="checkbox" name="hobby" value="게임">게임
<input type="checkbox" name="hobby" value="독서">독서
<br><br>
과목:
<select name="sel">
	<option value="">과목을 선택하세요.</option><!--첫번쨰 선택시에는 선택이 안된것으로 처리해야한다.  -->
	<option value="java">java</option>
	<option value="jsp">jsp</option>
	<option value="db">db</option>
</select>
<br><br>


<input type="button" value="회원가입" onclick="check()">
<input type="submit" value="회원가입전송">
</fieldset>
</form>
</body>
</html>