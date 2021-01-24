<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>

<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="./resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="./resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="./resources/vendors/images/favicon-16x16.png">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/core.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/style.css">
	<link rel="stylesheet" type="text/css" href="./resources/src/plugins/fullcalendar/fullcalendar.css">


	

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
<style type="text/css">
#main_c{
	padding-bottom: 10px;
}

.lower_bar{
	display: inline-block;
	padding-left: 2vw;
	padding-right: 2vw;
	font-size: 1em;
	font-weight: bold ;
}
#lower_main{
	padding-top: 40px;
	padding-bottom: 40px;
}
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	
	
	
<div class="main-container" id="main_c">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="title">
								
						</div>
					</div>
				</div>
				<div class="pd-20 card-box mb-30">
					<div class="calendar-wrap">
						<div id='calendar'></div>
					</div>
					
				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box" id="lower_main">
				<c:if test="${not empty avgString }">
					<div class="lower_bar">이번달 근무시간 : ${avgString} 시간</div>
				</c:if>
				<c:if test="${ empty avgString }">
					
				</c:if>
				<c:forEach items="${today}" var="today">
					<div class="lower_bar">오늘 출근시간 : ${today.attend_gotowork}</div>
					<div class="lower_bar">오늘 퇴근시간 : ${today.attend_gotohome}</div>
				</c:forEach>
				<c:if test="${not empty worktime }">
					<div class="lower_bar">오늘 근무시간 : ${worktime}</div>
				</c:if>	
				<c:if test="${empty worktime }">
					<div class="lower_bar">출근 또는 퇴근되지 않았습니다.</div>
				</c:if>	
			
			</div>
		</div>
	</div>
	<!-- js -->

	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/fullcalendar/fullcalendar.min.js"></script>
	<!-- <script src="./resources/vendors/scripts/calendar-setting.js"></script> -->
	<script type="text/javascript">
	
	jQuery(document).ready(function(){
		jQuery("#add-event").submit(function(){
			alert("Submitted");
			var values = {};
			$.each($('#add-event').serializeArray(), function(i, field) {
				values[field.name] = field.value;
			});
			console.log(
				values
			);
		});
	});

	(function () {
		jQuery(function() {
			// page is ready
			jQuery('#calendar').fullCalendar({
				themeSystem: 'bootstrap4',
				// emphasizes business hours
				businessHours: false,
				defaultView: 'month',
				// event dragging & resizing
				editable: false,
				displayEventTime : false,
				// header
				header: {
					left: '',
					center: 'title',
					right: 'today prev,next'
				},
				events: [
					<c:forEach var="vo" items="${list}">
				{
					title : "출근시간 ${vo.attend_gotowork}\n\n퇴근시간 ${vo.attend_gotohome}\n",
					start : "${vo.attend_work_date}",
					end : "${vo.attend_work_date}",
					backgroundColor : "#d5eff4",
					textColor : "#000000"
				},
					</c:forEach>
				],
				dayClick: function() {
					jQuery('#modal-view-event-add').modal();
				},
				eventClick: function(event, jsEvent, view) {
					jQuery('.event-icon').html("<i class='fa fa-"+event.icon+"'></i>");
					jQuery('.event-title').html(event.title);
					jQuery('.event-body').html(event.description);
					jQuery('.eventUrl').attr('href',event.url);
					jQuery('#modal-view-event').modal();
				},
			})
	});

	})(jQuery);
	
	</script>
</body>
</html>