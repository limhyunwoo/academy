<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Left Content Frame</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/leftContent.css");
	</style>
</head>
<body>
	<header>
		<h3>헤   더</h3>
	</header>
	<article>
		<section class="leftContent">
			<h3>콘텐츠</h3>
		</section>
	</article>
	<aside>
		<section class="rightSide">
			<h3>사이드바</h3>
		</section>
	</aside>
	<footer>
		<h3>푸   터</h3>
	</footer>
</body>
</html>