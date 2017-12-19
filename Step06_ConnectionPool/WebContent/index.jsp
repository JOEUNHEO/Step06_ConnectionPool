<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<h3>인덱스 페이지 입니다.</h3>
<%
	// context 경로 얻어오기
	String cPath = request.getContextPath();// "/Step06_ConnectionPool" 이 리턴됨.

%>
<ul>
	<li><a href="board/list.jsp">방명록 목록보기</a></li> <!-- 상대 경로 -->
	<li><a href="<%=cPath %>/board/list.jsp">방명록 목록보기</a></li> <!-- 절대 경로 -->
	<li><a href="${pageContext.request.contextPath }/board/list.jsp">방명록 목록보기</a></li> <!-- expression language 로 표현한 절대 경로 -->
</ul>
</body>
</html>