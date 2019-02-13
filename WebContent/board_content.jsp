<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board_test.*"%>
    
<%
	BoardTestDAO dao = new BoardTestDAO();
	BoardTestVO vo = dao.getContent(Integer.parseInt(request.getParameter("bid")));
	dao.getHitsUpdate(Integer.parseInt(request.getParameter("bid")));
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 상세</h1>
	<table border=1>
		<tr>
			<th>번호</th>
			<td><%=request.getParameter("rno") %></td>
			<th>등록날짜</th>
			<td><%=vo.getBdate()%></td>
			<th>조회수</th>
			<td><%=vo.getBhits()%></td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="5"><%=vo.getBtitle()%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5"><%=vo.getBcontent()%></td>
		</tr>		
	</table><br>
	<a href="board_update.jsp?bid=<%=request.getParameter("bid")%>&rno=<%=request.getParameter("rno")%>">
		<button type="button">수정하기</button></a>
	<a href="board_delete.jsp?bid=<%=request.getParameter("bid")%>">
		<button type="button">삭제하기</button></a>
	<a href="board_list.jsp">
		<button type="button">리스트</button></a>
</body>
</html>










