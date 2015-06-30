<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	/* request.setCharacterEncoding("UTF-8"); */
%>


<!--  
	request.getParameter( ) : 낱개 파라미터 키값과 벨류값을 리턴
	requset.getParameterValues( ) : 키값 없이 밸류값만 리턴 (체크박스에서 사용)	
	request.getParameterNames() : 키값 만 리턴 (쓸모없음)
	request.getParameterMap() : 파라미터 밸류가 복수인 경우 (대표적으로 로그인에 사용)
-->


<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>폼값을 받은 페이지</title>
</head>
<body>
	<div>   <!-- body 밑에 항상 div를 먼저 써놓고 시작. -->
<b>request.getParameter( ) 메소드 사용</b> <br />
		name 파라미터 = <%= request.getParameter("name") %> <br />
		address파라미터 = <%= request.getParameter("address") %>
		<p>
		<b>requset.getParameterValues( ) 메소드 사용</b>	<br />
		<%
			String[] values = request.getParameterValues("pet");
			if(values != null){
				for(int i=0; i<values.length;i++){
					%>
					넘어온 값: <%=values[i]%> <br />
					<%
				}
			}
		%><br />
		<b>request.getParameterNames() 메소드 사용 </b><br />
		<%
			Enumeration paramEnum = request.getParameterNames();
			while(paramEnum.hasMoreElements()){
				String name = (String)paramEnum.nextElement();
				/* System.out.println(name);  -> 이런식으로 작성하고 <%= % > (표현식)으로 바꾼다.*/
				%>
				<%=name %>
				<%
			}
		%>
		<br /><br />
		<b>request.getParameterMap() 메소드 사용 </b><br />
		<%
			Map paramMap = request.getParameterMap();
			String[] nameParam = (String[])paramMap.get("name");
			if(nameParam != null){
				%>
				이  름 = <%=nameParam[0]%>
			<%
			}
		%>
	</div>
</body>
</html>