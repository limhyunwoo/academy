<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>날짜 페이지</title>
</head>
<body>
	<form action=""> <!-- 웹프로그램과 연동하기 위한 태그 -->
		<fieldset>
			<legend>주문 내용</legend>
			<ol>  <!-- 순서 -->
				<li>
					<label for="prod">영화티켓</label>
					<input id= "prod" type="text"  name="prod" size="25"/>
				</li>
				<li>
					<label for="num">예약자리수</label>
					<input id= "num" type="number" name="num" min="1" max="5" value="1"/> 
				</li>
			</ol>
		</fieldset>
		
		<fieldset>
			<legend>예약일</legend>
			<ol>
				<li> 
					최소 예약일 7일간 입니다.
				</li>
				<li>
					<label for="wanted"> 원하는 예약일</label>
					<input id="wanted" name="wanted" type="date" />
					<!-- date month week time datetime -->
					<input type="time" name="time" id="time"/>
				</li>
			</ol>
		</fieldset>
		
		<input type="submit" value="등록"/>
	</form>
</body>
</html>