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
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String department = request.getParameter("department");
		String rank = request.getParameter("rank");
		String salary = request.getParameter("salary");
		String regdate = request.getParameter("regdate");
		
		int Sal = Integer.parseInt(salary);

	%>
	
 <sql:setDataSource var="dataSource" url ="jdbc:mysql://34.64.223.143:3306/companyDemo"
	driver="com.mysql.jdbc.Driver" user="remote" password="1pq02ow9"/>
	
	<sql:update dataSource="${dataSource }" var="resultSet">
		update member set password=?,email=?,`name`=?,phone=?,address=?,department=?,`rank`=?,salary=?,regdate=? where id=?	
		
		<sql:param value="<%=password %>"/>
		<sql:param value="<%=email %>"/> 
		<sql:param value="<%=name %>"/>
		<sql:param value="<%=phone %>"/>
		<sql:param value="<%=address %>"/>
		<sql:param value="<%=department %>"/>
		<sql:param value="<%=rank %>"/>
		<sql:param value="<%=Sal %>"/>
		<sql:param value="<%=regdate %>"/> 
		<sql:param value="<%=id %>"/> 
		
	</sql:update>
	
	<c:redirect url="resultMember.jsp?gubun=update"/> 
</body>
</html>