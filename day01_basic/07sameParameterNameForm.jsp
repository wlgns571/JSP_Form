<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="07result.jsp" method="get">
	이름 : <input type="text" name="name"> <br>
	나이 : <input type="text" name="age"> <br>
	취미 : <br>
		축구 <input type="checkbox" name="hobby" value="soccer">,
		농구 <input type="checkbox" name="hobby" value="basket">,
		노래 <input type="checkbox" name="hobby" value="sing">,
		독서 <input type="checkbox" name="hobby" value="read">,
		영화시청 <input type="checkbox" name="hobby" value="movie">,
		술 <input type="checkbox" name="hobby" value="drink">,
		기타 <input type="checkbox" name="hobby" value="etc">
	<br>
	<button type="submit">제출</button>
</form>
</body>
</html>