<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>시간표</title>
	<style>
		@IMPORT url("theaterTime.css");
	</style>
	
</head>
<body>
<%-- <jsp:include page="../main/header.jsp"/> --%>
<div id="clear">
		<ul class="mainMenu mainMenu2">
			
			<li>
				<a href="theaterMain.jsp">상영관정보</a>				
			</li>
			<li class="active"  ><a href="#">시간표</a></li>
			<li>상영예정</li>
			<li>영화관정보</li>
			<li>
				<a href="map.jsp">오시는길</a>
			</li>
		</ul>
		<!-- 예약하는 폼 -->
<form action="<%=request.getContextPath()%>/theaterInput.do">
		<fieldset class="reservationTable">
			<legend>영화, 상영관, 시간을 선택하세요. </legend>
				<select name="title">
				  	<option>영화</option>
				  	<option value="jurassicWorld">쥬라기공원</option>
				  	<option value="madMax">매드맥스</option>
				 	<option value="sanAndreas">샌 안드레아스</option>
					</select>
					<select name="theater">
					<option>상영관</option>
				  	<option value="ATheater">A관</option>
				  	<option value="BTheater">B관</option>
				 	<option value="CTheater">C관</option>
				 	<option value="DTheater">D관</option>
					</select>
					<select name="time" >
					<option>시간</option>
				  	<option value="am10">10:00</option>
				  	<option value="pm12">12:00</option>
				 	<option value="pm03">15:00</option>
				</select> <br />
			<input type="submit" value="예 매" />
			<input type="reset" value="취 소" />
		</fieldset>
	</form>
<!-- 예약폼 종료 -->

	<fieldset class="timeTable">
		<legend >상영 시간표</legend>
		
		<ul class="mainMenu">
			<li class="active">06월 17일</li>
			<li>06월 18일</li>
			<li>06월 19일</li>
			<li>06월 20일</li>
			<li>06월 21일</li>
			<li>06월 22일</li>
		</ul>
		
	<table class="tableTag " summary="테이블 요약 설명">
		<colgroup>  <!-- column 한 셀에 대한 가로값을 입력 -->
			<col width="30%" />
			<col width="20%"/>
			<col width="40%"/>
		</colgroup>
		
		<thead>  <!-- table head : 테이블 속 컬럼명을 지정 -->
			<tr >
				<th>영화</th>
				<th>상영관</th>
				<th>상영시간</th>
			</tr>
		</thead>
		
		<tbody style="text-align: center " >  <!-- table body : 테이블를 랜더링 하는 집합체  -->
			<tr>
				<td  rowspan="2"  >
					쥬라기 공원 
				</td>
				<td>A관</td> <!-- ABC관은 123관으로 우선적으로 받은수 스위치 케이스문으로 123을 ABC로 바꿔주도록 한다 -->
				<td>
					<a href="<%=request.getContextPath()%>/theaterInfo.do"> 10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				 </td>
			</tr>
			<tr>
				<td>B관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			
		<tr>
				<td  rowspan="2" >
					매드 맥스
				</td>
				<td>C관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			<tr>
				<td>D관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			
			<tr>
				<td  rowspan="2" >
					샌 안드레아스
				</td>
				<td>A관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			<tr>
				<td>D관</td>
				<td>
					<a href="<%="reservation.jsp" %>" >10:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >12:00</a> &nbsp;
					<a href="<%="reservation.jsp" %>" >15:00</a> &nbsp;
				</td>
			</tr>
			
		</tbody>
	</table>	<br />
	</fieldset>

	
</div>
</body>
</html>