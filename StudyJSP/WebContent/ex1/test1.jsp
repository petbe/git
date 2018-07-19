<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function fun1(){
	if(document.fr1.nname.value==""){
		alert("이름을 입력하세요");
		document.fr1.nname.focus();
		return false;
	}
	
	 if(document.fr1.njuminF.value.length!=6){
		alert("주민번호 앞자리 6자리 입력하세요");
		document.fr1.njuminF.focus();
		return false;
	}

	if(document.fr1.njuminB.value.length!=7){
		alert("주민번호 뒷자리 7자리를 입력하세요");
		document.fr1.njuminB.focus();
		return false;
	}
	
	if(document.fr1.nid.value.length<4||document.fr1.nid.value.length>10){
		alert("아이디는 4~10자 까지입니다.");
		document.fr1.nid.focus();
		return false;
	}
	if(document.fr1.npwd.value.length<4||document.fr1.npwd.value.length>10){
		alert("비밀번호는 4~10자 까지입니다.");
		document.fr1.npwd.focus();
		return false;
	}
	if(document.fr1.npwd.value != document.fr1.nrepwd.value){
		alert("비밀번호를 다시 확인하세요.");
		document.fr1.nrepwd.focus();
		return false;
	}
	
	if(document.fr1.nphone.value==""){
		alert("전화번호 입력");
		document.fr1.nphone.focus();
		return false;
	}
	
	if(document.fr1.sel.options[0].selected){
		alert("회원분류를 해주세요.");
		document.fr1.sel.focus();
		return false;
	} 
	
}
	
function funClickId(){
	alert("중복확인 완료");
}

function postopen(){
	window.open("test2.html","우편변호","width=200, height=200, scrollbars=no, resizable=yes") 
}

</script>
</head>
<body>
<form action="a.jsp" method="get" name="fr1" onsubmit="return fun1()">
		☆표시는 반드시 입<br>
		 ☆이름 <input type="text" name="nname" id="iname" size="10" ><br>
		  <span>공백없이입력해주십시오 예)<b>홍길동</b></b></span> <br>
		 ☆주민등록번호 <input type="text" name="njuminF" id="ijuminF" maxlength="6" size="7">
		 &nbsp;- &nbsp;<input type="text" name="njuminB" id="ijuminB" maxlength="7" size="7"><br>
		☆회원ID<input type="text" name="nid" id="iid" maxlength="10" size="12">
		<input	type="button" name="ncheckid" id="icheckid" value="중복확인" onclick="funClickId()"> <br><br>
		 ☆비밀번호<input type="password" name="npwd" id="ipwd" maxlength="10" size="12"><br>
		☆비밀번호학인<input type="password" name="nrepwd" id="irepwd" size="12"><br>
		email <input type="email" name="nemali" id="iemail" size="20"><br>
		☆전화번호<input type="text" name="nphone" id="iphone" size="15"><br>
		핸드폰 번호 <input type="text" name="nhphone" id="ihphone" size="15"><br>
		우편번호<input type="text" name="npostnumF" id="ipostnumF" size="4" >
		&nbsp;-&nbsp;<input type="text" name="npostnumB" id="ipostnumB" size="4">
		<input type="button" name="nserchpost" id="isearchpost" value="우편번호찾기" onclick="postopen()"><br>
		<input type="text" name="naddress" id="iaddress"><br>
		상세주소 <input type="text" name="nexaddress" id="iexaddress"><br>
		☆회원분류 <select name="sel">
			<option value="">선택해주십시오</option>
			<option value="학생">학생</option>
			<option value="회사원">회사원</option>
			<option value="기타">기타</option>
			<option value="학생">학생</option>
		</select> <br>   
		 <input type="submit" value="가입">
		 <input type="reset" value="취소">

	</form>
</body>
</html>