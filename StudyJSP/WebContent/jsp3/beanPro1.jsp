<%@page import="jsp3.BeanTest1"%>
<%@page import="com.sun.javafx.fxml.BeanAdapter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp3/beanPro1.jsp</h1>
<%/*한글처리
파라미터값 가져오기

자바파일에 name값 전달 =>하나의 묶음에 담아서 전달(자바빈)
자바빈 객체생성 -> 기억장소 할당, 초기값 저장 0 , null
자바빈(BeanTest1.java) name 파리미터 값 저장
db 1,2,3,4단계 실행   이 작업이 자바파일 함수로 정의. 디비작업=>자바 파일 함수로 정의 분리 */ 
 request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");

BeanTest1 b = new BeanTest1();//생성자로 초기화하고 생성된 객체의 주소를 b에 저장.
b.setName(name);

out.println("BeanTest1 name변수 저장된 값:"+ b.getName());

%>
</body>
</html>