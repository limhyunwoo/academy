<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	/* 	request 어디로 갈지 경로를 정해주는 것.  입력한 데이터 값
		response 파라미터를 받고 가는것. 파라미터값이 전부 jsp */
	String id = request.getParameter("memberID");
	if(id.equals("admin")){
		response.sendRedirect("now.jsp");
	}else{
	%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인에 페이지</title>
</head>
<body>
	잘못된 아이디입니다.
	<%
	}
	%>

	
</body>
</html>