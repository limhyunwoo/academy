<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헬로우 뷰</title>
</head>
<body>
	<div>
		<h3>안녕하세요</h3>
		<mark><%=request.getAttribute("name") %></mark>
	</div>
</body>
</html>