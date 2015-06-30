<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>request 객체</title>
</head>
<body>
	<!-- 
	request 기본 객체가 제공하는 기능
	1. 브라우저 정보 읽기
	2. 서버 정보 읽기
	3. 파라미터 읽기  ★★★★
	4. 헤더 일기
	5. 쿠키 일기
	6. 속성 처리 기능 ★★★★★
	 -->
	 요청URI = <%=request.getRequestURI() %> <br />
	 컨텍스트 경로 = <%=request.getContextPath() %> 
	 <!-- 컨텍스트 경로는 동적으로 루트경로로 불러오기 때문에 jsp 어디에서든 사용가능하다.  -->
</body>
</html>