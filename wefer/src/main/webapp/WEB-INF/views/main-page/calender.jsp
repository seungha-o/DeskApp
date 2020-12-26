<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/main_calender.css">


<link href='./resources/packages/core/main.css' rel='stylesheet' />
<link href='./resources/packages/daygrid/main.css' rel='stylesheet' />
<link href='./resources/packages/timegrid/main.css' rel='stylesheet' />
<link href='./resources/packages/list/main.css' rel='stylesheet' />
<script src='./resources/packages/core/main.js'></script>
<script src='./resources/packages/interaction/main.js'></script>
<script src='./resources/packages/daygrid/main.js'></script>
<script src='./resources/packages/timegrid/main.js'></script>
<script src='./resources/packages/list/main.js'></script>

<title>Insert title here</title>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
			},
			defaultDate : '2019-08-12',
			navLinks : true, // can click day/week names to navigate views
			businessHours : true, // display business hours
			editable : true,
			events : [ {
				title : 'Business Lunch',
				start : '2019-08-03T13:00:00',
				constraint : 'businessHours'
			}, {
				title : 'Meeting',
				start : '2019-08-13T11:00:00',
				constraint : 'availableForMeeting', // defined below
				color : '#257e4a'
			}, {
				title : 'Conference',
				start : '2019-08-18',
				end : '2019-08-20'
			}, {
				title : 'Party',
				start : '2019-08-29T20:00:00'
			},

			// areas where "Meeting" must be dropped
			{
				groupId : 'availableForMeeting',
				start : '2019-08-11T10:00:00',
				end : '2019-08-11T16:00:00',
				rendering : 'background'
			}, {
				groupId : 'availableForMeeting',
				start : '2019-08-13T10:00:00',
				end : '2019-08-13T16:00:00',
				rendering : 'background'
			},

			// red areas where no events can be dropped
			{
				start : '2019-08-24',
				end : '2019-08-28',
				overlap : false,
				rendering : 'background',
				color : '#ff9f89'
			}, {
				start : '2019-08-06',
				end : '2019-08-08',
				overlap : false,
				rendering : 'background',
				color : '#ff9f89'
			} ]
		});
		calendar.render();
	});
</script>
</head>
<body>
<div id='calendar'></div>
<!--  부트스트랩 js 사용 -->
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>

</body>
</html>