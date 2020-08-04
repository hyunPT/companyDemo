<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />

<link rel="stylesheet" href="../resources/css/info.css" />
<link rel="stylesheet" href="../resources/css/company.css" />





<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<title>Insert title here</title>


<%
	String sub = (String) request.getParameter("sub");
%>



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

.hovereffect {
	width: 100%;
	height: 100%;
	float: left;
	overflow: hidden;
	position: relative;
	text-align: center;
	cursor: default;
	margin-bottom: 20px;
}

.hovereffect .overlay {
	position: absolute;
	overflow: hidden;
	width: 80%;
	height: 80%;
	left: 10%;
	top: 10%;
	border-bottom: 1px solid #FFF;
	border-top: 1px solid #FFF;
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: scale(0, 1);
	-ms-transform: scale(0, 1);
	transform: scale(0, 1);
}

.hovereffect:hover .overlay {
	opacity: 1;
	filter: alpha(opacity = 100);
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1);
}

.hovereffect img {
	display: block;
	position: relative;
	-webkit-transition: all 0.35s;
	transition: all 0.35s;
	width: 100%;
}

.hovereffect:hover img {
	filter:
		url('data:image/svg+xml;charset=utf-8,<svg xmlns="http://www.w3.org/2000/svg"><filter id="filter"><feComponentTransfer color-interpolation-filters="sRGB"><feFuncR type="linear" slope="0.6" /><feFuncG type="linear" slope="0.6" /><feFuncB type="linear" slope="0.6" /></feComponentTransfer></filter></svg>#filter');
	filter: brightness(0.6);
	-webkit-filter: brightness(0.6);
	width: 100%;
}

.hovereffect h2 {
	text-transform: uppercase;
	text-align: center;
	position: relative;
	font-size: 23px;
	background-color: transparent;
	color: #FFF;
	padding: 1em 0;
	opacity: 0;
	filter: alpha(opacity = 0);
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: translate3d(0, -100%, 0);
	transform: translate3d(0, -100%, 0);
	font-weight: bold;
}

.hovereffect a, .hovereffect p {
	color: #FFF;
	padding: 1em 0;
	opacity: 0;
	filter: alpha(opacity = 0);
	-webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
	transition: opacity 0.35s, transform 0.35s;
	-webkit-transform: translate3d(0, 100%, 0);
	transform: translate3d(0, 100%, 0);
	font-size: 15px;
}

.hovereffect:hover a, .hovereffect:hover p, .hovereffect:hover h2 {
	opacity: 1;
	filter: alpha(opacity = 100);
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}
</style>

