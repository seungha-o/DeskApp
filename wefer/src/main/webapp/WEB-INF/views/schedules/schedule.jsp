<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>


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

<script type="text/javascript">
	$(document).ready(function() {
		$("input:radio[name=deptName]").on('click', function() {
			alert("로그인후 사용가능");
			
		});
	});
</script>
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
      editable: false,
      editable: true,   
      eventLimit: false,
      events: [

     <c:forEach var="vo" items="${list}" varStatus="status">
 {	
		   title : "${vo.schedules_name}",
		   backgroundColor :"",
		   start : "${vo.schedules_std_date}",
		   end : "${vo.schedules_end_date}",
		   
		   },
     </c:forEach>
      ],eventColor: '#28305c'
    });

    calendar.render();
}); 	
})
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
							<br>
							&nbsp;<a href ="schedule.do?type=회사" style="font-weight: bold;">회사일정</a>&nbsp;&nbsp;
						    <a href ="schedule.do?type=1" style="font-weight: bold;">인사팀</a>&nbsp;&nbsp;
							<a href ="schedule.do?type=2" style="font-weight: bold;">경영팀</a>&nbsp;&nbsp;
							<a href ="schedule.do?type=3" style="font-weight: bold;">개발팀</a>&nbsp;&nbsp;
							<a href ="schedule.do?type=all" style="font-weight: bold;">전체일정</a>
						</div>
						<div id='calendar'></div>
					</div>
					<!--일정수정 -->
					<div id="modal-view-event"
						class="modal modal-top fade calendar-modal">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<form action="update_schedule.do" id="update_schedule"
									method="post">
									<div class="modal-body">
										<h4 class="text-blue h4 mb-10">일정수정</h4>
										<!-- 수정하세야 -->
										<input type="hidden" name="schedules_id" id="scid"> <input
											type="hidden" name="id" value="test1">
										<!--나중에쓰세요 <input type="hidden" name="id" value="${userID }">-->
										<input type="text" name="schedules_status" value="회사">
										<div class="form-group">
											<label>일정명</label> <input type="text" class="form-control"
												name="schedules_name" id="schedules_name">
										</div>
										<div class="form-group">
											<label>시작일</label> <input type='text'
												class="datetimepicker form-control" id="schedules_std_date"
												name="schedules_std_date">
										</div>
										<div class="form-group">
											<label>종료일</label> <input type='text'
												class="datetimepicker form-control" id="schedules_end_date"
												name="schedules_end_date">
										</div>
										<div class="form-group">
											<label>설명</label>
											<textarea class="form-control" name="schedules_content"
												id="schedules_content"></textarea>
										</div>
										<div class="form-group">
											<label>부서명</label> <select class="form-control"
												name="dept_no" id="dept_no">
												<option value="1">인사팀</option>
												<option value="2">경영팀</option>
												<option value="3">개발팀</option>
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
								<form action="add_schedule.do" id="add_schedule" method="post">
									<div class="modal-body">
										<h4 class="text-blue h4 mb-10">일정추가</h4>
										<!-- 수정하세야 -->
										<input type="hidden" name="schedules_id" value="0"> <input
											type="hidden" name="id" class="rid" value="test1">
										<!--나중에쓰세요 <input type="hidden" name="id" value="${userID }">-->
										<input type="text" name="schedules_status" value="회사">
										<div class="form-group">
											<label>일정명</label> <input type="text" class="form-control"
												name="schedules_name">
										</div>
										<div class="form-group">
											<label>시작일</label> <input type='text'
												class="datetimepicker form-control" id="schedules_std_date"
												name="schedules_std_date">
										</div>
										<div class="form-group">
											<label>종료일</label> <input type='text'
												class="datetimepicker form-control" id="schedules_end_date"
												name="schedules_end_date">
										</div>
										<div class="form-group">
											<label>설명</label>
											<textarea class="form-control" name="schedules_content"></textarea>
										</div>
										<div class="form-group">
											<label>부서명</label> <select class="form-control"
												name="dept_no">
												<option value="1">인사팀</option>
												<option value="2">경영팀</option>
												<option value="3">개발팀</option>
											</select>
										</div>
										<div class="form-group">

											<input type="hidden" value="color" name="schedules_color">

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
				// event dragging & resizing
				editable: true,
				// header
				header: {
					left: '',
					center: 'prev title next',
					right: 'today month,agendaWeek,agendaDay'
				},
				events: [
					   <c:forEach var="vo" items="${list}" varStatus="status">
					   {	
					  		title : "${vo.schedules_name}",
					  		start : "${vo.schedules_std_date}",
					  		end : "${vo.schedules_end_date}",
					  		className:"${vo.schedules_color}",
					  		content:"${vo.schedules_content}",
							backgroundColor : "${vo.schedules_color}",
							dept:"${vo.dept_no}",
							scid:"${vo.schedules_id}",
					  		  },
					       </c:forEach>
			
				],
				dayClick: function() {
					jQuery('#modal-view-event-add').modal();

				},
				eventClick: function(events, jsEvent, view) {
					//jQuery('#modal-view-event').modal();
					var evtt =events.title;
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
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script src="./resources/src/locale/ko.js"></script>
</body>
</html>
