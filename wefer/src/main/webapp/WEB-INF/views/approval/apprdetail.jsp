<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>approval Form</title>
<!-- Jquery CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="./resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./resources/vendors/images/favicon-16x16.png">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/core.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/style.css">


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script>
<script>
function check(){
	 if($('.conf').css('display') == 'none'){
	      $('.conf').show();
	    }else{
	      $('.conf').hide();
	    }
}
</script>
</head>
<style>
.chat-box .chat-desc ul, .pd-ltr-20 {
	padding: 20px 20px 10px;
}

.wrap {
	display: flex;
}

.bootstrap-tagsinput {
	box-sizing: border-box;
	width: 100%;
	border: 0;
}

.check {
    float: right;
	width: 100px;
	padding: 10px !important;
}

.name {
	text-align: center;
	padding: inherit;
}
.conf{
display: none; text-align: center;
}
</style>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-0">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="title">
								<h4>결재</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">결재</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				
				<div class="pd-20 card-box mb-30">
					<div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item pt-20 pb-20">
								<div class="card card-box check">
									<div class="card-header name">김땡땡</div>
									<div class="card-body" id="check" onclick="check()">
										<div class="conf">
											<i class="icon-copy fa fa-check" aria-hidden="true"></i>
										</div>
									</div>
								</div>
								<div class="card card-box check">
									<div class="card-header name">김땡땡</div>
									<div class="card-body" id="check" onclick="check()">
										<div class="conf">
											<i class="icon-copy fa fa-check" aria-hidden="true"></i>
										</div>
									</div>
								</div>
							</li>
							<li class="list-group-item pt-20 pb-20">
							<div class="container">
								<h6 class="weight-400 d-flex">
									<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
									제목입니다.
								</h6>
								</div>
							</li>
							<li class="list-group-item pt-20 pb-20">
								<div class="container">
								<h6 class="weight-400 d-flex">
									<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
									수신인 발신인
								</h6>
								</div>
							</li>
							<li class="list-group-item pt-20 pb-20">
								<div class="container">
								<h6 class="weight-400 d-flex">
									<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
									첨부파일
								</h6>
								</div>
							</li>
							<li class="list-group-item pt-20 pb-20">
						<div class="container">
								<h6 class="weight-400 d-flex">
									<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
									글내용
								</h6> ${board.board_content} Lorem ipsum dolor sit amet Consectetur
								adipiscing elit Integer molestie lorem at massa Facilisis in
								pretium nisl aliquet Nulla volutpat aliquam velit Phasellus
								iaculis neque Purus sodales ultricies Vestibulum laoreet
								porttitor sem Ac tristique libero volutpat at Faucibus porta
								lacus fringilla vel Aenean sit amet erat nunc Eget porttitor
								lorem
								</div>
							</li>
								
							<li class="list-group-item pt-20 pb-20">
								<div class="container">
									<label for="content">comment</label>
									<form name="commentInsertForm">
										<div class="input-group">
											<input type="hidden" name="bno" value="${detail.bno}" /> <input
												type="text" class="form-control" id="content" name="content"
												placeholder="내용을 입력하세요."> <span
												class="input-group-btn">
												<button class="btn btn-default" type="button"
													name="commentInsertBtn">등록</button>
											</span>
										</div>
									</form>
								</div>

								<div class="container">
									<div class="commentList"></div>
								</div> <%@ include file="/WEB-INF/views/approval/appr-comment.jsp"%>

							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a
					href="https://github.com/dropways" target="_blank">Ankit
					Hingarajiya</a>
			</div>
		</div>
	</div>
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/switchery/switchery.min.js"></script>
	<!-- bootstrap-tagsinput js -->
	<script
		src="./resources/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<!-- bootstrap-touchspin js -->
	<script
		src="./resources/src/plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script src="./resources/vendors/scripts/advanced-components.js"></script>
</body>
</html>