<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.*"%>
<%@ page import="mvc.model.BoardDTO"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
ArrayList boardList = (ArrayList) request.getAttribute("boardlist");
int total_record = ((Integer) request.getAttribute("total_record")).intValue();
int pageNum = ((Integer) request.getAttribute("pageNum")).intValue();
int total_page = ((Integer) request.getAttribute("total_page")).intValue();
String category = (String) request.getAttribute("category");
String items = (String) request.getParameter("items");
String text = (String) request.getParameter("text");
%>


<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />

<link rel="stylesheet" href="../../resources/css/info.css" />
<link rel="stylesheet" href="../../resources/css/company.css" />

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<title>Insert title here</title>


<style>
.desciprtion {
	margin-bottom: 30px;
}

.desciprtion h2 {
	background: #E0DEDE;
	color: #fff;
	padding: 15px;
}

.desciprtion ul {
	border: 1px solid #E0DEDE;
	margin-top: -10px;
	padding: 10px;
	list-style: none;
}

.desciprtion ul {
	font-size: 15px;
}

.desciprtion ul li {
	margin: 10px 0 10px 0;
}

table th {
	font-size: 20px;
	font-weight: bold;
	text-align: center;
}

table td {
	font-size: 15px;
	text-align: center;
}

table td a {
	text-style: none;
	color: black;
	text-decoration: none !important;
}

table td a:hover {
	color: #ccc;
}
</style>
<script>
	function Writer(){
		if(${category.equals('notice')})
			location.href = "./BoardWriteForm.do?id=<%=sessionId%>&category=notice&name=관리자";
		else if(${category.equals('event')})
			location.href = "./BoardWriteForm.do?id=<%=sessionId%>&category=event&name=관리자";
		else if(${category.equals('archive')})
			location.href = "./BoardWriteForm.do?id=<%=sessionId%>&category=archive&name=관리자";
	}
</script>
</head>
<body>
	<jsp:include page="../../header.jsp"></jsp:include>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="clearfix"></div>


	<div class="container-fluid">
		<div class="img-holder"
			data-image="${pageContext.request.contextPath}/resources/images/index_slider.jpg"></div>
	</div>

	<div class="content">
		<div class="container-fluid"
			style="padding: 20px; margin-bottom: 20px;">
			<div class="row-fluid">
				<div id="myTabHolder" class="span10 offset1 tabbable tabs-left">
					<c:choose>
						<c:when test="${category.equals('notice') }">
							<ul class="nav">
								<li class="active"><a href="#lA" data-toggle="tab"> 
								<span class="account-type">공지사항</span><br /></a></li>
							</ul>
						</c:when>
						
						<c:when test="${category.equals('event') }">
							<ul class="nav">
								<li class="active"><a href="#lA" data-toggle="tab"> 
								<span class="account-type">이벤트</span><br /></a></li>
							</ul>
						</c:when>
						
						<c:when test="${category.equals('archive') }">
							<ul class="nav">
								<li class="active"><a href="#lA" data-toggle="tab"> 
								<span class="account-type">자료실</span><br /></a></li>
							</ul>
						</c:when>
					</c:choose>
					<div class="tab-content"
						style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane active" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<c:choose>
									<c:when test="${category.equals('notice') }" >
										<h2>
											<strong>공지사항</strong>
										</h2>
									</c:when>
									
									<c:when test="${category.equals('event') }" >
										<h2>
											<strong>이벤트</strong>
										</h2>
									</c:when>
									
									<c:when test="${category.equals('archive') }" >
										<h2>
											<strong>자료실</strong>
										</h2>
									</c:when>
								</c:choose>
								
								<form action="<c:url value="./BoardListAction.do?pageNum=1&category=${category }&items=<%=items %>&text=<%=text %>"/>"
									method="post">
									<div class="text-right">
										
											<c:if test="${ sessionId == 'admin'}">
												<div class="page">
													<a href="#" class="btn btn-lg btn-primary"
														onclick="Writer(); return false;">글쓰기</a>
												</div>
											</c:if>
											
											<c:if test="${ sessionId!=null && category == 'event' && sessionId!='admin' }">
												<div class="page">
													<a href="#" class="btn btn-lg btn-primary"
														onclick="Writer(); return false;">글쓰기</a>
												</div>
											
											</c:if>
										
									</div>
								
								<br><br>

								<div class="row">
									<div class="col-md-12" style="margin-bottom: 20px;">
										<div class="desciprtion" style="width: 98%;">
											<table class="table">
												<thead>
													<tr>
														<th style="width:10%">번호</th>
														<th style="width:40%">제목</th>
														<th style="width:10%">작성자</th>
														<th style="width:20%">작성일자</th>
														<th style="width:10%">조회수</th>
													</tr>
												</thead>

												<tbody>
													<%
														int j = boardList.size() + 1;
													for (int i = 0; i < boardList.size(); i++) {
														BoardDTO notice = (BoardDTO) boardList.get(i);
														j--;
													%>
													<tr>
														<td><%=j%></td>
														<td><a
															href="./BoardShowAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>&category=<%=category%>"><%=notice.getTitle()%></a></td>
														<td><%=notice.getName()%></td>
														<td><%=notice.getRegdate()%></td>
														<td><%=notice.getHit()%></td>
													</tr>
													<%
														}
													%>
												</tbody>
											</table>
										</div>
										<br><br><br>
										<!-- 페이지네이션 -->
										<div class="col-sm-offset-5">
											<c:set var="pageNum" value="<%=pageNum%>" />
											<nav>
												<ul class="pagination">
													<li class="page-item"><a href="#" class="page-link"
														aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
															<span class="sr-only"></span>
													</a></li>

													<c:forEach var="i" begin="1" end="<%=total_page%>">
														<li class="page-item"><a
															href="<c:url value="./BoardListAction.do?pageNum=${i}&category=${category }" />">
																<c:choose>
																	<c:when test="${pageNum==i}">
																		<font color='4C5317'>${i}</font>
																	</c:when>
																	<c:otherwise>
																		<font color='4C5317'>${i}</font>
																	</c:otherwise>
																</c:choose>
														</a></li>
													</c:forEach>
													<li class="page-item"><a href="#" class="page-link"
														aria-label="Next"> <span aria-heddin="true">&raquo;</span>
															<span class="sr-only"></span>
													</a></li>
												</ul>
											</nav>
										</div>


										<!-- 검색조건 화면 구성 -->

										<div align="right">
											<table>
												<tr>
													<td width="100%" align="center">&nbsp;&nbsp; 
													<select name="items">
															<option value="title">제목</option>
															<option value="content">내용</option>
															<option value="name">작성자</option>
													</select> 
													<input type="text" name="text" /> <input type="submit" id="btnAdd" class="btn btn-lg btn-primary" value="검색" />
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
								</form>
							</div>
						</div>





					</div>
				</div>
			</div>
		</div>
	</div>








	<div class="clearfix"></div>
	<jsp:include page="../../footer.jsp" />

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.imageScroll.js"></script>
	<script>
		$('.img-holder').imageScroll({
			image : null,
			imageAttribute : 'image',
			container : $('body'),
			windowObject : $(window),
			speed : .2,
			coverRatio : .75,
			coverRatio : 1,
			holderClass : 'imageHolder',
			imgClass : 'img-holder-img',
			holderMinHeight : 200,
			holderMaxHeight : 250,
			extraHeight : 50,
			mediaWidth : 1920,
			mediaHeight : 1267,
			parallax : true,
			touch : false
		});
	</script>
</body>

</html>
