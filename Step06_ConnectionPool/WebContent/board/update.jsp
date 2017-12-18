<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/update.jsp</title>
</head>
<body>
<%
	// 1. 폼 전송되는 수정할 글의 정보를 읽어와서
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	// 2. DB 에 반영하고
	BoardDto dto = new BoardDto();
	dto.setNum(num);
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	
	boolean isSuccess = BoardDao.getInstance().update(dto);
	// 3. 응답한다.
%>
<%if(isSuccess){ %>
<h3><%=dto.getNum() %>번의 글 정보를 수정했습니다.</h3>
<%}else{ %>
<h3><%=dto.getNum() %>번의 글 정보를 수정하지 못했습니다.</h3>
<%} %>
<a href="list.jsp">목록 보기</a>
</body>
</html>