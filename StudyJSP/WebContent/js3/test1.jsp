<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

// document.form[0].속성  .action    .method
// document.fr1.메서드()  .submit() 서비밋 기능 대신 하는거   .reset() 리셋버튼 대신할수잇음
function fun1(){
	alert(document.forms[0].action);
	alert(document.forms[0].method);
	//b.jsp 이동 전송방식은  post  전송 subit()
	 document.forms[0].action="b.jsp";
	document.forms[0].method="post";
	document.forms[0].submit(); 
}


function fun2() {
	//바로구매 할까요? 확인 order.jsp 이동
			//    취소 basket.jsp 이동
	r= confirm("구매하시겠습니까?");
	alert(document.forms[0].action);
	alert(document.forms[0].method);
	
	if(r==true){
		document.forms[0].action="order.jsp";
		//document.forms[0].submit();
	}else{
		document.forms[0].action="basket.jsp";
		//document.forms[0].submit();
	}
	document.forms[0].submit();
	
}
</script>
</head>
<body>
<!--WebContent/js3/test1.jsp  -->
<form action="a.jsp" method="get" name="fr1">
<!-- action:from안의데이터를 action의 페이지로 가져다 준다.데이터를 가진 하이퍼링크 전송한다. 서브밋 시킨다고 말함. -->
<!-- mothod: 데이터를 가지고 가는 방식 . 모든 하이퍼링크는 get방식이나 form에선 post방식을 쓸 수 있다. -->

<input type="text" name="id"><br><!--넘기는 값은 id의 값으로 되어있다. name의 기능  -->
<input type="submit" value="전송">
<input type="button" value="버튼" onclick="fun1()">
<input type="button" value="장바구니" onclick="fun2()">
</form>
</body>
</html>