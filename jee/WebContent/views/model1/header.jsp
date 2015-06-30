<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/header.css");
	</style>
	
		<header id="top">   <!-- 하나의 헤더를 사용할 때에는 id 값을 줘야 한다. -->
			<div id="login">
				<a href="#"> login </a> |
				<a href="#"> join </a>
			</div>
			<div class="clear"></div>
			<div id="logo">
				<a href="#">
					<img src="<%=request.getContextPath()%>/images/motion.gif"  width="250px" height="60px" alt="" />
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
		
	
  
