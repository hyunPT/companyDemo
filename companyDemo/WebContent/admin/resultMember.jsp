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
	
		if(gubun.equals("insert")){
			out.println("<script>alert('회원등록이 완료되었습니다.');");
			out.println("location.href='memberEdit.jsp';</script>");				
		}
		
		 else if(gubun.equals("update")){
			out.println("<script>alert('회원수정이 완료되었습니다.');");
			out.println("location.href='memberEdit.jsp';</script>");		
		} 
		
		 else if(gubun.equals("delete")){
				out.println("<script>alert('회원삭제가 완료되었습니다.');");
				out.println("location.href='memberEdit.jsp';</script>");		
			} 
		
	%>
</body>
</html>