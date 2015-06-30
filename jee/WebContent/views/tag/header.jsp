<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>헤더 샘플</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/header.css");
	</style>
</head>
<body>
	<div id="wrap"> 
	<!-- wrap, wrapper 의미로 주어지는 클래스나 아이디는
	body 바로 밑 최상위 div에게 보통 주어진다. 문법적 의미는 없음 -->
	
		<header id="top">   <!-- 하나의 헤더를 사용할 때에는 id 값을 줘야 한다. -->
			<div id="login">
				<a href="#"> login </a> |
				<a href="#"> join </a>
			</div>
			<div class="clear"></div>
			<div id="logo">
				<a href="#">
					<img src="../../images/motion.gif"  width="250px" height="60px" alt="" />
				</a>
			</div>
			<nav id="topMenu">
				<ul>
					<li><a href="#">HOME</a></li>
					<li><a href="#">COMPANY</a></li>
					<li><a href="#">SOLUTION</a></li>
					<li><a href="#">CUSTOMER CENTER</a></li>
					<li><a href="#">CONTACT US</a></li>
				</ul>
			</nav>
		</header>
	<div class="clear"></div>
	</div>
		
	<footer>     
		<hr />
		<div>
			<pre>회사소개 : 우리의 피는 이상 수 웅대한 보이는 것이다. 	 
방지하는 있을 수 소담스러운 무엇을 구하기 말이다.  
		</div>
	</footer>
</body>
</html>
  
