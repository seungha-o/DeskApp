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
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="title">
								<h4>Profile</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Profile</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
						<div class="pd-20 card-box height-100-p">
							<div class="profile-photo">
								<a href="modal" data-toggle="modal" data-target="#modal" class="edit-avatar"><i class="fa fa-pencil"></i></a>
								<img src="vendors/images/photo1.jpg" alt="" class="avatar-photo">
								<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-body pd-5">
												<div class="img-container">
													<img id="image" src="vendors/images/photo2.jpg" alt="Picture">
												</div>
											</div>
											<div class="modal-footer">
												<input type="submit" value="Update" class="btn btn-primary">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h5 class="text-center h5 mb-0">Ross C. Lopez</h5>
							<p class="text-center text-muted font-14">Lorem ipsum dolor sit amet</p>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">연락처 정보</h5>
								<ul>
									<li>
										<span>Email 주소:</span>
										FerdinandMChilds@test.com
									</li>
									<li>
										<span>핸드폰 번호:</span>
										619-229-0054
									</li>
									<li>
										<span>출신국:</span>
										미국
									</li>
									<li>
										<span>주소:</span>
										1807 Holden Street<br>
										San Diego, CA 92115
									</li>
								</ul>
							</div>
							
			
						
						</div>
					</div>
					<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
						<div class="card-box height-100-p overflow-hidden">
							<div class="profile-tab height-100-p">
								<div class="tab height-100-p">
									<ul class="nav nav-tabs customtab" role="tablist">
																	
										<li class="nav-item"> 
											<a class="nav-link" data-toggle="tab" href="#setting" role="tab">개인 정보 설정 </a>
										</li>
									</ul>
									<div class="tab-content">
									
										<!-- Setting Tab start -->
										<div class="tab-pane fade height-100-p" id="setting" role="tabpanel">
											<div class="profile-setting">
												<form>
													<ul class="profile-edit-list row">
														<li class="weight-500 col-md-6">
															<h4 class="text-blue h5 mb-20">개인 정보 설정 </h4>
															<div class="form-group">
																<label>사원번호 : ID</label>
																<input class="form-control form-control-lg" type="text">
															</div>
															<div class="form-group">
																<label>성 명 </label>
																<input class="form-control form-control-lg" type="text">
															</div>
															<div class="form-group">
																<label>부서명</label>
																<input class="form-control form-control-lg" type="text">
															</div>
															<div class="form-group">
																<label>직책</label>
																<input class="form-control form-control-lg" type="text">
															</div>
															<div class="form-group">
																<label>Email</label>
																<input class="form-control form-control-lg" type="email">
															</div>
															<div class="form-group">
																<label>생년월일</label>
																<input class="form-control form-control-lg date-picker" type="text">
															</div>
															<div class="form-group">
																<label>성별</label>
																<div class="d-flex">
																<div class="custom-control custom-radio mb-5 mr-20">
																	<input type="radio" id="customRadio4" name="customRadio" class="custom-control-input">
																	<label class="custom-control-label weight-400" for="customRadio4">남자</label>
																</div>
																<div class="custom-control custom-radio mb-5">
																	<input type="radio" id="customRadio5" name="customRadio" class="custom-control-input">
																	<label class="custom-control-label weight-400" for="customRadio5">여자</label>
																</div>
																</div>
															</div>
															<div class="form-group">
																<label>시군구(지역)</label>
																<input class="form-control form-control-lg" type="text">
															</div>
															<div class="form-group">
																<label>우편번호</label>
																<input class="form-control form-control-lg" type="text">
															</div>
															<div class="form-group">
																<label>핸드폰 번호</label>
																<input class="form-control form-control-lg" type="text">
															</div>
															<div class="form-group">
																<label>주소</label>
																<textarea class="form-control"></textarea>
															</div>															
															<div class="form-group">
																<div class="custom-control custom-checkbox mb-5">
																	<input type="checkbox" class="custom-control-input" id="customCheck1-1">
																	<label class="custom-control-label weight-400" for="customCheck1-1">알림 이메일 수신에 동의합니다</label>
																</div>
															</div>
															<div class="form-group">
																<label>비밀번호 </label>
																<input class="form-control form-control-lg" type="passward">
															</div>
															<div class="form-group mb-0">
																<input type="submit" class="btn btn-primary" value="정보수정">
															</div>
														</li>
														
														
													</ul>
												</form>
											</div>
										</div>
										<!-- Setting Tab End -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a href="https://github.com/dropways" target="_blank">Ankit Hingarajiya</a>
			</div>
		</div>
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

