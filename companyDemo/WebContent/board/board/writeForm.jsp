<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String category = (String) request.getParameter("category");
String name = (String) request.getParameter("name");
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
								<li class="active"><a href="#lA" data-toggle="tab"> <span
										class="account-type">공지사항</span><br /></a></li>
							</ul>
						</c:when>

						<c:when test="${category.equals('event') }">
							<ul class="nav">
								<li class="active"><a href="#lA" data-toggle="tab"> <span
										class="account-type">이벤트</span><br /></a></li>
							</ul>
						</c:when>

						<c:when test="${category.equals('archive') }">
							<ul class="nav">
								<li class="active"><a href="#lA" data-toggle="tab"> <span
										class="account-type">자료실</span><br /></a></li>
							</ul>
						</c:when>
					</c:choose>
					<div class="tab-content"
						style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane active" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<c:choose>
									<c:when test="${category.equals('notice') }">
										<h2>
											<strong>공지사항</strong>
										</h2>
									</c:when>

									<c:when test="${category.equals('event') }">
										<h2>
											<strong>이벤트</strong>
										</h2>
									</c:when>

									<c:when test="${category.equals('archive') }">
										<h2>
											<strong>자료실</strong>
										</h2>
									</c:when>
								</c:choose>
								<div class="row">
									<div class="col-md-12" style="margin-bottom: 20px;">
											<form name="newWrite"
												action="./BoardWriteAction.do?pageNum=1&category=<%=category %>"
												class="form-horizontal" method="post"
												enctype="multipart/form-data">
												<input name="id" type="hidden" class="form-control"
													value="${sessionId }" />

												<div class="form-group row">
													<label class="col-sm-2 control-label">제목</label>
													<div class="col-sm-5">
														<input name="title" type="text" class="form-control"
															placeholder="제목입력" />
													</div>
												</div>

												<div class="form-group row">
													<label class="col-sm-2 control-label">내용</label>
													<div class="col-sm-8">
														<textarea name="content" class="form-control" cols="50"
															rows="5" placeholder="내용입력"></textarea>
													</div>
												</div>

												<div class="form-group row">
													<label class="col-sm-2 control-label">작성자</label>
													<div class="col-sm-3">
														<input name="name" type="text" class="form-control"
															value="<%=name%>" readonly="readonly" />
													</div>
												</div>

												<div class="form-group row">
													<label class="col-sm-2 control-label">첨부파일</label>
													<div class="col-sm-3">
														<input name="filename" type="file" class="form-control" />
													</div>
												</div>

												<input type="hidden" name="category" value="<%=category%>" />



												<div class="form-group row">
													<div class="col-sm-offset-2 col-sm-10">
														<input type="submit" class="btn btn-primary" value="등록" />
														<input type="reset" class="btn btn-warning" value="재작성" />
														<a
															href="./BoardListAction.do?pageNum=1&category=<%=category%>"
															class="btn btn-info">이전으로</a>
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
