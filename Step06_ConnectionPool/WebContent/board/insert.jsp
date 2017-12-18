<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/insert.jsp</title>
</head>
<body>
<%
	//폼 전송되는 내용을 읽어내서
	//한글 깨지지 않도록
	request.setCharacterEncoding("utf-8");
	
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//BoardDto 에 담기
	
	BoardDto dto = new BoardDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	//DB 에 저장한다.
	boolean isSuccess = BoardDao.getInstance().insert(dto);
	//응답한다.
%>
</body>
<%if(isSuccess){ %>
	<h3>새글 정보를 저장했습니다.</h3>
<%}else{ %>
	<h3>새글 정보 저장에 실패했습니다.</h3>
<%} %>
	<a href="list.jsp">목록 보기</a>
</html>