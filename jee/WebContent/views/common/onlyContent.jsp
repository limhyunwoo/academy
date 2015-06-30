<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>   <!-- html:5 + 탭 -->
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>   /* style + 탭 */
		@IMPORT url("<%=request.getContextPath()%>/css/onlyContent.css");
	</style>
</head>
<body>
		<header>
			<h3>헤더</h3>
		</header>
		<article>
			<section class="content">
				<h3>콘텐츠</h3>
			</section>
		</article>
		<footer>
			<h3>푸터</h3>
		</footer>
</body>
</html>

<!-- F12로 디버깅 가능 실행창에서 해야됨..-->