<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.fc-event-time {
	display: none;
}

.fc-time {
	display: none;
}</style>
<meta charset="UTF-8">
<title>주소록 사원 연락처 보기</title>
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
<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/src/plugins/fullcalendar/fullcalendar.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/style.css">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
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
							<div class="profile-photo" style="margin-bottom: 80px;">
								
								<img src="${pageContext.request.contextPath}/resources/profileImg/${personerProfileList.profile}" alt="">
								<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-body pd-5">
												<div class="img-container">
													<img id="image" src="${pageContext.request.contextPath}/resources/profileImg/${personerProfileList.profile}" alt="">
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
							
						<h5 class="text-center h5 mb-0">${personerProfileList.name}</h5>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">연락처 정보</h5>
								<ul>
								
									<li>
										<span>Email 주소:</span>
										${personerProfileList.email}
									</li>
									<li>
										<span>핸드폰 번호:</span>
										${personerProfileList.phone}
									</li>
									<li>
										<span>주소:</span>										
										${personerProfileList.address}
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
											<a class="nav-link active" data-toggle="tab" href="#timeline" role="tab" id="calbtn">개인정보열람</a>
										</li>						
										<li class="nav-item"> 
											<a class="nav-link" data-toggle="tab" href="#setting" role="tab" id="etcbtn">기타 </a>
										</li>
									</ul>
									<div class="tab-content">
										<div class="calendar-wrap" style="width:100% ">
														<div id='calendar'></div>
													</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>

	<!-- js -->
		
	<script type="text/javascript">
	$(function(){
		$("#etcbtn").click(function(){
			$(".calendar-wrap").css("display","none");
		})
		$("#calbtn").click(function(){
			
			$(".calendar-wrap").css("display","block");

		})
	})
	$(function() {
		jQuery(function() {
			// page is ready
			jQuery('#calendar').fullCalendar({
				themeSystem: 'bootstrap4',
				// emphasizes business hours
				businessHours: false,
				defaultView: 'month',
				/* // event dragging & resizing */
				editable: false,
				// ����ǥ���� �� �ð� �������� ���� ������.
				
				displayEventTime : true,
			      plugins: [ 'interaction', 'dayGrid' ],

				// header
				header: {
					left: '',
					center: 'prev title next',
					right: 'today',
				},
				events: [
					   <c:forEach var="vo" items="${list}" varStatus="status">
					   {	
						   title : "<휴가>",
						   title1:"${vo.annual_content}",
					  		start : "${vo.annual_stddate}", 
					  		end : "${vo.annual_enddate}" ,
					  		content:"${vo.annual_content}",
							borderColor:'white',
							dept:"${vo.annual_kind}",
							scid:"${vo.annual_id}"
					  		  },
					       </c:forEach>
					  		   <c:forEach var="vo" items="${list2}" varStatus="status">
							   {	
								    title : "${vo.schedules_name}",
							  		start : "${vo.schedules_std_date}", 
							  		end : "${vo.schedules_end_date}" ,
							  		className:"${vo.schedules_color}",
							  		content:"${vo.schedules_content}",
									backgroundColor : "${vo.schedules_color}",
									dept:"${vo.dept_no}",
									borderColor:'white',

									scid:"${vo.schedules_id}",
							  		  },
							       </c:forEach>
				],
			})
	});
              
              
           
          
           });
	
	</script>
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
	<!-- calendar js  -->
	<script src="./resources/src/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script src="./resources/src/locale/ko.js"></script>
</body>
</html>

