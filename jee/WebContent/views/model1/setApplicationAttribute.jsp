<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(name!=null && value!=null){
		session.setAttribute(name, value);    // 리스폰이나 리퀘스트를 사용하면 다음페이지까지 적용된다.

	}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JSP 기본객체의 속성(Attribute) 사용하기</title>
</head>
<body>
	<%
		if(name != null && value != null){
	
	%>
	
	<%=name %> = <%=value %>
	
	<%
		}else{
	%>
	
		request 객체 속성 설정 안함
		
	<%
		}
	
	%>
	
</body>
</html>