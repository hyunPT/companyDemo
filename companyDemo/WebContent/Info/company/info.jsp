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

<link rel="stylesheet" href="../../resources/css/info.css" />
<link rel="stylesheet" href="../../resources/css/company.css" />





<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<title>Insert title here</title>


<%
	String sub = (String) request.getParameter("sub");
%>



<style>
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
	<div class="clearfix"></div>
	
	<!-- 회사소개 탭 -->
	<%
		if (sub.equals("intro")) {
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
						<li class="active"><a href="#lA" data-toggle="tab"> <span class="account-type">회사소개</span><br/></a></li>
						<li class=""><a href="#lB" data-toggle="tab"> <span class="account-type">회사연혁</span><br/></a></li>
						<li class=""><a href="#lC" data-toggle="tab"> <span class="account-type">조직도</span><br/></a></li>
						<li class=""><a href="#lD" data-toggle="tab"> <span class="account-type">오시는길</span><br /></a></li>
					</ul>
					<div class="tab-content" style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane active" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사소개</strong>
								</h2>
								<br> <img src="../../resources/images/aside_vline.jpg" style="width: 50%;" /><br>
								<br>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-7">
											<h2>
												<strong>"(주)F.C는 최고가 되겠습니다."</strong>
											</h2>
											<br>
											<br>
											<h3>당사는 인재양성을 통한 IT전문업체를 지향하여 독자 프로젝트 수행과 IT Outsourcing
												사업수행을 통해 지난 10여년간 금융, 공공, 제조, 유통의 업무영역분석, 시스템 컨설팅 및 구축프로젝트를
												성공적으로 수행하여 온 전문업체로서, 이제 이렇게 축척된 경험과 역량 및 업계의 인지도라는 차별화된 자산을
												바탕으로 사업영역을 더욱 확대하고자 합니다.</h3>
											<br>
											<h3>당사는 다양한 분야에서의 솔루션 개발 및 인재양성을 통해 전략적 협력관계를 구축한 고객사 및
												국내 대형 SI업체와의 프로젝트 개발 및 우수개발인력자원 계발 등의 업무를 활발히 진행하고 있습니다.</h3>
											<br>
											<h3>또한 우수한 인력을 바탕으로 최적의 시스템구축 컨설팅 및 최상의 통합정보 시스템을 구축하여
												드리고 있습니다.</h3>
											<br>
										</div>

										<div class="col-md-5">
											<img src="../../resources/images/intro.jpg"
												style="width: 100%; height: 100%;" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="lB">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사연혁</strong>
								</h2>
								<br>

								<div class="container">
									<div class="row">
										<div class="main-timeline">

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2020</span>
													<h5 class="title">2020 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, , K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2019</span>
													<h5 class="title">2019 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2018</span>
													<h5 class="title">2018 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="tab-pane" id="lC">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>조직도</h2>
								<br> <img src="../../resources/images/organiztional.jpg"
									style="width: 90%; margin: 0 auto" />
							</div>
						</div>
						<div class="tab-pane" id="lD">
							<div>
								<br>
								<h2>오시는길</h2>
								<br>

								<div class="desciprtion" style="width: 98%;">
									<div class="col-md-12">
										<div class="col-md-8">
											<h2>
												<strong>본사위치</strong>
											</h2>
											<ul>
												<li>주소 : 부산광역시 연제구 연산동 1287-3</li>
												<li>대표문의 : 051-123-4567</li>
												<li>팩스 : 051-123-4567</li>
											</ul>
										</div>
									</div>
								</div>
								<br>
								<br>
								<br>
								<br>

								<div id="map" style="width: 98%; height: 600px;"></div>
								<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=key"></script>
								<script>
									setTimeout(
											function() {
												var container = document
														.getElementById('map');

												var options = {
													center : new kakao.maps.LatLng(
															35.1851517,
															129.0783519),
													level : 3
												};
												var map = new kakao.maps.Map(
														container, options);

												// 마커가 표시될 위치입니다 
												var markerPosition = new kakao.maps.LatLng(
														35.1851517, 129.0783519);

												// 마커를 생성합니다
												var marker = new kakao.maps.Marker(
														{
															position : markerPosition
														});

												// 마커가 지도 위에 표시되도록 설정합니다
												marker.setMap(map);
											}, 3000);
								</script>

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
	
	
	
	
	
	
	
	
	
	<!-- 조직도 탭 -->
	<%
		if (sub.equals("oranization")) {
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
						<li class=""><a href="#lA" data-toggle="tab"> <span class="account-type">회사소개</span><br/></a></li>
						<li class=""><a href="#lB" data-toggle="tab"> <span class="account-type">회사연혁</span><br/></a></li>
						<li class="active"><a href="#lC" data-toggle="tab"> <span class="account-type">조직도</span><br/></a></li>
						<li class=""><a href="#lD" data-toggle="tab"> <span class="account-type">오시는길</span><br /></a></li>
					</ul>
					<div class="tab-content" style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사소개</strong>
								</h2>
								<br> <img src="../../resources/images/aside_vline.jpg" style="width: 50%;" /><br>
								<br>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-7">
											<h2>
												<strong>"(주)F.C는 최고가 되겠습니다."</strong>
											</h2>
											<br>
											<br>
											<h3>당사는 인재양성을 통한 IT전문업체를 지향하여 독자 프로젝트 수행과 IT Outsourcing
												사업수행을 통해 지난 10여년간 금융, 공공, 제조, 유통의 업무영역분석, 시스템 컨설팅 및 구축프로젝트를
												성공적으로 수행하여 온 전문업체로서, 이제 이렇게 축척된 경험과 역량 및 업계의 인지도라는 차별화된 자산을
												바탕으로 사업영역을 더욱 확대하고자 합니다.</h3>
											<br>
											<h3>당사는 다양한 분야에서의 솔루션 개발 및 인재양성을 통해 전략적 협력관계를 구축한 고객사 및
												국내 대형 SI업체와의 프로젝트 개발 및 우수개발인력자원 계발 등의 업무를 활발히 진행하고 있습니다.</h3>
											<br>
											<h3>또한 우수한 인력을 바탕으로 최적의 시스템구축 컨설팅 및 최상의 통합정보 시스템을 구축하여
												드리고 있습니다.</h3>
											<br>
										</div>

										<div class="col-md-5">
											<img src="../../resources/images/intro.jpg"
												style="width: 100%; height: 100%;" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="lB">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사연혁</strong>
								</h2>
								<br>

								<div class="container">
									<div class="row">
										<div class="main-timeline">

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2020</span>
													<h5 class="title">2020 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, , K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2019</span>
													<h5 class="title">2019 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2018</span>
													<h5 class="title">2018 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="tab-pane active" id="lC">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>조직도</h2>
								<br> <img src="../../resources/images/organiztional.jpg"
									style="width: 90%; margin: 0 auto" />
							</div>
						</div>
						<div class="tab-pane" id="lD">
							<div>
								<br>
								<h2>오시는길</h2>
								<br>

								<div class="desciprtion" style="width: 98%;">
									<div class="col-md-12">
										<div class="col-md-8">
											<h2>
												<strong>본사위치</strong>
											</h2>
											<ul>
												<li>주소 : 부산광역시 연제구 연산동 1287-3</li>
												<li>대표문의 : 051-123-4567</li>
												<li>팩스 : 051-123-4567</li>
											</ul>
										</div>
									</div>
								</div>
								<br>
								<br>
								<br>
								<br>

								<div id="map" style="width: 98%; height: 600px;"></div>
								<script type="text/javascript"
									src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=1e9d71dff750df4d6c116679849f36c5"></script>
								<script>
									setTimeout(
											function() {
												var container = document
														.getElementById('map');

												var options = {
													center : new kakao.maps.LatLng(
															35.1851517,
															129.0783519),
													level : 3
												};
												var map = new kakao.maps.Map(
														container, options);

												// 마커가 표시될 위치입니다 
												var markerPosition = new kakao.maps.LatLng(
														35.1851517, 129.0783519);

												// 마커를 생성합니다
												var marker = new kakao.maps.Marker(
														{
															position : markerPosition
														});

												// 마커가 지도 위에 표시되도록 설정합니다
												marker.setMap(map);
											}, 2000);
								</script>

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
	
	
	
	
	
	
	
	
	
	
		<!-- 오시는길 탭 -->
	<%
		if (sub.equals("way")) {
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
						<li class=""><a href="#lA" data-toggle="tab"> <span class="account-type">회사소개</span><br/></a></li>
						<li class=""><a href="#lB" data-toggle="tab"> <span class="account-type">회사연혁</span><br/></a></li>
						<li class=""><a href="#lC" data-toggle="tab"> <span class="account-type">조직도</span><br/></a></li>
						<li class="active"><a href="#lD" data-toggle="tab"> <span class="account-type">오시는길</span><br /></a></li>
					</ul>
					<div class="tab-content" style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사소개</strong>
								</h2>
								<br> <img src="../../resources/images/aside_vline.jpg" style="width: 50%;" /><br>
								<br>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-7">
											<h2>
												<strong>"(주)F.C는 최고가 되겠습니다."</strong>
											</h2>
											<br>
											<br>
											<h3>당사는 인재양성을 통한 IT전문업체를 지향하여 독자 프로젝트 수행과 IT Outsourcing
												사업수행을 통해 지난 10여년간 금융, 공공, 제조, 유통의 업무영역분석, 시스템 컨설팅 및 구축프로젝트를
												성공적으로 수행하여 온 전문업체로서, 이제 이렇게 축척된 경험과 역량 및 업계의 인지도라는 차별화된 자산을
												바탕으로 사업영역을 더욱 확대하고자 합니다.</h3>
											<br>
											<h3>당사는 다양한 분야에서의 솔루션 개발 및 인재양성을 통해 전략적 협력관계를 구축한 고객사 및
												국내 대형 SI업체와의 프로젝트 개발 및 우수개발인력자원 계발 등의 업무를 활발히 진행하고 있습니다.</h3>
											<br>
											<h3>또한 우수한 인력을 바탕으로 최적의 시스템구축 컨설팅 및 최상의 통합정보 시스템을 구축하여
												드리고 있습니다.</h3>
											<br>
										</div>

										<div class="col-md-5">
											<img src="../../resources/images/intro.jpg"
												style="width: 100%; height: 100%;" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="lB">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사연혁</strong>
								</h2>
								<br>

								<div class="container">
									<div class="row">
										<div class="main-timeline">

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2020</span>
													<h5 class="title">2020 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, , K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2019</span>
													<h5 class="title">2019 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2018</span>
													<h5 class="title">2018 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="tab-pane" id="lC">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>조직도</h2>
								<br> <img src="../../resources/images/organiztional.jpg"
									style="width: 90%; margin: 0 auto" />
							</div>
						</div>
						<div class="tab-pane active" id="lD">
							<div>
								<br>
								<h2>오시는길</h2>
								<br>

								<div class="desciprtion" style="width: 98%;">
									<div class="col-md-12">
										<div class="col-md-8">
											<h2>
												<strong>본사위치</strong>
											</h2>
											<ul>
												<li>주소 : 부산광역시 연제구 연산동 1287-3</li>
												<li>대표문의 : 051-123-4567</li>
												<li>팩스 : 051-123-4567</li>
											</ul>
										</div>
									</div>
								</div>
								<br>
								<br>
								<br>
								<br>

								<div id="map" style="width: 98%; height: 600px;"></div>
								<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=1e9d71dff750df4d6c116679849f36c5"></script>
								<script>
									setTimeout(
											function() {
												var container = document
														.getElementById('map');

												var options = {
													center : new kakao.maps.LatLng(
															35.1851517,
															129.0783519),
													level : 3
												};
												var map = new kakao.maps.Map(
														container, options);

												// 마커가 표시될 위치입니다 
												var markerPosition = new kakao.maps.LatLng(
														35.1851517, 129.0783519);

												// 마커를 생성합니다
												var marker = new kakao.maps.Marker(
														{
															position : markerPosition
														});

												// 마커가 지도 위에 표시되도록 설정합니다
												marker.setMap(map);
											}, 3000);
								</script>

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
	
	
	
	
	
	
	
	
	
		<!-- 회사연혁 탭 -->
	<%
		if (sub.equals("history")) {
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
						<li class=""><a href="#lA" data-toggle="tab"> <span class="account-type">회사소개</span><br/></a></li>
						<li class="active"><a href="#lB" data-toggle="tab"> <span class="account-type">회사연혁</span><br/></a></li>
						<li class=""><a href="#lC" data-toggle="tab"> <span class="account-type">조직도</span><br/></a></li>
						<li class=""><a href="#lD" data-toggle="tab"> <span class="account-type">오시는길</span><br /></a></li>
					</ul>
					<div class="tab-content" style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사소개</strong>
								</h2>
								<br> <img src="../../resources/images/aside_vline.jpg" style="width: 50%;" /><br>
								<br>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-7">
											<h2>
												<strong>"(주)F.C는 최고가 되겠습니다."</strong>
											</h2>
											<br>
											<br>
											<h3>당사는 인재양성을 통한 IT전문업체를 지향하여 독자 프로젝트 수행과 IT Outsourcing
												사업수행을 통해 지난 10여년간 금융, 공공, 제조, 유통의 업무영역분석, 시스템 컨설팅 및 구축프로젝트를
												성공적으로 수행하여 온 전문업체로서, 이제 이렇게 축척된 경험과 역량 및 업계의 인지도라는 차별화된 자산을
												바탕으로 사업영역을 더욱 확대하고자 합니다.</h3>
											<br>
											<h3>당사는 다양한 분야에서의 솔루션 개발 및 인재양성을 통해 전략적 협력관계를 구축한 고객사 및
												국내 대형 SI업체와의 프로젝트 개발 및 우수개발인력자원 계발 등의 업무를 활발히 진행하고 있습니다.</h3>
											<br>
											<h3>또한 우수한 인력을 바탕으로 최적의 시스템구축 컨설팅 및 최상의 통합정보 시스템을 구축하여
												드리고 있습니다.</h3>
											<br>
										</div>

										<div class="col-md-5">
											<img src="../../resources/images/intro.jpg"
												style="width: 100%; height: 100%;" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane active" id="lB">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>회사연혁</strong>
								</h2>
								<br>

								<div class="container">
									<div class="row">
										<div class="main-timeline">

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2020</span>
													<h5 class="title">2020 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, , K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2019</span>
													<h5 class="title">2019 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>

											<div class="timeline">
												<div class="timeline-icon"></div>
												<div class="timeline-content">
													<span class="date">2018</span>
													<h5 class="title">2018 Project</h5>
													<p class="description">
														<strong>12.고용정보원 시스템 운영, 블록체인, 전기안전공제조합 경영정보시스템,
															한국교육개발원 미취학아동시스템 개발, K쇼핑 개발 프로젝트</strong>
													</p>
													<p class="description">
														<strong>11.KB저축은행, KDB산업은행 차세대 인터넷뱅킹 개발, 비즈웰 그룹웨어
															시스템 개발, LG유플러스 TOSS3.0개발</strong>
													</p>
													<p class="description">
														<strong> 5.CJ ONE Gift카드 시스템 운영, 순환자원유통지원센터 고도화업무
															개발, 삼성전자, 현대자동차 의왕 프로젝트</strong>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="tab-pane" id="lC">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>조직도</h2>
								<br> <img src="../../resources/images/organiztional.jpg"
									style="width: 90%; margin: 0 auto" />
							</div>
						</div>
						<div class="tab-pane" id="lD">
							<div>
								<br>
								<h2>오시는길</h2>
								<br>

								<div class="desciprtion" style="width: 98%;">
									<div class="col-md-12">
										<div class="col-md-8">
											<h2>
												<strong>본사위치</strong>
											</h2>
											<ul>
												<li>주소 : 부산광역시 연제구 연산동 1287-3</li>
												<li>대표문의 : 051-123-4567</li>
												<li>팩스 : 051-123-4567</li>
											</ul>
										</div>
									</div>
								</div>
								<br>
								<br>
								<br>
								<br>

								<div id="map" style="width: 98%; height: 600px;"></div>
								<script type="text/javascript"
									src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=1e9d71dff750df4d6c116679849f36c5"></script>
								<script>
									setTimeout(
											function() {
												var container = document
														.getElementById('map'); 

												var options = {
													center : new kakao.maps.LatLng(
															35.1851517,
															129.0783519),
													level : 3
												};
												var map = new kakao.maps.Map(
														container, options);

												// 마커가 표시될 위치입니다 
												var markerPosition = new kakao.maps.LatLng(
														35.1851517, 129.0783519);

												// 마커를 생성합니다
												var marker = new kakao.maps.Marker(
														{
															position : markerPosition
														});

												// 마커가 지도 위에 표시되도록 설정합니다
												marker.setMap(map);
											}, 2000);
								</script>

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
