<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>극장 첫 페이지</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/menu.css");
	</style>
	
</head>
<body>
	<div class="box">
		<ul class="mainMenu">
			<li class="active" >
				<a href="#">상영관정보</a>
			</li>
			<li><a href="timeTable.jsp">시간표</a></li>
			<li>상영예정</li>
			<li>영화관정보</li>
			<li>
				<a href="map.jsp">오시는길</a>
			</li>
		</ul>
	</div><br />
	<img src="<%=request.getContextPath()%>/images/theater/imsi.PNG" alt="" />
	
	
</body>
</html>