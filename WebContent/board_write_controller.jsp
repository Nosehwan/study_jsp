<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board_test.*"%>
<%
	request.setCharacterEncoding("utf-8");
	BoardTestVO vo = new BoardTestVO();
	vo.setBtitle(request.getParameter("btitle"));
	vo.setBcontent(request.getParameter("bcontent"));
	vo.setBfile(request.getParameter("bfile"));
	
	BoardTestDAO dao = new BoardTestDAO();
	int result = dao.getInsertResult(vo);
	
	if(result != 0){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("errorpage.jsp");
	}
%>