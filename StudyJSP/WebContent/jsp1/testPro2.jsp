<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- WebContent/jsp1/testPro2.jsp --><!-- form 잇어야 post를 사용 할 수 있다. -->
<% String idd= request.getParameter("id");%>
id=<%=idd %>
password=<%=request.getParameter("pwd")%>
email=<%=request.getParameter("email")%>
intro=<%=request.getParameter("txt")%>
gender=<%=request.getParameter("gender")%>
취미=<% String [] hobbies=request.getParameterValues("hobby");
	int i=0;
	if(hobbies!=null){
		for(String a:hobbies){ 
		%><%=a %>
		<%out.println(a);
		}
	}else{%>
		선택안함
	<% }

%>


</body>
</html>