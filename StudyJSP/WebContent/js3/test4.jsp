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
 						   - selelct
*/						
//document.폼이름.select상자이름.속성
//.name    .length     .option   .selectedindex 선택되어있는 번호   .type
//document.폼이름.select상자이름.options[0].속성 
//  .value 밸류값  .text 텍스트값  .selected   선택되면  true/false

//document.폼이름.select상자이름.메서드()
//.focus()   .blur()
function fun1(){
	
	/* if(document.fr1.sel.options[0].selected){
		alert("목록을 선택해주세요.")
		document.fr1.sel.focus();
		return;
	} */
	 if(document.fr1.sel.selectedIndex==0){
			alert("목록을 선택해주세요.")
			document.fr1.sel.focus();
			return;
	 }
// 	alert("타입:"+document.fr1.sel.type);
// 	alert("선택된인덱스번호: "+document.fr1.sel.selectedIndex);
// 	alert("option값"+document.fr1.sel.options[0].value);
// 	alert("option문자"+document.fr1.sel.options[0].text);
// 	alert("option선택여부"+document.fr1.sel.options[0].selected);
// 	document.fr1.sel.focus();
	document.fr1.submit();
}

</script>
</head>
<body>
<!--WebContent/js3/test4.jsp  -->
<form action="a.jsp" method="get" name="fr1">
<select name="sel">
	<option value="">과목을 선택하세요.</option><!--첫번쨰 선택시에는 선택이 안된것으로 처리해야한다.  -->
	<option value="java">java</option>
	<option value="jsp">jsp</option>
	<option value="db">db</option>
</select>

<input type="button" value="전송" onclick="fun1()">
</form>
</body>
</html>