<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/delete.jsp</title>
</head>
<body>
<%
	// 1. GET 방식 파라미터로 전달되는 삭제할 회원의 번호 읽어오기
	int num = Integer.parseInt(request.getParameter("num"));
	
	// 2. DB 에서 삭제하기
	boolean isSuccess = BoardDao.getInstance().delete(num);
	// 3. 응답하기
%>
<script>
<%if(isSuccess){%>
	alert("<%=num %>번의 정보를 삭제했습니다.");
<%}else{%>
	alert("<%=num %>번의 정보 삭제에 실패했습니다.");
<%}%>
location.href="list.jsp";
</script>
</body>
</html>