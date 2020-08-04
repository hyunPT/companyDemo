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


<link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<link rel="stylesheet" href="../../resources/css/gallery.css">


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
								class="account-type">행사사진</span><br /></a></li>
					</ul>
					<div class="tab-content"
						style="width: 90%; height: 100%; margin: 0 auto; padding-bottom: 50px;">
						<div class="tab-pane active" id="lA">
							<div style="width: 90%; margin: 0 auto;">
								<br>
								<h2>
									<strong>행사사진</strong>
								</h2>
								<div class="row">
									<div class="col-md-12" style="margin-bottom: 20px;">
										<div class="container gallery-container">
											<div class="container gallery-container">
												<div class="tz-gallery">
													<div class="row">
														<div class="col-sm-6 col-md-4">
															<div class="thumbnail">
																<a class="lightbox"
																	href="../../resources/images/workshop1.jpg"> <img
																	src="../../resources/images/workshop1.jpg" alt="Park">
																</a>
																<div class="caption">
																	<h3>워크숍1</h3>
																	<p>워크숍 설명</p>
																</div>
															</div>
														</div>
														<div class="col-sm-6 col-md-4">
															<div class="thumbnail">
																<a class="lightbox"
																	href="../../resources/images/workshop2.jpg"> <img
																	src="../../resources/images/workshop2.jpg" alt="Bridge">
																</a>
																<div class="caption">
																	<h3>워크숍2</h3>
																	<p>워크숍 설명</p>
																</div>
															</div>
														</div>
														<div class="col-sm-6 col-md-4">
															<div class="thumbnail">
																<a class="lightbox"
																	href="../../resources/images/workshop3.jpg"> <img
																	src="../../resources/images/workshop3.jpg"
																	alt="Tunnel">
																</a>
																<div class="caption">
																	<h3>워크숍3</h3>
																	<p>워크숍 설명</p>
																</div>
															</div>
														</div>
														<div class="col-sm-6 col-md-4">
															<div class="thumbnail">
																<a class="lightbox"
																	href="../../resources/images/workshop4.jpg"> <img
																	src="../../resources/images/workshop4.jpg" alt="Coast">
																</a>
																<div class="caption">
																	<h3>워크숍4</h3>
																	<p>워크숍 설명</p>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<script
											src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
										<script>
											baguetteBox.run('.tz-gallery');
										</script>
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
