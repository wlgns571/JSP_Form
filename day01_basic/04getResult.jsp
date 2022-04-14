<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 파라미터는 무조건 String으로 리턴한다.
		String school = request.getParameter("school");
		int age = Integer.parseInt(request.getParameter("age"));
		String hobby = request.getParameter("hobby");
	%>
	내 학교 : <%=school %> <br>
	<% out.print("내 나이 : " + age + "<br>"); %>
	내 취미 : <%=hobby  %>
</body>
</html>