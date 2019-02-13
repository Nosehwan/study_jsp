<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board_test.*"%>
<%
	BoardTestDAO dao = new BoardTestDAO();
	BoardTestVO vo = dao.getContent(Integer.parseInt(request.getParameter("bid")));
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/JavaWeb/jquery/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#btnBoardUpdate").click(function(){
			
			if($("#btitle").val() == ""){
				alert("제목을 입력하세요");
				$("#btitle").focus();
				return false;
			}
			boardUpdateForm.submit();
		});
	});
</script>
</head>
<body>
	<h1>게시글 수정하기</h1>
	<form name="boardUpdateForm" action="board_update_controller.jsp" method="post">
		<ul>
			<li>
				<label>제목</label>
				<input type="text" name="btitle" id="btitle" value="<%=vo.getBtitle()%>">
			</li>
			<li>
				<label>내용</label>
				<textarea rows=5 cols=50 name="bcontent"><%=vo.getBcontent()%></textarea>
			</li>
			<li>
				<label>파일</label>
				<input type="file" name="bfile" >
			</li>
			<li>
				<input type="hidden" name="bid" value="<%=request.getParameter("bid")%>">
				<button type="button" id="btnBoardUpdate">수정하기</button>
				<button type="reset">다시쓰기</button>
				<a href="board_content.jsp?bid=<%=request.getParameter("bid")%>&rno=<%=request.getParameter("rno")%>">
					<button type="button">이전페이지</button></a>
				<a href="board_list.jsp">
					<button type="button">리스트</button></a>
			</li>
		</ul>		
	</form>
</body>
</html>