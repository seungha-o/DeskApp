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
<style>
.nav-link {
	background-color: white !important;
	color: blue !important;
}

.centered {
	width: 100%;
	position: relative;
	list-style: none;
}

.card-box {
	position: relative;
	height: 100%;
	width: 23%;
	float: left;
	margin-bottom: 30px;
	margin: auto;
}

.list {
	width: 100%;
	position: relative;
	list-style: none;
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
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

				<div class="tab">
					<ul class="nav nav-pills  centered" role="tablist">
						<li class="pd-20 card-box">
							<h5 class="nav-link active " data-toggle="tab" href="#home5"
								role="tab" aria-selected="true">수신받은 결재</h5>
						</li>
						<li class="pd-20 card-box">
							<h5 class="nav-link " data-toggle="tab" href="#profile5"
								role="tab" aria-selected="false">발신한 결재</h5>
						</li>
						<li class="pd-20 card-box">
							<h5 class="nav-link " data-toggle="tab" href="#contact5"
								role="tab" aria-selected="false">수신참조된 결재</h5>
						</li>
						<li class="pd-20 card-box">
							<h5 class="nav-link" data-toggle="tab" href="#con5" role="tab"
								aria-selected="false">모든 결재</h5>
						</li>
					</ul>

					<div class="tab-content">

						<div class="tab-pane fade show active" id="home5" role="tabpanel">

							<div class="pd-20 card-box list ">
								<table class="checkbox-datatable table nowrap">
									<thead>
										<tr>
											<th><div class="dt-checkbox">
													<input type="checkbox" name="select_all" value="1"
														id="example-select-all"> <span
														class="dt-checkbox-label"></span>
												</div></th>
											<th>Name</th>
											<th>Office</th>
											<th>title</th>
											<th>Date</th>
										</tr>
									</thead>
									<tbody>
										<tr><td></td>
											<td>김땡떙</td>
											<td>marketing</td>
											<td><a href = "#" onclick="location.href='/wefer/apprDetail.do'">2829 Trainer Avenue Peoria</a></td>
											<td>29-10-2020</td>
										</tr>
										<tr><td></td>
											<td>이세모</td>
											<td>developer</td>
											<td>Trainer Avenue Peoria, IL 61602</td>
											<td>29-11-2020</td>
										</tr>
										<tr><td></td>
											<td>박동글</td>
											<td>developer</td>
											<td>2829 sdfsdf Trainer Avenue Peoria, IL 61602</td>
											<td>29-12-2020</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="tab-pane fade" id="profile5" role="tabpanel">
							<div class="pd-20 card-box list ">
								<table class="checkbox-datatable table nowrap">
									<thead>
										<tr>
											<th><div class="dt-checkbox">
													<input type="checkbox" name="select_all" value="1"
														id="example-select-all"> <span
														class="dt-checkbox-label"></span>
												</div></th>
											<th>Name</th>
											<th>Office</th>
											<th>title</th>
											<th>Date</th>
										</tr>
									</thead>
									<tbody>
										<tr><td></td>
											<td>김땡떙</td>
											<td>marketing</td>
											<td><a href = "#" onclick="location.href='/wefer/apprDetail.do'">2829 Trainer Avenue Peoria</a></td>
											<td>29-10-2020</td>
										</tr>
										<tr><td></td>
											<td>이세모</td>
											<td>developer</td>
											<td>Trainer Avenue Peoria, IL 61602</td>
											<td>29-11-2020</td>
										</tr>
										<tr><td></td>
											<td>박동글</td>
											<td>developer</td>
											<td>2829 sdfsdf Trainer Avenue Peoria, IL 61602</td>
											<td>29-12-2020</td>
										</tr>
										<tr><td></td>
											<td>박동글</td>
											<td>developer</td>
											<td>2829 sdfsdf Trainer Avenue Peoria, IL 61602</td>
											<td>29-12-2020</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="contact5" role="tabpanel">
							<div class="pd-20 card-box list ">
								<table class="checkbox-datatable table nowrap">
									<thead>
										<tr>
											<th><div class="dt-checkbox">
													<input type="checkbox" name="select_all" value="1"
														id="example-select-all"> <span
														class="dt-checkbox-label"></span>
												</div></th>
											<th>Name</th>
											<th>Office</th>
											<th>title</th>
											<th>Date</th>
										</tr>
									</thead>
									<tbody>
										<tr><td></td>
											<td>김땡떙</td>
											<td>marketing</td>
											<td><a href = "#" onclick="location.href='/wefer/apprDetail.do'">2829 Trainer Avenue Peoria</a></td>
											<td>29-10-2020</td>
										</tr>
										<tr><td></td>
											<td>이세모</td>
											<td>developer</td>
											<td>Trainer Avenue Peoria, IL 61602</td>
											<td>29-11-2020</td>
										</tr>
										<tr><td></td>
											<td>박동글</td>
											<td>developer</td>
											<td>2829 sdfsdf Trainer Avenue Peoria, IL 61602</td>
											<td>29-12-2020</td>
										</tr>
										<tr><td></td>
											<td>박동글</td>
											<td>developer</td>
											<td>2829 sdfsdf Trainer Avenue Peoria, IL 61602</td>
											<td>29-12-2020</td>
										</tr>
										<tr><td></td>
											<td>박동글</td>
											<td>developer</td>
											<td>2829 sdfsdf Trainer Avenue Peoria, IL 61602</td>
											<td>29-12-2020</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane fade" id="con5" role="tabpanel">
							<div class="pd-20 card-box list ">
								<table class="checkbox-datatable table nowrap">
									<thead>
										<tr>
											<th><div class="dt-checkbox">
													<input type="checkbox" name="select_all" value="1"
														id="example-select-all"> <span
														class="dt-checkbox-label"></span>
												</div></th>
											<th>Name</th>
											<th>Office</th>
											<th>title</th>
											<th>Date</th>
										</tr>
									</thead>
									<tbody>
										<tr><td></td>
											<td>이세모</td>
											<td>developer</td>
											<td>Trainer Avenue Peoria, IL 61602</td>
											<td>29-11-2020</td>
										</tr>
										<tr><td></td>
											<td>박동글</td>
											<td>developer</td>
											<td>2829 sdfsdf Trainer Avenue Peoria, IL 61602</td>
											<td>29-12-2020</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<button type="button" class="pd-20 btn btn-primary btn-lg"
			style="float: right;" onclick="location.href='/wefer/apprForm.do' ">결재작성</button>
	</div>
	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<!-- buttons for Export datatable -->
	<script
		src="./resources/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
	<script src="./resources/vendors/scripts/datatable-setting.js"></script>
</body>
</html>