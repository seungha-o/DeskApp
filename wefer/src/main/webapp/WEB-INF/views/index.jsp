<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" sizes="180x180"
	href="./resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./resources/vendors/images/favicon-16x16.png">
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="./resources/src/plugins/fullcalendar/fullcalendar.css">
<title>wefer</title>
</head>

<style>
.fc-event-time {
	display: none;
}

.fc-time {
	display: none;
}
</style>

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
									<li class="breadcrumb-item active" aria-current="page">blank</li>
								</ol>
							</nav>
						</div>
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#"
									role="button" data-toggle="dropdown"> January 2018 </a>
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Export List</a> <a
										class="dropdown-item" href="#">Policies</a> <a
										class="dropdown-item" href="#">View Assets</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
					<div id='calendar' style="width: 40%"></div>

				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a
					href="https://github.com/dropways" target="_blank">Ankit
					Hingarajiya</a>
			</div>
		</div>
	</div>
	<!-- js -->
	<script>
		$(function() {
			jQuery(function() {
				// page is ready
				jQuery('#calendar').fullCalendar(
						{
							themeSystem : 'bootstrap4',
							// emphasizes business hours
							businessHours : false,
							defaultView : 'month',
							/* // event dragging & resizing */
							editable : false,
							// ����ǥ���� �� �ð� �������� ���� ������.

							displayEventTime : true,
							plugins : [ 'interaction', 'dayGrid' ],

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

				location.href = "delete_schedule.do?scid=" + scid

			})
		})
	</script>
	<script src="./resources/src/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script src="./resources/src/locale/ko.js"></script>
</body>
</html>
