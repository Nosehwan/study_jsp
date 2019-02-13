<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 삭제하기</h1>
	<img src="http://localhost:9000/JavaWeb/images/delete.png"
		width="200" height="200">
	<h3>정말로 삭제하시겠습니까?</h3>
	<a href="board_delete_controller.jsp?bid=<%=request.getParameter("bid")%>">
	 	<button type="button">삭제하기</button></a>
	<a href="board_content.jsp">
		<button type="button">이전페이지</button></a>
	<a href="board_list.jsp">
		<button type="button">리스트</button></a>
</body>
</html>








