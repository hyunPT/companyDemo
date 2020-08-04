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
		String gubun = request.getParameter("gubun");
		if(gubun.equals("login")){
			out.println("<script>alert('정상적으로 로그인 되었습니다.');");
			out.println("location.href='../index.jsp';</script>");				
		}
		
		else if(gubun.equals("loginError")){
			out.println("<script>alert('아이디 혹은 비밀번호를 확인해 주세요');");
			out.println("location.href='/login.jsp';</script>");		
		}
	%>
</body>
</html>