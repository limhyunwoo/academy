<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>   
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>   
		@IMPORT url("<%=request.getContextPath()%>/css/onlyContent.css");
	</style>
</head>
<body>
<div id="wrap">
		<jsp:include page="header.jsp"/>
		<article>
			<section class="content">
				<h3>콘텐츠</h3>
			</section>
		</article>
		
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>

