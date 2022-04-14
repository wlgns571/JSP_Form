<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
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
	이름 : <%=request.getParameter("name") %> <br>
	나이 : <%=request.getParameter("age") %> <br>
	취미 : 
	<%
		String[] hobbies = request.getParameterValues("hobby"); 
		for (String hobby : hobbies) {
			out.print(hobby + " ");
		}
	%>
	<hr>
	<h1>enum</h1>
	<%
		// name, age, hobby
		Enumeration<String> enumParamNames = request.getParameterNames();
		while(enumParamNames.hasMoreElements()) {
			String paramName = enumParamNames.nextElement(); // name, age, hobby
			String[] paramValues = request.getParameterValues(paramName);
			out.print(paramName + " : ");
			for (int i = 0; i < paramValues.length; i++) {
				String paramVal = paramValues[i];
				out.print(paramVal + " ");
			}
			out.print("<br>");
		}
	%>
	<hr>
	<h1>map Iterator</h1>
	<%
		Map<String, String[]> paramMap = request.getParameterMap();
		Iterator<String> keys = paramMap.keySet().iterator();
		Iterator<String[]> values = paramMap.values().iterator();
		while (keys.hasNext()) {
			String key = keys.next();
			String[] value = values.next();
			out.print(String.format(key));
			for (int i = 0; i < value.length; i++) {
				out.print(String.format(" " + value[i]));
			}
			out.print("<br>");
		}
	%>
	<hr>
	<h1>map2 Set</h1>
	<%
		Map<String, String[]> paramMap2 = request.getParameterMap();
		Set<String> keySet = paramMap2.keySet(); // name, age, hobby
		for (String key : keySet) {
			String[] valuess = paramMap2.get(key);
			out.print(key);
			for (String val : valuess) {
				out.print(" " + val + " ");
			}
			out.print("<br>");
		}
	%>
	<hr>
	<h1>map3</h1>
	<%
	// 		Set<Entry<String, String[]>> entrySet = paramMap.entrySet();
	// 		for (Entry<String, String[]> entry : entrySet ) {
	// 			String key = entry.getKey();
	// 			String[] valuess = entry.getValue();
	// 			for (String key : keySet) {
	// 				out.print(key);
	// 				for (String val : valuess) {
	// 					out.print(" " + val + " ");
	// 				}
	// 				out.print("<br>");
	// 		}
	%>

</body>
</html>