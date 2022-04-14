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
		// request는 톰캣에서 미리 만들어놓은 객체이다.
		// 파라미터가 없으면 null값을 리턴
		String nextit = request.getParameter("nextit");
		String sub = nextit.substring(3,5);
	%>
	<!-- out.print처럼 출력해줌 -->
	<%=sub%>
</body>
</html>