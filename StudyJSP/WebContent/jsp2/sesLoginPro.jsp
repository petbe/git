<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=session.getId() %>
<h1>WenContent/jsp2/sesLoginPro.jsp</h1>
<%String id=request.getParameter("id");//id에는 각 문자열이 있는 주소가 입력됨.
  String pass=request.getParameter("pass");
//DB에서 저장된 아이디, 비빌번호
String dbid="lee";
String dbpass="123";
%>
DB에 저장된 아이디: <%=dbid%><br>
DB에 저장된 패스워드:<%=dbpass %><br>
아이디:<%=id %><br>
비밀번호:<%=pass %><br>
<%
//아이디 비교 (문자열비교)
//일지하면 "아이디 일치"
//틀리면 "아이디 일치하지 않습니다."
if(dbid.equals(id)){
	%>아이디 일치.<%
	if(dbpass.equals(pass)){
		%> 비밀번호 일치.<% 
		session.setAttribute("id", id);//세션값 생성(로그인 인증, 권한부여) "id","id변수값"
	
		%> <script type="text/javascript">
		alert("로그인 성공");
		location.href="sesLoginMain.jsp";</script><% 
		
		//response.sendRedirect("sesLoginMain.jsp");
	}else{
		%>비밀번호 일치하지 않습니다.<%
		
	}
			
}else{
	%>아이디 일치하지 않습니다.<%
}

%>
</body>
</html>