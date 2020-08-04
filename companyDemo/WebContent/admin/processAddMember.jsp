<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="dto.Member" %>

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
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String phone = request.getParameter("password");
		String address = request.getParameter("address");
		String department = request.getParameter("department");
		String rank = request.getParameter("rank");
		String sal = request.getParameter("salary");
		String regdate = request.getParameter("regdate");
		
		int salary = Integer.parseInt(sal);


	%>
	  <sql:setDataSource var="dataSource" url="jdbc:mysql://ip:port/database"
	driver="com.mysql.jdbc.Driver" user="id" password="pw"/>
	
	<sql:update dataSource="${dataSource }" var="resultSet">
		insert into member values(?,?,?,?,?,?,?,?,?,?)
		
		<sql:param value="<%=id %>"/>
		<sql:param value="<%=password %>"/>
		<sql:param value="<%=email %>"/>
		<sql:param value="<%=name %>"/>
		<sql:param value="<%=phone %>"/>
		<sql:param value="<%=address %>"/>
		<sql:param value="<%=department %>"/>
		<sql:param value="<%=rank %>"/>
		<sql:param value="<%=salary %>"/>
		<sql:param value="<%=regdate %>"/>
		
	</sql:update>
	
	<c:redirect url="resultMember.jsp?gubun=insert"/> 
</body>
</html>
