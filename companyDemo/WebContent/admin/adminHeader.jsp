<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />


<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
</head>
<body>	
<div class="hero-anime">
	<!-- DB연결 -->
	<sql:setDataSource var ="dataSource" driver="com.mysql.jdbc.Driver" url ="jdbc:mysql://ip:port/database"
	user="id" password="pw"/>
	
	<sql:query dataSource="${dataSource }" var="result">
		select * from member where id=?
		<sql:param value="${sessionId }"/>
	</sql:query>
	
	

	<div class="navigation-wrap bg-light start-header start-style">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><img src="https://assets.codepen.io/1462889/fcy.png" alt=""></a>	
				<ul class="text-right" style="list-style:none;">
					<li class="ml-md-8"></li>
					<li class="pl-4 pl-md-0 ml-0 ml-md-4">
						<a class="nav-link text-center" href="${pageContext.request.contextPath}/login/logout.jsp">LogOut</a>
					</li>
				</ul>
				<hr>
				</div>

			</div>
		</div>
	</div>
</div>
</body>
</html>
