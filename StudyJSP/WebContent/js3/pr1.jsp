<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function myFunction(){
	var a=document.getElementById("ipwd").value;
	if(a.length<5||a.length>13){
	document.getElementById("p1").innerHTML="잘못된 비밀번호입니다.";
	}else{
		document.getElementById("p1").innerHTML="";
	}
}
function openCheckId(){
	
	
}


function fun1(){
	var fid=document.getElementById("iid").value;
	var fpwd=document.getElementById("ipwd").value;
	var ftxt=document.getElementById("itxt").value;
	var fgen=document.getElementByName("gender").value;
	var fhobby=document.getElementByName("hobby").value;
	var fsel=document.getElementByName("sel").value;
	if(fid.length<5||fid.length>16){
		alert("아이디를 다시 화긴하세요");
		return false;
	}
	if(fpwd.length<5||fpwd.length>16){
		alert("비번를 다시 화긴하세요");
		return false;
	}
	if(document.)
	
	
}
</script>
</head>
<body>
<form action="pr1_join" method="get" name="fr1" onsubmit=" return fun1()">
<fieldset><legend>회원가입</legend>
아이디:<input type="text" id="iid"><br>
<input type="button" onclick="openCheckId()">
비밀번호:<input type="password" id="ipwd" onkeyup="myFunction()" placeholder="5~12자">
<span id="p1"></span>

자기소개:<br>
<textarea id="itxt" name="ntxt" noresize cols="40" rows="8"></textarea><br>
<br>
성별: 
<label for="m"><input type="radio" name="gender" value="남" id="m">남</label>
<label for="f"><input type="radio" name="gender" value="여" id="f">여</label>
<label for="g"><input type="radio" name="gender" value="기타" id="g">기타</label>
<br>
취미:
<input type="checkbox" name="hobby" value="가">가
<input type="checkbox" name="hobby" value="나">나
<input type="checkbox" name="hobby" value="다">다
<br>
과목:
<select name="sel">
	<option value="">과목을 선택하세요.</option>
	<option value="a">a</option>
	<option value="b">b</option>
	<option value="c">c</option>
</select>
<br>
<input type="submit" value="회원가입"> 
<input type="reset" value="취소">
</fieldset>
</form>
</body>
</html>