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
				<ul class="text-right" style="list-style:none;">
					<li class="ml-md-8"></li>
					<li class="pl-4 pl-md-0 ml-0 ml-md-4">
						<c:choose>
							<c:when test="${empty sessionId }">
								<a class="nav-link text-center" href="${pageContext.request.contextPath}/login/login.jsp">LogIn</a>
							</c:when>
							<c:when test="${sessionId != 'admin' }">
								<a class="nav-link text-center" href="${pageContext.request.contextPath}/login/logout.jsp">LogOut</a>
							</c:when>
							<c:when test="${sessionId == 'admin' }">
								<a class="nav-link text-center" href="${pageContext.request.contextPath}/login/logout.jsp">LogOut</a>
								<a class="nav-link text-center" href="${pageContext.request.contextPath}/admin/memberEdit.jsp">직원관리</a>
							</c:when>
						</c:choose>
						
					</li>
				</ul>
				<hr>
				</div>
				<div class="col-12">
					<nav class="navbar navbar-expand-md navbar-light">
					
						<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><img src="https://assets.codepen.io/1462889/fcy.png" alt=""></a>	
						
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto py-4 py-md-0">
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">회사소개</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="${pageContext.request.contextPath}/Info/company/info.jsp?sub=intro">회사소개</a>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/Info/company/info.jsp?sub=history">회사연혁</a>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/Info/company/info.jsp?sub=oranization">조직도</a>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/Info/company/info.jsp?sub=way">오시는길</a>
									</div>
								</li>
								
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">사업소개</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#">사업1</a>
										<a class="dropdown-item" href="#">사업2</a>
									</div>
								</li>
								
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">인재채용</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="${pageContext.request.contextPath}/Hire/hire.jsp?sub=hire">채용안내</a>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/Hire/hire.jsp?sub=welfare">복지혜택</a>
									</div>
								</li>
								
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">갤러리</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="${pageContext.request.contextPath}/board/gallery/facilityGallery.jsp">시설사진</a>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/board/gallery/eventGallery.jsp">행사사진</a>
									</div>
								</li>
								
								<li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">
									<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">고객지원</a>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="${pageContext.request.contextPath}/BoardListAction.do?pageNum=1&category=notice">공지사항</a>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/BoardListAction.do?pageNum=1&category=event">이벤트</a>
										<a class="dropdown-item" href="${pageContext.request.contextPath}/BoardListAction.do?pageNum=1&category=archive">자료실</a>
									</div>
								</li>
								
							</ul>
						</div>
						
					</nav>		
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
