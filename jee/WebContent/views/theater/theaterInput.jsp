<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>극장관리</title>
<style>
     @IMPORT url("<%=request.getContextPath()%>/css/template.css");
     
</style>
</head>
<body>

<div>
<form action="<%=request.getContextPath()%>/theaterInput.do">

     <table class="tableClass">
          <tr class="trClass">
               <td class="tdClass">필   드 </td>
               <td class="tdClass">입력값 </td>
          </tr>
          <tr class="trClass">
               <td class="tdClass2" >연령</td>
               <td class="tdClass2">
                    <input type="text" style="width: 350px" id="age" name="age">
               </td>
          </tr>
         
          <tr class="trClass">
               <td class= "tdClass2">상영관</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id="theater" name="theater">
               </td>
          </tr>
          <tr class="trClass">
               <td class= "tdClass2">상영관 좌석수</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id="seat" name="seat">
               </td>
          </tr>
         
          <tr class="trClass">
               <td class= "tdClass2">영화제목</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id="title" name="title">
               </td>
          </tr>
          <tr class="trClass">
               <td class= "tdClass2">상영날짜</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id= "date" name="date">
               </td>
          </tr>
          <tr class="trClass">
               <td class= "tdClass2">상영시간</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id="time" name="time">
               </td>
          </tr>
               <tr class="trClass">
               <td class= "tdClass2">영화가격</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id="price" name="price">
               </td>
          </tr>
     <tr class="trClass">
               <td class= "tdClass2">포스터</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id="poster" name="poster">
               </td>
          </tr>
     <tr class="trClass">  
               <td class= "tdClass2">현재상영작</td>
               <td class= "tdClass2">
                    <input type="text" style="width: 350px" id="nowFilm" name="nowFilm">
               </td>
          </tr>
     </table>
     <input type="image"  src="<%=request.getContextPath()%>/images/click.jpg" width="200">
     </form>
</div>
</body>
</html>
