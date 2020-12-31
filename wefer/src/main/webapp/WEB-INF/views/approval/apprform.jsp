<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>approval Form</title>

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
     border:0;
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
					<form>
						<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">제목</label>
							<div class="col-sm-12 col-md-10 wrap">
								<select class="custom-select col-3">
									<option selected="">Choose...</option>
									<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>
								</select> 
								<input class="form-control" type="text" placeholder="제목을 입력하세요" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">수신참조인</label>
						
							<div class="col-sm-12 col-md-10 wrap">
							
								<input placeholder="Search Here" type="text" data-role="tagsinput"> 
							
								<i class="icon-copy fi-torsos-female-male" style="font-size:40px; padding-left : 5px;" data-toggle="modal" data-target="#Medium-modal"></i>
								
								<div class="modal fade" id="Medium-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
										<!-- <div class="modal-header"></div> -->
									<div class="modal-content">
										<div class="modal-body">
										 <div class="chat-list bg-light-gray">
										 <div class="chat-search select-People">
														
											</div>
										 	<div class="chat-search">
														<span class="ti-search"></span> 
														<input type="text"placeholder="Search Contact">
											</div>
											
										 		<div class="notification-list chat-notification-list customscroll">
														<ul>
															<li>
															<a href = "#">
															<img src="./resources/vendors/images/img.jpg" alt="">John Doe
															</a>
															</li>
															<li>
															<a href = "#">
															<img src="./resources/vendors/images/img.jpg" alt="">John Doe
															</a>
															</li>
															<li>
															<a href = "#">
															<img src="./resources/vendors/images/img.jpg" alt="">John Doe
															</a>
															</li>
															<li>
															<a href = "#">
															<img src="./resources/vendors/images/img.jpg" alt="">John Doe
															</a>
															</li>
															<li>
														</ul>
								<!-- 스크롤부분 --></div>
							<!-- 회색박스 --></div>	
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</div>
							</div>
							</div>
						</div>
						
						<div class="form-group row">
							<label class="col-sm-10 col-md-2 col-form-label">참조문서</label>
							<div class="col-sm-12 col-md-10">
								<input type="file" class="form-control">
								 
							</div>
						</div>

					</form>
				</div>
				<div class="html-editor pd-20 card-box mb-30">
					<textarea class="textarea_editor form-control border-radius-0" placeholder="Enter text ..."></textarea>
				</div>
			</div>
		</div>
			<button type="button" class="pd-20 btn btn-primary btn-lg"  style = "float: right; "onclick="location.href='/testweb/approval.do' ">결재작성</button>
	</div>
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/switchery/switchery.min.js"></script>
	<!-- bootstrap-tagsinput js -->
	<script src="./resources/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<!-- bootstrap-touchspin js -->
	<script src="./resources/src/plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script src="./resources/vendors/scripts/advanced-components.js"></script>
</body>
</html>