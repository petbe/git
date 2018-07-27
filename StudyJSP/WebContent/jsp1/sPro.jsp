<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--WebContent/jsp1/sPro.jsp -->
<h1><!--WebContent/jsp1/sPro.jsp --></h1>
String id="사용자가 서버에 요청하는 정보를(form 태그정보) 저장하는 객체(request) 가져오기"<br>
<!--http://localhost:8080/StudyJSP/jsp1/sPro.jsp?id=a 에서  localhost:8080이란 자정공간에서 id를 가져오는것이 아래함수이다. -->
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
//String age=request.getParameter("age");


pageContext.setAttribute("page","pageContext Value"); //페이짐 마다 달라서 페이지 바뀌면 사라질것
request.setAttribute("req", "request Value");		  //요청 정보가 잇따면 다음 페이지로 가져가지지만 지금 a href로 넘기니 request는 없음. 서버정보랑  페이지 정보는 언들고감
session.setAttribute("sss","session Value");		  //세션은 페이지랑 관계없이 연결만 된 상태이면 그대로유지 된다.
application.setAttribute("app", "application Value"); //서버 사라지기 전에 계속 유지된다.
%><br><br>

아이디 : <%=id %><br>
패스워드: <%=pass %><br>
<%-- 나이: <%=age %><br> --%>
pageContext:<%=pageContext.getAttribute("page") %><br>
request :<%=request.getAttribute("req") %><br>
session :<%=session.getAttribute("sss") %><br>
application: <%=application.getAttribute("app") %><br>
<a href="sProPro.jsp?id=<%=id %>">이동하기</a><!--이동한다 ->서버에 페이지를 요청한다.이동만 요청 할뿐. 데이터를 넘기지는 못한다.  -->

<script type="text/javascript">
	alert("sProPro.jsp로 이동");
	<%-- location.href="sProPro.jsp?id=<%=id %>&pass=<%=pass%>"; --%>
	
</script>
<% 
//sProPro.jsp 이동
//out.println("<script>alert('1');</script>"); 
//response.sendRedirect("sProPro.jsp"+"?id="+id+"&pass="+pass); 
//경고 메세지 같은거 띄우고 싶으면 sendredirect를 쓰면 안된다.
//위에 번역하는 등 jsp가 먼저 실행되기 떄문에 html이나 js보다 jsp가 가장 먼저 실행된다.


/*forward: 1.현페이지에 있는 request정보를 가기고 다음 페이지로 이동한다.   attribute정보도 다 !
		   2.주소줄 현페이지=>실행화면 다음페이지     전페이지, 현 페이지를 한발씩 걸치고 있는 형태이다. 전페이지에 있는 것 처럼 보이지만 다음 페이지에 있는것이다.
*/
%>

그래도 값을 넘기고 싶다면?  get방식에서 주소를 이용해 파라미터를 넘길수 있따. 하지만 어트리뷰트는 안됨.

<%-- <jsp:forward />  혹은 <<jsp:forward></jsp:forward> --%>
<%-- <jsp:forward page="sProPro.jsp" /> --%>

<jsp:forward page="sProPro.jsp" >
	<jsp:param name="age"  value="10" />
</jsp:forward>
</body>
</html>