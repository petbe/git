<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>연습</title>
<script type="text/javascript">
function fun1(){
 r=confirm("가입하려면 확인 단추 누르기");
 
  if(r){
  	alert("hi");
  }else{
    alert("no");
  }
}
function fun2(){
	a=prompt("hi","");
	b=isNaN(a);
	alert(b)
	if(b==true){
		alert("입니다");
	}else{
		alert("hi");
	}
}
</script>
</head>
<body>
<!--WebContent/sp2/pr1/jsp  -->
<input type="button" value="a" onclick="fun2()">
</body>
</html>