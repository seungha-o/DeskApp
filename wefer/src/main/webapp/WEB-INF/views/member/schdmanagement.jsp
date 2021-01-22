<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>


<!-- Basic Page Info -->
<meta charset="utf-8">
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>
<style>
.fc-event-time{
   display : none;
}
.fc-time{
   display : none;
}
</style>

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
<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/src/plugins/fullcalendar/fullcalendar.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/style.css">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>


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
								<h4>휴가관리</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">휴가관리</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<div class="pd-20 card-box mb-30">
					<div class="calendar-wrap">
						<div id='calendar'></div>
					</div>
					<!--일정수정 -->
					<div id="modal-view-event"
						class="modal modal-top fade calendar-modal">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<form action="update_scheduleSc.do" id="update_schedule"
									method="post">
									<div class="modal-body">`
										<h4 class="text-blue h4 mb-10">일정수정</h4>
										<!-- 수정하세야 -->
										<input type="hidden" name="annual_id" id="scid"> <input
											type="hidden" name="id" value="${loginId}" required="required">
													<input type="hidden" name="write_date"> 
										<!--나중에쓰세요 <input type="hidden" name="id" value="${userID }">-->
										<div class="form-group">
											<label>휴가사유</label> <input type="text" class="form-control"
												name="annual_content" id="schedules_name" required="required">
										</div>
										<div class="form-group">
											<label>시작일</label> <input type='text' class="datetimepicker form-control" id="schedules_std_date"
												name="annual_stddate" autocomplete="off" required="required">
										</div>
										<div class="form-group">
											<label>종료일</label> <input type='text' class="datetimepicker form-control" id="schedules_end_date"
												name="annual_enddate" autocomplete="off" required="required">
										</div>	
										<div class="form-group">
											<label>휴가구분</label> <select class="form-control"
												name="annual_kind" id="dept_no">
												<option value="월차">월차</option>
												<option value="반차">반차</option>
											</select>
										</div>

										<div class="modal-footer">
											<button type="submit" class="btn btn-primary">저장</button>
											<input type="hidden" id="hcid" name="scid">
											<button type="button" class="btn btn-primary" id="delBtn">삭제</button>
											<button type="button" class="btn btn-primary"
												data-dismiss="modal">닫기</button>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>
<!------------------------------------------------------------------------------------------------------------------------------------------------>
					<!-- 일정 추가 모달 -->
					<div id="modal-view-event-add"
						class="modal modal-top fade calendar-modal">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<form action="insert_scheduleSc.do" id="add_schedule" method="post">
									<div class="modal-body">
										<h4 class="text-blue h4 mb-10">일정수정</h4>
										<!-- 수정하세야 -->
										<input type="hidden" name="annual_id" id="scid"> <input
											type="hidden" name="id" value="${loginId}">
													<input type="hidden" name="write_date"> <input
											type="hidden" name="id" value="${loginId}">
										<!--나중에쓰세요 <input type="hidden" name="id" value="${userID }">-->
										<div class="form-group">
											<label>휴가사유</label> <input type="text" class="form-control"
												name="annual_content" id="schedules_name" required="required">
										</div>
										<div class="form-group">
											<label>시작일</label> <input type='text' class="datetimepicker form-control" id="schedules_std_date1"
												name="annual_stddate" autocomplete="off" required="required">
										</div>
										<div class="form-group">
											<label>종료일</label> <input type='text' class="datetimepicker form-control" id="schedules_end_date1"
												name="annual_enddate" autocomplete="off" required="required">
										</div>	
										<div class="form-group">
											<label>휴가구분</label> <select class="form-control"
												name="annual_kind" id="dept_no" required="required">
												<option value="월차">월차</option>
												<option value="반차">반차</option>
											</select>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-primary">저장</button>
											<button type="button" class="btn btn-primary"
												data-dismiss="modal">닫기</button>
										</div>
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
	<script>
	$(function() {
		jQuery(function() {
			// page is ready
			jQuery('#calendar').fullCalendar({
				themeSystem: 'bootstrap4',
				// emphasizes business hours
				businessHours: false,
				defaultView: 'month',
				//event dragging & resizing
				editable: false,
				// 일정표시할 때 시간 보여줄지 말지 결정함.
				/* displayEventTime : false, */
				
				 axisFormat:'hh',
			        timeFormat: 'HH:mm',
			        lang: 'ko',
			        header: false, 
			      plugins: [ 'interaction', 'dayGrid' ],

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
				dayClick: function(date,jsEvent, view) {
					
				},
				borderColor:"white",
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
            	   var sValue = $("#schedules_std_date1").val();
            	   var eValue = $("#schedules_end_date1").val();
                   $("#schedules_std_date1").val(moment(sValue).format('YYYY-MM-DD'));
                   $("#schedules_end_date1").val(moment(eValue).format('YYYY-MM-DD'));
              })
              $("#update_schedule").submit(function(){
            	   var sValue = $("#schedules_std_date").val();
            	   var eValue = $("#schedules_end_date").val();
                   $("#schedules_std_date").val(moment(sValue).format('YYYY-MM-DD'));
                   $("#schedules_end_date").val(moment(eValue).format('YYYY-MM-DD'));
              })
              
              // 현재 변경된 데이터 셋팅
              
           
          
           });
	$(function(){	
		$(".fc-day-grid-event").click(function(){
			alert(";ddddwoo2mmdo");
		})
	})
	
	$(function(){
		$("#delBtn").click(function(){
		var scid = $(this).prev().val();

		location.href="delete_schedule.do?scid="+scid
				
		})
	})
	</script>
	<script src="./resources/src/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script src="./resources/src/locale/ko.js"></script>
</body>
</html>
