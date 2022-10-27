<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이동되었습니다
	<hr>
	
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String bloodType = request.getParameter("bloodType");
		String []hobby = request.getParameterValues("hobby");
		int code = Integer.parseInt(request.getParameter("code"));
		
	%>
	코드 : <%= code %>
	아이디 : <%= id %>
	암호 : <%= pwd %>
	혈액형 : <%= bloodType %>
	취미 : 
	<%
		if(hobby !=null){
			for(String h:hobby){
				%>
					<%= h %>
				<%
			}
		}
	%>
	
	
</body>
</html>