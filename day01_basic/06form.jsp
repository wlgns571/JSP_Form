<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="06result.jsp" method="post">
	이름 : <input type="text" name="name"> <br>
	나이 : <input type="text" name="age"> <br>
	취미 : <input type="text" name="hobby"> <br>
	<button type="submit">제출</button>
</form>
</body>
</html>