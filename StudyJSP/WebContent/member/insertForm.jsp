<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<script type="text/javascript">
function fun() {
	var patt = new RegExp(/^[0-9]*$/);

	  if(document.getElementById('id').value==""){/*id 속성을 사용해서 계층적으로 불러오지않고 바로 불러오기  */
			alert("아이디입력하세요.");
			document.fr1.id.focus();
			return false;//submit은 전송전에 함수를 거칠뿐이라 false를 리턴하지 않으면 무조건 전송해버린다.
			}
	  if(document.getElementById('pass').value==""){/*id 속성을 사용해서 계층적으로 불러오지않고 바로 불러오기  */
			alert("비밀번호를 입력하세요.");
			document.fr1.pass.focus();
			return false;//submit은 전송전에 함수를 거칠뿐이라 false를 리턴하지 않으면 무조건 전송해버린다.
			}
	  if(document.getElementById('name').value==""){/*id 속성을 사용해서 계층적으로 불러오지않고 바로 불러오기  */
			alert("이름을 입력하세요");
			document.fr1.name.focus();
			return false;//submit은 전송전에 함수를 거칠뿐이라 false를 리턴하지 않으면 무조건 전송해버린다.
			}
	  if(!patt.test(document.fr1.age.value)||document.fr1.age.value==""){/*id 속성을 사용해서 계층적으로 불러오지않고 바로 불러오기  */
			alert("나이를 다시 확인하세요");
			document.fr1.age.focus();
			return false;//submit은 전송전에 함수를 거칠뿐이라 false를 리턴하지 않으면 무조건 전송해버린다.
			}
	  
	  
	  if(document.fr1.gender[0].checked==false && document.fr1.gender[1].checked==false){
			alert("남여 성별을 고르세요.");
			document.fr1.gender[0].focus();
			return false;
		}
	  
	  if(document.fr1.email.value==""){/*id 속성을 사용해서 계층적으로 불러오지않고 바로 불러오기  */
			alert("email를 입력하세요");
			document.fr1.email.focus();
			return false;//submit은 전송전에 함수를 거칠뿐이라 false를 리턴하지 않으면 무조건 전송해버린다.
			}
	
	  
	  
}

</script>
<h1>WebContent/member/insertFrom.jsp</h1>
<form name="fr1" action="insertPro.jsp" method="post" onsubmit="return fun()">
<table border="1">
<tr><th colspan="2">회원가입 페이지<</th></tr>
<tr><th>아이디:</th><td><input type="text" name="id" id="id"></td></tr>
<tr><th>비밀번호:</th><td><input type="password" name="pass" id="pass"></td></tr>
<tr><th>이름:</th><td><input type="text" name="name" id="name"></td></tr>
<tr><th>나이:</th><td><input type="text" name="age" id="age"></td></tr>
<tr><th>성별:</th><td>남<input type="radio" name="gender" value="남">
	여<input type="radio" name="gender" value="여"></td></tr>
<tr><th>이메일:</th><td><input type="text" name="email" ></td></tr>
<tr><td colspan="2"  align="center"><input type="submit" value="학생등록"> 
<a href="loginForm.jsp"><input type="button" value="로그인 화면" ></a></td></tr>


</table>


<!-- 태그 입력값을 가지고 인설트위해 request로 파라미터 값 넘기고 pro에 -->
</form>

</body>
</html>