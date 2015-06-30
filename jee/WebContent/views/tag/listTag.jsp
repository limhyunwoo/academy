<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>리스트 태그</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/listTag.css");
	</style>
</head>
<body>
	<!-- ul>li*4 -->
	<ul class="multi">
		<li>&nbsp;&nbsp; 리스트 스타일</li>   <!-- &nbsp; 스페이스 한칸을 의미함 -->
			<ul>
				<li>리스트 스타일</li>
					<ul>
						<li>&nbsp;&nbsp;리스트 스타일</li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</body>
</html>