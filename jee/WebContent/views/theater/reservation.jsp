<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>가상 예약 페이지</title>
</head>
<body>
	<%=request.getAttribute("title") %>
	<%=request.getAttribute("theater") %>
	<%=request.getAttribute("time") %>
</body>
</html>