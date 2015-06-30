<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그인 폼</title>
</head> 
<body>
	<form action="login.jsp">  <!-- 메소드가 생략되면 get으로 디폴트 된다. -->
	<table style="border: 1px solid BLACK; border-collapse: collapse;">
	<!-- border-collapse: collapse 두줄라인이 한줄로 표현 -->
		<tr style="border: 1px solid BLACK;">
			<td style="border: 1px solid BLACK;">아이디</td>
			<td style="border: 1px solid BLACK;">
				<input type="text" name="memberID" id="memberID"  placeholder="아이디"/>  <!-- placeholder 일반적인 로그인 창.. -->
			</td>
		</tr>
		<tr style="border: 1px solid BLACK;">
			<td style="border: 1px solid BLACK;">패스워드</td>
			<td style="border: 1px solid BLACK;">
				<input type="password" name="pass" id="pass"  value="PASSWORD"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="전  송"/>				
			</td>
		</tr>
	</table>
	</form>
</body>
</html>