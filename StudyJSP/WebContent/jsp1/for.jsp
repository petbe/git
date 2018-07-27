<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WebCont/jsp1/for..jsp  -->
<%	String [] a= new String[]{"java","jsp","web","db"};
	String [] a1= new String[4];
	a1[0]="java"; a1[1]="jsp"; a1[2]="web"; a1[3]="db";
	String [] arr={"java","jsp","web","db"};
	for(int i=0; i<arr.length;i++){%>
	<%-- <%="arr["+i+"]"+arr[i] %><br> --%>
	arr[<%=i %>]=<%=arr[i] %><br>
	<%}
%>
arr[0]=java<br>
arr[1]=jsp<br>
arr[2]=web<br>
arr[3]=db<br>
<table border="1">
<tr><td>번호</td><td>과목</td></tr>
<tr><td>0</td><td>java</td></tr>
<tr><td>1</td><td>jsp</td></tr>
<tr><td>2</td><td>web</td></tr>
<tr><td>3</td><td>db</td></tr>
</table>
<table border="1">
<tr><td>번호</td><td>과목</td></tr>
<% 
	for(int i=0;i<arr.length;i++){
		
		%>
		<tr><td><%=i %></td><td><%=arr[i] %></td></tr>
		
	<% }
%>

</table>

</body>
</html>