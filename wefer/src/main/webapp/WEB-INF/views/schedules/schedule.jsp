<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
 <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

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
	href="./resources/src/plugins/fullcalendar/fullcalendar.css">
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
<script type="text/javascript">

	$(document).ready(function() {
		$("input:radio[name=deptName]").on('click', function() {
			alert('로그인 후 이용 가능 합니다.');
		});

	});
</script>
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
								<h4>일정관리</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">일정관리</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<div class="pd-20 card-box mb-30">
					<div class="calendar-wrap">
						<div class="radio-wrap">
							<input type="radio" id="dept1" value="dept1" name="deptName"><label for="dept1">회사</label>&nbsp;&nbsp;
							<input type="radio" id="dept2" value="dept2" name="deptName"><label for="dept2">인사팀</label>&nbsp;&nbsp;
							<input type="radio" id="dept3" value="dept3" name="deptName"><label for="dept3">개발팀</label>&nbsp;&nbsp;
							<input type="radio" id="dept4" value="dept4" name="deptName"><label for="dept4">경영팀</label>&nbsp;&nbsp;
							<input type="radio" id="dept5" value="dept5" name="deptName"><label for="dept5">영업팀</label>&nbsp;&nbsp;
							<input type="radio" id="dept6" value="dept6" name="deptName"><label for="dept6">전체일정</label>&nbsp;&nbsp;
						</div>
						<div id='calendar'></div>
					</div>
					<!-- calendar modal 이벤트 정보보기 -->
					<div id="modal-view-event"
						class="modal modal-top fade calendar-modal">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-body">
									<h4 class="h4">
										<span class="event-icon weight-400 mr-3"></span><span
											class="event-title"></span>
									</h4>
									<div class="event-body"></div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 일정 추가 모달 -->
					<div id="modal-view-event-add"
						class="modal modal-top fade calendar-modal">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<form id="add-event">
									<div class="modal-body">
										<h4 class="text-blue h4 mb-10">일정추가</h4>
										<div class="form-group">
											<label>일정명</label> <input type="text" class="form-control"
												name="ename">
										</div>
										<div class="form-group">
											<label>시작일</label> <input type='text'
												class="datetimepicker form-control" name="edate">
										</div>
										<div class="form-group">
											<label>종료일</label> <input type='text'
												class="datetimepicker form-control" name="edate">
										</div>
										<div class="form-group">
											<label>설명</label>
											<textarea class="form-control" name="edesc"></textarea>
										</div>
										<div class="form-group">
											<label>부서명</label> <select class="form-control" name="ecolor">
												<option value="fc-bg-default">회사</option>
												<option value="fc-bg-blue">인사팀</option>
												<option value="fc-bg-lightgreen">개발팀</option>
												<option value="fc-bg-pinkred">영업팀</option>
												<option value="fc-bg-deepskyblue">전체</option>
											</select>
										</div>
										<div class="form-group">
											<label>색상</label> <select class="form-control" name="ecolor">
												<option value="fc-bg-default">기본색</option>
												<option value="fc-bg-blue">파랑</option>
												<option value="fc-bg-lightgreen">밝은녹색</option>
												<option value="fc-bg-pinkred">핑크레드</option>
												<option value="fc-bg-deepskyblue">짙은파랑</option>
											</select>
									</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-primary">저장</button>
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">닫기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box"></div>
		</div>
	</div>
	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script src="./resources/vendors/scripts/calendar-setting.js"></script>
	<script src="./resources/src/locale/ko.js"></script>
</body>
</html>