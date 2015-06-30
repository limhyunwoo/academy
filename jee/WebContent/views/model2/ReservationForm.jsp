<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예약 폼</title>
</head>
<body>
	<div>
		<form action="">
			<fieldset>
			<legend>예약일</legend>
			<ol>
				<li> 
					예약 취소는 영화시작 2시간 전까지 가능합니다.
				</li>
				<li>
					<label for="wanted"> 원하는 예약일</label>
					<input id="wanted" name="wanted" type="date" />
					<!-- date month week time datetime -->
					<input type="time" name="time" id="time"/>
				</li>
			</ol>
		</fieldset>
		<input type="submit"  value ="전송"/>
		</form>
	</div>
	
	<hr style="width: 400px; height: 20px; border-color: black"  />
	<div style="text-align: center">
	${msg}
	<br />
		<%
		if(request.getAttribute("seat")==null){
			String[][] defaultSeat = new String[3][5];  
			for (int i = 0; i < defaultSeat.length; i++) {
				for (int j = 0; j < defaultSeat[i].length; j++) {
					if (defaultSeat[i][j] == null) {
						%>
						
					<%="□"%> 	<%=i+1%> - <%=j+1%> 
						
						<%
					} else {
						%>
						
					 <%="■"%> 	<%=i+1%> - <%=j+1%>
						<!-- 스위치문 사용  앞의 숫자가 1이면 a를 출력하게 표현  (예 1-1호  면 a-1호  로 표시 -->
						<%
					}
				}
			%>
			<br />
			<%
			}
		}else{
			String[][] seat = (String[][])request.getAttribute("seat"); 
			for (int i = 0; i < seat.length; i++) {
				for (int j = 0; j < seat[i].length; j++) {
					if (seat[i][j] == null) {
						%>
						
					<%="□"%> 	<%=i+1%> - <%=j+1%> 
						
						<%
					} else {
						%>
						
					 <%="■"%> 	<%=i+1%> - <%=j+1%>
						<!-- 스위치문 사용  앞의 숫자가 1이면 a를 출력하게 표현  (예 1-1호  면 a-1호  로 표시 -->
						<%
					}
				}
			%>
			
			<br />
			
			<%
			}
		}
		%>
		
	</div>
	
	<div>
		<form action="<%=request.getContextPath()%>/reservation/checkIn.do"> <!-- 웹프로그램과 연동하기 위한 태그 -->
		
		<fieldset>
			<legend>주문 내용</legend>
			<ol>  <!-- 순서 -->
				<li>
					<label for="prod">아이디</label>
					<input type="text" name="id" id="id" placeholder="아이디를 입력하세요"/>
				</li>
				<li>
					<label for="num">열 번호</label>
					<input id= "floor" type="number" name="floor" min="1" max="3" value="1"/> 
				</li>
				<li>
					<label for="num">행 번호</label>
					<input id= "row" type="number" name="row" min="1" max="5" value="1"/> 
				</li>
			</ol>
		</fieldset>
		<input type="submit" value="등록"/>
	</form>
	</div>
	
	<div>
		<form action="<%=request.getContextPath()%>/reservation/checkOut.do"> 
		
		<fieldset>
			<legend>취소 내용</legend>
			<ol> 
				<li>
					<label for="prod">아이디</label>
					<input type="text" name="id" id="id" placeholder="아이디를 입력하세요"/>
				</li>
				<li>
					<label for="num">열 번호</label>
					<input id= "floor" type="number" name="floor" min="1" max="3" value="1"/> 
				</li>
				<li>
					<label for="num">행 번호</label>
					<input id= "row" type="number" name="row" min="1" max="5" value="1"/> 
				</li>
			</ol>
		</fieldset>
		<input type="submit" value="등록"/>
	</form>
	</div>
</body>
</html>