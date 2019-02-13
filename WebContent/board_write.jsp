<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/JavaWeb/jquery/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#btnBoardWrite").click(function(){
			
			if($("#btitle").val() == ""){
				alert("제목을 입력하세요");
				$("#btitle").focus();
				return false;
			}
			
			boardWriteForm.submit();
		});
	});

</script>
</head>
<body>
	<h1>게시글쓰기</h1>
	<form name="boardWriteForm" action="board_write_controller.jsp" method="post">
		<ul>
			<li>
				<label>제목</label>
				<input type="text" name="btitle" id="btitle">
			</li>
			<li>
				<label>내용</label>
				<textarea rows=5 cols=50 name="bcontent"></textarea>
			</li>
			<li>
				<label>파일</label>
				<input type="file" name="bfile">
			</li>
			<li>
				<button type="button" id="btnBoardWrite">저장하기</button>
				<button type="reset">다시쓰기</button>
				<a href="board_list.jsp">
					<button type="button">리스트</button></a>
			</li>
		</ul>		
	
	</form>
</body>
</html>