</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="clearfix"></div>

	<!-- 채용안내 탭 -->
	<%
		if (sub.equals("hire")) {
	%>
	<div class="container-fluid">
		<div class="img-holder"
			data-image="${pageContext.request.contextPath}/resources/images/index_slider.jpg"></div>
	</div>

	<div class="content">
		<div class="container-fluid"
			style="padding: 20px; margin-bottom: 20px;">
			<div class="row-fluid">
				<div id="myTabHolder" class="span10 offset1 tabbable tabs-left">
					<ul class="nav">
						<li class="active"><a href="#lA" data-toggle="tab"> <span
								class="account-type">채용안내</span><br /></a></li>
						<li class=""><a href="#lB" data-toggle="tab"> <span
								class="account-type">복지혜택</span><br /></a></li>
					</ul>
					<div class="tab-content"
						style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane active" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>채용안내</strong>
								</h2>
								<div class="row">
									<div class="col-md-12" style="margin-bottom: 20px;">
										<div class="col-md-6">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>자격요건</strong>
												</h2>
												<ul>
													<li>●초대졸이상</li>
													<li>●JAVA,JSP,SPring Framework 사용자 우대</li>
													<li>●영어가능자 우대</li>
													<li>●정보처리기사 및 자격증 소지자 우대</li>
													<li>●28세 이상 지원가능</li>
												</ul>
											</div>
										</div>

										<div class="col-md-6">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>전형절차</strong>
												</h2>
												<ul>
													<li>●사람인 입사지원 접수 > 서류전형 > 면접전형 > 채용</li>
													<li>●담당자 : 홍길동 과장</li>
													<li>●Tel : 051-123-4567</li>
													<li>●Fax : 051-123-4567</li>
													<li>●Email : test@test.com</li>
												</ul>

											</div>
										</div>
									</div>

									<div class="col-md-12">
										<div class="col-md-6">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>제출서류</strong>
												</h2>
												<ul>
													<li>●이력서, 자기소개서</li>
													<li>●기술경력 소개서 및 포트폴리오</li>
												</ul>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>



						<div class="tab-pane" id="lB">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>복지혜택</strong>
								</h2>
								<br>

								<div class="row">
									<div class="col-md-12 col-xs-12">
										<div class="col-md-6 col-xs-12">

											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>장비지원</strong>
												</h2>
												<div class="hovereffect">
													<img class="img-responsive"
														src="../resources/images/notebook.jpg" alt="">
													<div class="overlay">
														<h2>키보드,마우스,듀얼모니터,노트북 지원</h2>
														<p>●본인장비 사용시 비용지원</p>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-xs-12">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>복지혜택 지원</strong>
												</h2>
												<div class="hovereffect">
													<img class="img-responsive"
														src="../resources/images/rest.jpg" alt="">
													<div class="overlay">
														<h2>우수사원표창 / 포상</h2>
														<p>●경조사 화환 및 방문 부조금</p>
														<p>●자기계발 비용 지원</p>
														<p>●야근 식대 및 교통비 지원</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-md-12 col-xs-12">
											<div class="col-md-6 col-xs-12">

												<div class="desciprtion" style="width: 98%;">
													<h2>
														<strong>여가 및 휴가복지</strong>
													</h2>
													<div class="hovereffect">
														<img class="img-responsive"
															src="../resources/images/vacation.jpg" alt="">
														<div class="overlay">
															<h2>워크샵,송년회,명절 선물</h2>
															<p>●4대보험,연차,정기 휴가</p>
															<p>●여름 휴가비 지원</p>
															<p>●출산 휴가,육아 휴직</p>
														</div>
													</div>
												</div>
											</div>
										</div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%
		}
	%>
	
	
	
	
	
	<!-- 복지내용 탭 -->
	<%
		if (sub.equals("welfare")) {
	%>
	<div class="container-fluid">
		<div class="img-holder"
			data-image="${pageContext.request.contextPath}/resources/images/index_slider.jpg"></div>
	</div>

	<div class="content">
		<div class="container-fluid"
			style="padding: 20px; margin-bottom: 20px;">
			<div class="row-fluid">
				<div id="myTabHolder" class="span10 offset1 tabbable tabs-left">
					<ul class="nav">
						<li class=""><a href="#lA" data-toggle="tab"> <span
								class="account-type">채용안내</span><br /></a></li>
						<li class="active"><a href="#lB" data-toggle="tab"> <span
								class="account-type">복지혜택</span><br /></a></li>
					</ul>
					<div class="tab-content"
						style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>채용안내</strong>
								</h2>
								<div class="row">
									<div class="col-md-12" style="margin-bottom: 20px;">
										<div class="col-md-6">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>자격요건</strong>
												</h2>
												<ul>
													<li>●초대졸이상</li>
													<li>●JAVA,JSP,SPring Framework 사용자 우대</li>
													<li>●영어가능자 우대</li>
													<li>●정보처리기사 및 자격증 소지자 우대</li>
													<li>●28세 이상 지원가능</li>
												</ul>
											</div>
										</div>

										<div class="col-md-6">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>전형절차</strong>
												</h2>
												<ul>
													<li>●사람인 입사지원 접수 > 서류전형 > 면접전형 > 채용</li>
													<li>●담당자 : 홍길동 과장</li>
													<li>●Tel : 051-123-4567</li>
													<li>●Fax : 051-123-4567</li>
													<li>●Email : test@test.com</li>
												</ul>

											</div>
										</div>
									</div>

									<div class="col-md-12">
										<div class="col-md-6">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>제출서류</strong>
												</h2>
												<ul>
													<li>●이력서, 자기소개서</li>
													<li>●기술경력 소개서 및 포트폴리오</li>
												</ul>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>



						<div class="tab-pane active" id="lB">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>복지혜택</strong>
								</h2>
								<br>

								<div class="row">
									<div class="col-md-12 col-xs-12">
										<div class="col-md-6 col-xs-12">

											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>장비지원</strong>
												</h2>
												<div class="hovereffect">
													<img class="img-responsive"
														src="../resources/images/notebook.jpg" alt="">
													<div class="overlay">
														<h2>키보드,마우스,듀얼모니터,노트북 지원</h2>
														<p>●본인장비 사용시 비용지원</p>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-xs-12">
											<div class="desciprtion" style="width: 98%;">
												<h2>
													<strong>복지혜택 지원</strong>
												</h2>
												<div class="hovereffect">
													<img class="img-responsive"
														src="../resources/images/rest.jpg" alt="">
													<div class="overlay">
														<h2>우수사원표창 / 포상</h2>
														<p>●경조사 화환 및 방문 부조금</p>
														<p>●자기계발 비용 지원</p>
														<p>●야근 식대 및 교통비 지원</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="col-md-12 col-xs-12">
											<div class="col-md-6 col-xs-12">

												<div class="desciprtion" style="width: 98%;">
													<h2>
														<strong>여가 및 휴가복지</strong>
													</h2>
													<div class="hovereffect">
														<img class="img-responsive"
															src="../resources/images/vacation.jpg" alt="">
														<div class="overlay">
															<h2>워크샵,송년회,명절 선물</h2>
															<p>●4대보험,연차,정기 휴가</p>
															<p>●여름 휴가비 지원</p>
															<p>●출산 휴가,육아 휴직</p>
														</div>
													</div>
												</div>
											</div>
										</div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%
		}
	%>

	<div class="clearfix"></div>
	<jsp:include page="../footer.jsp" />

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
