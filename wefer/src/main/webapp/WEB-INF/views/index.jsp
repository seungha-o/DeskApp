<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<!-- Basic Page Info -->
<meta charset="utf-8">
<title>DeskApp</title>
<style>
.fc-event-time {
	display: none;
}

.fc-time {
	display: none;
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

<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
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
	<div class="main-container">
		<div class="footer-wrap pd-20 mb-20 card-box" id="lower_main" style="height: 5px;">
				<c:if test="${not empty avgString }">
					<div class="lower_bar">이번달 근무시간 : ${avgString} 시간</div>
				</c:if>
				<c:if test="${ empty avgString }">
					
				</c:if>
				<c:if test="${not empty today}">
				<c:forEach items="${today}" var="today">
					<div class="lower_bar">오늘 출근시간 : ${today.attend_gotowork}</div>
					<div class="lower_bar">오늘 퇴근시간 : ${today.attend_gotohome}</div>
				</c:forEach>
				</c:if>
				<c:if test="${empty today}">
				
					<div class="lower_bar">오늘 출근시간 : </div>
					<div class="lower_bar">오늘 퇴근시간 : </div>
				
				</c:if>
				<c:if test="${not empty worktime }">
					<div class="lower_bar">오늘 근무시간 : ${worktime}</div>
				</c:if>	
				<c:if test="${empty worktime }">
					<div class="lower_bar">오늘 근무시간 : </div>
				</c:if>	
			
			</div>
		
		
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
					<div id='calendar' style="width: 100%"></div>

				</div>
			</div>
			
			
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
              
              // ���� ����� ������ ����
              
           
          
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
