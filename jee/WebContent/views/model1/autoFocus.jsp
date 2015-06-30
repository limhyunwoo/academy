<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>오토포커스 (필요)</title>
</head>
<body>
	<form action="">
		<fieldset>
			<legend>개인 정보 입력</legend>
			<ol>
				<li>
					<label for="username">이름</label>
					<input id=username type="text" placeholder="8자 미만 공백없이" autofocus required name="username" />
				</li>
				<li><label for=email>메일주소</label>
					<input id="email" type="email" placeholder="sample@naver.com" required name="email" />
				</li>
				<li><label for="phone">전화번호</label>
					<input id="phone "type="phone" placeholder="02)1111-1111" required name="phone" />
				</li>
			</ol>
		</fieldset>
		
		<fieldset>
			<button type="submit">예약하기</button>
		</fieldset>
	</form>
</body>
</html>