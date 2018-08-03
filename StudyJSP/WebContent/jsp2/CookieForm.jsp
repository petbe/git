<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp2/CookieForm.jsp</h1>

<% 
String lo="korea";

Cookie langcookie[]=request.getCookies(); 
   if(langcookie!=null){
	   
	   for(int i=0; i<langcookie.length;i++){
		   if(langcookie[i].getName().equals("lang")){
			  
			   if(langcookie[i].getValue().equals("korea")){
				lo=langcookie[i].getValue();
				
			   }
			   
			   if(langcookie[i].getValue().equals("english")){
				
				   lo=langcookie[i].getValue();
			   }
		   }   
	   } 
   }
   if(lo.equals("korea")){
	   %><h3>안녕하세요.</h3><% 
   }
   if(lo.equals("english")){
	   %><h3>Hello</h3><% 
   }
   
%> 


내용:<%=lo %><br>

<form action="CookiePro.jsp" method="post">
	<input type="radio" name="lang" value="korea" <% if(lo.equals("korea")){
							  							 %>checked<% 
	  												 } %>>한국어
	<input type="radio" name="lang" value="english" <% if(lo.equals("english")){
							  							 %>checked<% 
	  												 } %>>영어
	<input type="submit" value="언어선택">
</form>
</body>
</html>