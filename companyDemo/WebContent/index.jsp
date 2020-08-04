<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css" />
 <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> 
 <script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> 

<style>

.image a:hover{
	background:#ccc;
}
.image img{
	width:100%;
	height:100%;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<br>
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
	<section>
	<!-- slider -->
	<div class="slider container-fluid">
		<header>
		<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="resources/images/banner1.jpg" alt="..."
							style="width: 100%">
						<div class="carousel-caption">
							<h2 class="animated bounceInRight"
								style="animation-delay: 1s; font-size: 30px;">Title1</h2>
							<h3 class="animated bounceInLeft"
								style="animation-delay: 2s; font-size: 20px;">Content1</h3>
						</div>
					</div>
					<div class="item">
						<img src="resources/images/banner2.jpg" alt="..."
							style="width: 100%">
						<div class="carousel-caption">
							<h2 class="animated slideInDown"
								style="animation-delay: 1s; font-size: 30px;">Title2</h2>
							<h3 class="animated slideInRight"
								style="animation-delay: 2s; font-size: 20px;">Content2</h3>
						</div>
					</div>
					<div class="item">
						<img src="resources/images/banner3.jpg" alt="..."
							style="width: 100%">
						<div class="carousel-caption">
							<h2 class="animated zoomIn"
								style="animation-delay: 1s; font-size: 30px;">Title3</h2>
							<h3 class="animated zoomIn"
								style="animation-delay: 2s; font-size: 20px;">Content3</h3>
						</div>
					</div>

				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</header>
	</div>
	<br>
	<br>
	<br>




	<!-- 게시판 미리보기(왼쪽정렬) -->
	<div class="project-tab" id="tabs" style="width:90%; margin:0 auto;">

			<div class="row slide-bottom">
				<div class="col-md-8">
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true" style="">공지사항</a>
							<a class="nav-item nav-link" id="nav-profile-tab"
								data-toggle="tab" href="#nav-profile" role="tab"
								aria-controls="nav-profile" aria-selected="false">자료실</a> <a
								class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab"
								href="#nav-contact" role="tab" aria-controls="nav-contact"
								aria-selected="false">이벤트</a> <a href="#"
								style="text-decoration: none; color: #555555;"><h4>more</h4></a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" cellspacing="0">
								<tbody>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>공지사항1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>공지사항1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>공지사항1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							<table class="table" cellspacing="0">

								<tbody>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>자료실1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>자료실1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>자료실1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="tab-pane fade" id="nav-contact" role="tabpanel"
							aria-labelledby="nav-contact-tab">
							<table class="table" cellspacing="0">

								<tbody>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>이벤트1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>이벤트1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
									<tr>
										<td class="text-left"><a href="#"
											style="text-decoration: none; color: #555555;"><h4>이벤트1</h4></a></td>
										<td class="text-right"><h5>작성자1</h5></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			
			<div class="col-md-4">
				<div class="alliance slide-bottom">
						<h3 style="margin-top:11px;"><strong>사업제휴 안내</strong></h3><hr>
						<h2 class="glyphicon glyphicon-phone-alt" style="margin-bottom:10px; background:#ccc; height:40px; width:100%; padding:10px;">&nbsp;T.051-123-4567</h2>
						<div class="aliContent" style="border:2px solid #ccc; padding:5px;">
							<h4 style="margin-bottom:10px;">월~금: AM 09 : 00 ~ PM 06 : 00</h4>
							<h4 style="margin-bottom:10px;">토, 일, 공휴일은 휴무 입니다.</h4>
							<h4 style="margin-bottom:10px;">담당자 : 홍길동 과장</h4>
							<h4 style="margin-bottom:10px;">이메일 : hong@pm.co.kr</h4>
							<h4>업무 시간 외에는 게시판으로 문의 바랍니다.</h4><br>
						</div>
					
					
				</div>
			</div>

			</div>

		
	</div>
	<br><br><br><br>
<div class="image slide-bottom" style="width:90%; margin:0 auto;">
	<div class="row">
  		<div class="col-xs-3 col-md-3 text-center">
    		<a href="board/gallery/facilityGallery.jsp" class="thumbnail"><img src="resources/images/restarea.jpg" alt="..."></a>
    		<p4>휴게실</p4>
  		</div>
  		<div class="col-xs-3 col-md-3 text-center">
    		<a href="board/gallery/facilityGallery.jsp" class="thumbnail"><img src="resources/images/Cafeteras.jpg" alt="..."></a>
    		<p4>카페테라스</p4>
  		</div>
  		<div class="col-xs-3 col-md-3 text-center">
    		<a href="board/gallery/facilityGallery.jsp" class="thumbnail"><img src="resources/images/office.jpg" alt="..."></a>
    		<p4>사무실</p4>
  		</div>
  		<div class="col-xs-3 col-md-3 text-center">
    		<a href="board/gallery/facilityGallery.jsp" class="thumbnail"><img src="resources/images/mettingroom.jpg" alt="..."></a>
    		<p4>회의실</p4>
  		</div>
  </div>
</div>
	<br><br><br><br>
	
	<div class="container-fluid">
	<div class="img-holder" data-image="resources/images/index_slider.jpg"></div>
	</div>
	</section>
	<br><br><br><br>
	
	<div class="aspiration container">
		<h1>"인사말"</h1>
		<br><br>
		<h2><strong>소제목</strong></h2>
		<br>
		
		<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam bibendum sollicitudin odio nec commodo. Donec rutrum ultricies neque, ac pulvinar elit sodales vel. Etiam condimentum diam sed lacus laoreet malesuada. Sed ut est nec magna finibus ornare. Sed ullamcorper finibus consequat. Donec egestas in ligula nec vestibulum. Donec mattis, mauris eget porta blandit, justo leo varius nunc, vitae pulvinar nulla leo vitae justo. Nunc at nulla ante.</h3>
		<br>
		<h3 class="text-right">(주)FC 대표</h3>
		<h2 class="text-right">홍 길 동</h2>
		
	</div>
	<br><br>
	
	<jsp:include page="footer.jsp" />
	
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="resources/js/jquery.imageScroll.js"></script>
	 <script>
        $('.img-holder').imageScroll({
            image: null,
            imageAttribute: 'image',
            container: $('body'),
            windowObject: $(window),
            speed:.2,
            coverRatio:.75,
            coverRatio:1,
            holderClass: 'imageHolder',
            imgClass: 'img-holder-img',
            holderMinHeight: 200,
            holderMaxHeight: 250,
            extraHeight: 50,
            mediaWidth: 1920,
            mediaHeight: 1267,
            parallax: true,
            touch: false
        });
    </script>
	
</body>
</html>