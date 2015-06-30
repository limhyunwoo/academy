<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>404 에러발생</title>
</head>
<body>
	<div>
		<img src="<%=request.getContextPath() %>/images/404-error.png" alt="" />
	</div>
	<!-- 
		HTTP 프로토콜은 응답상태 코드를 이용하여
		서버의 처리결과를 웹브라우저에 알려주며, 
		주요 응답상태코드로는 다음과 같은 것들이 존재한다.
		
		200 - OK
		307 - 임시 리다이렉트
		400 - 문법 에러
		401 - 접근 불가 (관리자만 접근가능)  (필요)
		404 - URL에 따른 페이지가 존재하지 않음
		405 - 요청된 메소드는 허용 불가 (get방식, post방식 일 때)  (필요)
		500 - 서버 내부 에러.  JSP에서 익셉션이 발생하는 경우
		503 - 서버 부하.  예) 디도스
		
		JSP가 정상적으로 실행되는 응답코드로 200이 전송되며,
		response.sendRedirect()를 이용할 경우 응답코드로 307이 전송된다.  (디버깅 할 때 사용한다.)
	 -->
</body>
</html>