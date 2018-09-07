<%@page import="board.BoardBean"%>
<%@page import="java.util.List"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");
//BoardDAO dbao 객체생성
BoardDAO dbao = new BoardDAO();
int count=dbao.getBoradCount();
//int count = getBoradCount() 함수 호출 count() 
//select count(num) from board

//한화면(페이지)에 보여줄 글개수 설정
int pageSize=10;
//현재페이지 번호는 가져오기(파라미터 값 가져오기)
String pageNum=request.getParameter("pageNum");
//페이지 번호가 없으면 1페이지로 설정
if(pageNum==null){
	pageNum="1";
}
//페이지 시작하는 행번호 구하기.
int currentPage=Integer.parseInt(pageNum);

//10으로 페이지를 나누어서 1페이지 행번호 1
                    //2페이지 행번호 11; 3페이지 행번호 21;
                    
                    
   
int startRow=pageSize*(currentPage-1)+1;


int endRow=pageSize*currentPage;
//게시판 전체 글중에 최근글 시작 정렬 re_ref 내림차순
//게시판 글 startRow부터 pageSize만큼 가져오기 limit 시작행 -1 ,글개수
List<BoardBean> bl=null;
if(count!=0){
	//LIst<BoardBean> BoardList = getBoardLIst(시작행,가져올 글개수)
	 bl = (List<BoardBean>)dbao.getBoardLIst(startRow,pageSize);
}

%>

<h1>WebContent/board/list.jsp</h1>
<h1>게시판 글목록[전체글수 : <%=count %>]</h1>
<h3><a href="writeForm.jsp">게시판 글쓰기</a></h3>

<table border="1">
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<% 
for(BoardBean b:bl){%>

<tr><td><%= b.getNum()%></td><td><a href="content.jsp?num=<%= b.getNum()%>&pageNum=<%=pageNum%>"><%= b.getSubject()%></a></td><td><%= b.getName()%></td><td><%= b.getDate()%></td><td><%=b.getReadcount()%></td></tr>
<% }%>
</table>
<% 
//전체페이지수 구하기 글 50개면 10개씩 글출력 -> 5+0페이지
				//글 51개면 10개씩 글출력 => 5+1페이지
int pageCount= count%pageSize==0 ? (count/pageSize)+0:(count/pageSize)+1; 
//한화면에 보여줄 페이지개수 설정
int pageBlock=10;
//시작페이지번호 구하기 1~10 페이지 ->1  11~20 ->11
int startPage=((currentPage-1)/pageBlock)*pageBlock+1;
//끝페이지번호 구하기
int endPage=startPage+pageBlock-1;//10 개씩 나누는 마지막 자리
if(endPage>pageCount){
	endPage=pageCount;
}
//이전
if(pageBlock<startPage){
	%><a href="list.jsp?pageNum=<%=startPage-1%>">[이전]</a><% 
}
//1~10
for(int i=startPage; i<=endPage;i++){
	%><a href="list.jsp?pageNum=<%=i%>">[<%= i%>]</a><% 
}
//다음
if(endPage <pageCount){
	%><a href="list.jsp?pageNum=<%=endPage+1%>">[다음]</a><% 
}
%>

</body>
</html>