<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="color.jspf" %><!-- 파일을 참고하게 된다. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=col3%>">
<!--WebContent/jsp1/include.jsp  -->
<h1>WebContent/jsp1/include.jsp</h1>


<table border="1" width="600px" height="600px">
<tr><td colspan="2" height="100px">
<jsp:include page="top.jsp" > 
	<jsp:param name="id" value="kim"/>

</jsp:include></td></tr>
<tr><td width="100px"  height="400px"><jsp:include page="left.jsp" /></td><td>본문</td></tr>
<tr><td colspan="2" height="100"><jsp:include page="bottom.jsp" /></td></tr>
</table>
</body>
</html>