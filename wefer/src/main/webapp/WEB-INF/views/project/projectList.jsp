<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>approval</title>

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



<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

			<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>blank</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">프로젝트</li>
								</ol>
							</nav>
						</div>
						
					</div>
				</div>
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">

					<div class="pd-20 card-box mb-30">
						<div class="clearfix mb-20">
							
							<div class="pull-left">
								<h4 class="text-blue h4">"정현봉"님의 진행중인 프로젝트</h4>
							</div>
							<div class="pull-right">
								<a href="#" class="btn-block" data-toggle="modal" data-target="#bd-example-modal-lg" type="button">
									프로젝트 생성
								</a>
								<div class="modal fade bs-example-modal-lg" id="bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title" id="myLargeModalLabel">Large modal</h4>
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											</div>
											<div class="modal-body">
												<form>
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">프로젝트 명</label>
														<div class="col-sm-12 col-md-10">
															<input class="form-control" type="text" placeholder="Johnny Brown">
														</div>
													</div>
										
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">대표컬러</label>
														<div class="col-sm-12 col-md-10">
															<input class="form-control" value="#563d7c" type="color">
														</div>
													</div>
													
											
													
											
												
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">시작일</label>
														<div class="col-sm-12 col-md-10">
															<input class="form-control date-picker" placeholder="Select Date" type="text">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">종료일</label>
														<div class="col-sm-12 col-md-10">
															<input class="form-control date-picker" placeholder="Select Date" type="text">
														</div>
													</div>
													<hr>

													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">프로젝트 역할</label>
														<div class="col-sm-12 col-md-10">
															<input class="form-control" type="text" placeholder="Johnny Brown">
														</div>
													</div>
												
												
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">인원</label>
														<div class="col-sm-12 col-md-10">
															<div class="form-group">
																
																<select class="selectpicker form-control" data-style="btn-outline-primary" data-size="5">
																	<optgroup label="Condiments" data-max-options="2">
																		<option>Mustard</option>
																		<option>Ketchup</option>
																		<option>Relish</option>
																	</optgroup>
																	<optgroup label="Breads" data-max-options="2">
																		<option>Plain</option>
																		<option>Steamed</option>
																		<option>Toasted</option>
																	</optgroup>
																</select>
															</div>
														</div>
													</div>                                               
													<div class="prj-add-btn" style="display: flex; justify-content: flex-end;">
														<button type="button" class="btn btn-light">추가하기</button>
													</div>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
												<button type="button" class="btn btn-primary">Save changes</button>
											</div>
										</div>
									</div>
								</div>
								
								
							</div>
						</div>


						
						
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">프로젝트</th>
									<th scope="col">참여인원</th>
									<th scope="col">마감일</th>
									<th scope="col">진행도</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
									<td>
										<div class="progress mb-20">
											<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 50%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
									<td>
										<div class="progress mb-20">
											<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 50%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>@twitter</td>
									<td>
										<div class="progress mb-20">
											<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 50%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="collapse-box collapse" id="basic-table">
							<div class="code-box">
								<div class="clearfix">
									<a href="javascript:;" class="btn btn-primary btn-sm code-copy pull-left"
										data-clipboard-target="#basic-table-code"><i class="fa fa-clipboard"></i> Copy
										Code</a>
									<a href="#basic-table" class="btn btn-primary btn-sm pull-right collapsed"
										rel="content-y" data-toggle="collapse" role="button" aria-expanded="false"><i
											class="fa fa-eye-slash"></i> Hide Code</a>
								</div>
								<pre><code class="xml copy-pre hljs" id="basic-table-code">
									<span class="hljs-tag">&lt;<span class="hljs-name">table</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"table"</span>&gt;</span>
									<span class="hljs-tag">&lt;<span class="hljs-name">thead</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">th</span> <span class="hljs-attr">scope</span>=<span class="hljs-string">"col"</span>&gt;</span>#<span class="hljs-tag">&lt;/<span class="hljs-name">th</span>&gt;</span>
										<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
									<span class="hljs-tag">&lt;/<span class="hljs-name">thead</span>&gt;</span>
									<span class="hljs-tag">&lt;<span class="hljs-name">tbody</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">th</span> <span class="hljs-attr">scope</span>=<span class="hljs-string">"row"</span>&gt;</span>1<span class="hljs-tag">&lt;/<span class="hljs-name">th</span>&gt;</span>
										<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
									<span class="hljs-tag">&lt;/<span class="hljs-name">tbody</span>&gt;</span>
									<span class="hljs-tag">&lt;/<span class="hljs-name">table</span>&gt;</span>
								</code></pre>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a href="https://github.com/dropways" target="_blank">Ankit
					Hingarajiya</a>
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/jquery-steps/jquery.steps.js"></script>
	<script src="./resources/vendors/scripts/steps-setting.js"></script>

		<!-- switchery js -->
		<script src="./resources/src/plugins/switchery/switchery.min.js"></script>
		<!-- bootstrap-tagsinput js -->
		<script src="./resources/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
		<!-- bootstrap-touchspin js -->
		<script src="./resources/src/plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
		<script src="./resources/vendors/scripts/advanced-components.js"></script>
</body>

</html>