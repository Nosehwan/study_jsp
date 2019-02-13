<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board_test.*,java.util.*"%>    
<%
	BoardTestDAO dao = new BoardTestDAO();
	ArrayList<BoardTestVO> list = dao.getList();
	
	if(list.size() == 0){
		response.sendRedirect("errorpage.jsp");
	}
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 목록</h1>
	<a href="board_write.jsp"><span>글쓰기</span></a>
	<table border=1>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>등록날짜</th>
			<th>조회수</th>			
		</tr>
		<%for(BoardTestVO vo : list){%>
		<tr>
			<td><%=vo.getRno()%></td>   
			<td><a href="board_content.jsp?bid=<%=vo.getBid()%>&rno=<%=vo.getRno()%>"><%= vo.getBtitle()%></a></td>
			<td><%=vo.getBdate()%></td>
			<td><%=vo.getBhits() %></td>
		</tr>		
		<%} %>
	</table>
</body>
</html>





