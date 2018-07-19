<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 객체
자바에선 함수가 없음 


객체로 정한 상대를 구성하는 요소를 파악하고 분해해서 
각각을 따로 구해서 합치는 형태로 프로그래밍한다.

윈도우창이라는 객체
윈도우창의 기능?
창 여는 기능 open()
창 닫는 기능close()
주소를 저장하는 기능 
새로고침기능
방문기록을 관리하는 기능   {이전페이지로 가기 기능

			앞페이지 가기 기능}


이미지기능{
	이미지 파일 저장기능
	이미지 꾸미기기능
	}
등....

}
이런 식으로 어떤 기능을 넣을건지  나눠서 구현해내는게
자바  윈도우창을 그런 객체로 구현하는 게 자바스크립트


 */
/*  윈도우 창은 계층적으로 존재한다.  
  window-  location==윈도우 창안으 주소
 			history ==방문기록 
 			documemt ==html - image, layer , link, ancher 등등..
 							- from태그() - text , password, textarea
 										-checkbox, radio
 										-select										
  */
  //window(속성(멤버함수):status, opener   
		  //, 멤버함수+(메서드); open(), close()) 주에 맞는 함수를 사용해준다.
	//window.status window.open()
function fun1(){
	//window.open("창을 열었을떄 보여질 페이지.","창이름","옵션");보일 옵션이나 창의 크기와 배치위를 지정할 수 있따.
	window.open("http://www.naver.com","win","width=300, height=200,top=200,left=200,scrollbars=yes,resizeable=yes,menubar=yes");
	//이름은 "" 만써서 생략가능하다.
}
function fun2(){
	window.close();
	
}
function fun3(){//나의 파일을 불러와서 실행시켜보자
	window.open("http://localhost:8080/StudyJSP/js2/winopen.jsp","winopen","width=300, height=200");
	
}	
	
</script>
</head>
<body>
<!--WebContent/js2/test1/jsp  -->
<input type="button" value="창열기" onclick="fun1()">
<input type="button" value="창닫기" onclick="fun2()">
<input type="button" value="window열기" onclick="fun3()">
</body>
</html>