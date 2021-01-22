<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>ProfileForm</title>

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
	
<!-- Calendar CSS -->
<link rel="stylesheet" type="text/css"
	href="./resources/src/plugins/fullcalendar/fullcalendar.css">


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
$(function(){
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
	
  document.addEventListener('DOMContentLoaded', function() {
	 
    var calendarEl = document.getElementById('calendar');
	
    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
      },
      locale : "en",
      //defaultDate: "2019-08-22",
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      /* editable: false, */
      editable: true,   
      eventLimit: false,
      events: [
    	  <c:forEach var="vo" items="${list}" varStatus="status">
		   {	
			   title : "${vo.annual_content}",
			   title1:"${vo.annual_content}",
		  		start : "${vo.annual_stddate}", 
		  		end : "${vo.annual_enddate}" ,
		  		content:"${vo.annual_content}",
				dept:"${vo.annual_kind}",
				scid:"${vo.annual_id}"
		  		  },
		       </c:forEach> 	

      ],eventColor: '#28305c'
    });

    calendar.render();
}); 	
})
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
								<img src="./resources/vendors/images/photo1.jpg" alt="" class="avatar-photo">
								<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-centered" role="document">
										<div class="modal-content">
											<div class="modal-body pd-5">
												<div class="img-container">
													<img id="image" src="./resources/vendors/images/photo2.jpg" alt="Picture">
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
							<h5 class="text-center h5 mb-0">${profileList.name}</h5>
							<p class="text-center text-muted font-14">Lorem ipsum dolor sit amet</p>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">연락처 정보</h5>
								<ul>
								
									<li>
										<span>Email 주소:</span>
										${profileList.email}
									</li>
									<li>
										<span>핸드폰 번호:</span>
										${profileList.phone}
									</li>
									<li>
										<span>주소:</span>										
										${profileList.address}
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
											<a class="nav-link active" data-toggle="tab" href="#timeline" role="tab">Timeline</a>
										</li>						
										<li class="nav-item"> 
											<a class="nav-link" data-toggle="tab" href="#setting" role="tab">사원 개인 정보 수정  </a>
										</li>
										<li class="nav-item"> 
											<a class="nav-link" data-toggle="tab" href="#modify" role="tab">비밀번호 변경   </a>
										</li>
									</ul>
									<div class="tab-content">
									<!-- Timeline Tab start -->
										<div class="tab-pane fade show active" id="timeline" role="tabpanel">
											<div class="pd-20">
												<div class="profile-timeline">
													<div class="timeline-month">
														<h5>August, 2020</h5>
													</div>
													<div class="calendar-wrap">
														<div id='calendar'></div>
													</div>
													
													<div class="profile-timeline-list">
														<ul>
															<li>
																<div class="date">12 Aug</div>
																<div class="task-name"><i class="ion-android-alarm-clock"></i> Task Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
															<li>
																<div class="date">10 Aug</div>
																<div class="task-name"><i class="ion-ios-chatboxes"></i> Task Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
															<li>
																<div class="date">10 Aug</div>
																<div class="task-name"><i class="ion-ios-clock"></i> Event Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
															<li>
																<div class="date">10 Aug</div>
																<div class="task-name"><i class="ion-ios-clock"></i> Event Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
														</ul>
													</div>
													<div class="timeline-month">
														<h5>July, 2020</h5>
													</div>
													<div class="profile-timeline-list">
														<ul>
															<li>
																<div class="date">12 July</div>
																<div class="task-name"><i class="ion-android-alarm-clock"></i> Task Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
															<li>
																<div class="date">10 July</div>
																<div class="task-name"><i class="ion-ios-chatboxes"></i> Task Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
														</ul>
													</div>
													<div class="timeline-month">
														<h5>June, 2020</h5>
													</div>
													<div class="profile-timeline-list">
														<ul>
															<li>
																<div class="date">12 June</div>
																<div class="task-name"><i class="ion-android-alarm-clock"></i> Task Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
															<li>
																<div class="date">10 June</div>
																<div class="task-name"><i class="ion-ios-chatboxes"></i> Task Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
															<li>
																<div class="date">10 June</div>
																<div class="task-name"><i class="ion-ios-clock"></i> Event Added</div>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
																<div class="task-time">09:30 am</div>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<!-- Timeline Tab End -->
										<!-- Setting Tab start -->
										<div class="tab-pane fade height-100-p" id="setting" role="tabpanel">
											<div class="profile-setting">
												<form name ="profileModiForm" id ="frm" action ="UpdateProfile.do" method = "post">
													<ul class="profile-edit-list row">
														<li class="weight-500 col-md-6">
															<h4 class="text-blue h5 mb-20">개인 정보 수정 </h4>
														
															<div class="form-group">
																<label>사원번호 : ID</label>
															    <input name="id" class="form-control form-control-lg" type="text" readonly="readonly" value ="${profileList.id}">				
															</div>
															<div class="form-group">
																<label>성 명 </label>
																<input class="form-control form-control-lg" type="text" readonly="readonly" value ="${profileList.name}">
															</div>
															<div class="form-group">
																<label>부서명</label>
																<input class="form-control form-control-lg" type="text" readonly="readonly" value ="${profileList.dept_name}">
															</div>
															<div class="form-group">
																<label>직책</label>
																<input class="form-control form-control-lg" type="text" readonly="readonly" value ="${profileList.position}">
															</div>
															<div class="form-group">
																<label>Email</label>
																<input name="email" class="form-control form-control-lg" type="email" value ="${profileList.email}">
															</div>
																										
															<div class="form-group">
																<label>핸드폰 번호</label>
																<input name="phone" class="form-control form-control-lg" type="text" value ="${profileList.phone}">
															</div>
															<div class="form-group">
																<label>주소</label>
																<input name="address" type="text" class="form-control" maxlength="300" value="${profileList.address}" >
															</div>															
															
															<div class="form-group">
																<label>비밀번호 </label>
																<input name="password" class="form-control form-control-lg" type="password" placeholder="비밀번호가 일치되어야 정보가 수정">
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
										
										<!-- password Modify Tab start-->										
										<div class="tab-pane fade height-100-p" id="modify" role="tabpanel">
											<div class="profile-setting">
												<form name ="passModiForm" id ="frm" action ="UpdatePwProfile.do" method = "post">
													<ul class="profile-edit-list row">
														<li class="weight-500 col-md-6">
															<h4 class="text-blue h5 mb-20">비밀번호 변경 </h4>
														
															<input name="id" class="form-control form-control-lg" type="hidden" value ="${profileList.id}">				
															
															<div class="form-group">
																<label>기존 비밀번호 </label>
																<input name="passwordck" class="form-control form-control-lg" type="password" placeholder="기존 비밀번호">
															</div>
															<div class="form-group">
																<label>새로운 비밀번호 </label>
																<input name="password" class="form-control form-control-lg" type="password" placeholder="새로운 비밀번호">
															</div>
															<div class="form-group mb-0">
																<input type="submit" class="btn btn-primary" value="비밀번호 변경">
															</div>
														</li>
													</ul>
												</form>
											</div>
										</div>
										<!-- password Modify  Tab End -->
																													
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
	<script>
	$(function() {
		jQuery(function() {
			// page is ready
			jQuery('#calendar').fullCalendar({
				themeSystem: 'bootstrap4',
				// emphasizes business hours
				businessHours: false,
				defaultView: 'month',
				// event dragging & resizing
				editable: true,
				// 일정표시할 때 시간 보여줄지 말지 결정함.
				
				displayEventTime : false,
				// header
				header: {
					left: '',
					center: 'prev title next',
					right: 'today month,agendaWeek,agendaDay'
				},
				events: [
					   <c:forEach var="vo" items="${list}" varStatus="status">
					   {	
						   title : "<휴가>",
						   title1:"${vo.annual_content}",
					  		start : "${vo.annual_stddate}", 
					  		end : "${vo.annual_enddate}" ,
					  		content:"${vo.annual_content}",
							dept:"${vo.annual_kind}",
							scid:"${vo.annual_id}"
					  		  },
					       </c:forEach>
			
				],
				dayClick: function() {
					jQuery('#modal-view-event-add').modal();

				},
				eventClick: function(events, jsEvent, view) {
					//jQuery('#modal-view-event').modal();
					var evtt =events.title1;
					$("#schedules_name").val(evtt);
					$("#schedules_std_date").val(events.start);
					$("#schedules_end_date").val(events.end);
					$("#schedules_content").val(events.content);
					$("#schedules_color").val(events.className).prop("selected", true);
					$("#dept_no").val(events.dept).prop("selected", true);
					$("#scid").val(events.scid);
					$("#hcid").val(events.scid);

					
					jQuery('#modal-view-event').modal();
					$("#schedules_name").val(evtt);
			/* 		 eventClick: function (event, jsEvent, view) {
						    editEvent(event);
						  } */
				},
			})
	});
              $("#add_schedule").submit(function(){
            	   var sValue = $("#schedules_std_date").val();
            	   var eValue = $("#schedules_end_date").val();
                   $("#schedules_std_date").val(moment(sValue).format('YYYY-MM-DDTHH:mm:ss'));
                   $("#schedules_end_date").val(moment(eValue).format('YYYY-MM-DDTHH:mm:ss'));
              })
              $("#update_schedule").submit(function(){
            	   var sValue = $("#schedules_std_date").val();
            	   var eValue = $("#schedules_end_date").val();
                   $("#schedules_std_date").val(moment(sValue).format('YYYY-MM-DDTHH:mm:ss'));
                   $("#schedules_end_date").val(moment(eValue).format('YYYY-MM-DDTHH:mm:ss'));
              })
              
              // 현재 변경된 데이터 셋팅
          
           });
	
	</script>
		<!-- js -->



	<!-- js -->
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

