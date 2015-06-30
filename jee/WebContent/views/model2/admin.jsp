<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/member/searchAllMembers.do"  name="frmAdmin">  <!-- 개인정보이기 때문에 메소드를 post로 바꿈 -->
	<fieldset>
		<legend>회원관리</legend>
		<table>
			<tr>
				<td>전체회원 목록보기</td>
				<td>
					<input type="text" id="name" name="name" placeholder="이름을 입력하세요" />
				</td>
			</tr>
			<tr>
				<td>ID로 회원검색</td>
				<td><input type="text" id="id" name="id" placeholder="ID 값을 입력하세요" /></td>
			</tr>
			<tr>
				<td>이름으로 회원검색(동명이인 허용)</td>
				<td><input type="text" id="password" name="password" /></td>
			</tr>
			<tr>
				<td>회원삭제</td>
				<td><input type="text" id="password" name="password" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit"  value="회원가입"/>
				</td>
			</tr>
		</table>
		</fieldset>
	</form>
</body>
</html>