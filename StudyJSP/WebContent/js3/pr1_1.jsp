<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디: <%=request.getParameter("id")%><br>
비밀번호: <%=request.getParameter("pwd")%><br>
email<%=request.getParameter("email")%><br>
txt: <%= request.getParameter("txt") %><br>
gender:<%=request.getParameter("gender")%><br>
hobby:<%
			String[] hobbies=request.getParameterValues("hobby");
		
			for(String v : hobbies){
				out.print(v);
			}
			
			
		%><br>
sel: <%=request.getParameter("sel") %><br>

</body>
</html>