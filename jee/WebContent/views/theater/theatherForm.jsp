<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>극장화면</title>
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/menu.css");
	</style>
</head>
<body>
<div class="box">
		<ul class="mainMenu">
			<li class="active" >A관</li>
			<li>B관</li>
			<li>C관</li>
			<li>D관</li>
			<li>E관</li>
		</ul>
	</div>
	<form action="reservation.jsp">
		<fieldset>
			<legend>상영시간표 </legend>
			영화를 선택하세요.  <br />
			<input type="checkbox" name="title" value="iron" checked="checked" />샌안드레스
			<input type="checkbox" name="title" id="hulk" />어벤져스 <!-- 헐크에 체크안함 -->
			<input type="checkbox" name="title" id="captain" />기생수 part2  
			<input type="checkbox" name="title" id="batman" />배트맨  
			<input type="checkbox" name="title" id="hawk" /> 라그나로크 <br />  
			
			성별을 선택하시오. <br />
			<input type="radio" name="gender" value="male" checked="checked"/> 남자
			<input type="radio" name="gender" value="female" /> 여자    <!-- 동그라미 체크박스 -->
			
			<br />거주지를 선택하시오. <br />
			<select name="city" id="city" size="1">
				<option value="seoul">서울</option>
				<option value="geyngi">경기</option>
				<option value="incheon">인천</option>
				<option value="suwon">수원</option>
			</select> <br />			<!-- 옵션 태그는 선택창.. -->
			<input type="submit" value="전 송" />
			<input type="reset" value="취 소" />
			
		</fieldset>
	</form>
</body>
</html>