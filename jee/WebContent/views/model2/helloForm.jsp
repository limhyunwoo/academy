<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헬로우</title>
</head>
<body>
	<div>  <!-- 값을 전달 하지 않을 땐 a태그로 해도됨. -->
		<form action="<%=request.getContextPath()%>/name/hello.nhn">
			<input type="text" id="name" name="name" />
			<input type="submit" value="전 송"/>  <!-- input의 끝은 항상 submit이 있어야 한다. -->
		</form>
		<p></p>
		<form action="<%=request.getContextPath()%>/hi.do">
			<input type="text" id="name" name="name" />
			<input type="submit" value="전 송"/>  <!-- input의 끝은 항상 submit이 있어야 한다. -->
		</form>
	</div>	
</body>
</html>