<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	%>
	
	<sql:setDataSource var="dataSource" url="jdbc:mysql://ip:port/database" 
	driver="com.mysql.jdbc.Driver" user="id" password="pw"/>
	 
	<sql:query dataSource = "${dataSource }" var="resultSet" >
		select * from member where id = ? and password = ?
		
		<sql:param value="<%= id %>"/>
		<sql:param value="<%= password %>"/>
	</sql:query>
	
	<c:if test="${resultSet.rowCount>0 }">
		<%
			session.setAttribute("sessionId", id);
		%>
		<c:redirect url ="resultLogin.jsp?gubun=login" />
	</c:if>
	
	<c:if test="${resultSet.rowCount==0 }">
		<c:redirect url ="resultLogin.jsp?gubun=loginError"/>
	</c:if>
</body>
</html>
