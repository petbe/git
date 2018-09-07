<%@page import="jsp3.BeanTest2"%>
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
<h1>WebContent/jsp3/beanPro2.jsp</h1>
<%request.setCharacterEncoding("utf-8"); %>
<%String id=request.getParameter("id");
  String pass=request.getParameter("pass");
  int num=Integer.parseInt(request.getParameter("num"));
  //BeanTest2 객체 생성 기억정소 할당, 초기값 할당.
  //BeanTest2 b = new BeanTest2();
  
 %>
 <jsp:useBean id="b" class="jsp3.BeanTest2"/>  <!-- id는 객체 변수명  -->
 <% 
/*  b.setId(id);
  b.setPass(pass);
  b.setNum(num);  */
 %>
 <!--name은 객체변수  property 객체의 멤버변수 근
 param 파라미터 이름. 알아서 넣어줌.   property와 param 이름 같으면 param생략 가능하다.-->
<%--  <jsp:setProperty property="id" name="b" param="id"/> 
 <jsp:setProperty property="pass" name="b" param="pass"/> 
 <jsp:setProperty property="num" name="b" param="num"/>  --%>
 <jsp:setProperty property="*" name="b"/><!--전부가 property와 param이 같을떄 이렇게 생략가능.   -->
 <% 
  
  //out.println(""+b.getId()+b.getNum()+b.getPass());
%>
아이디:<jsp:getProperty property="id" name="b"/><br>
비밀번호:<jsp:getProperty property="pass" name="b"/><br>
숫자:<jsp:getProperty property="num" name="b"/><br>
</body>
</html>