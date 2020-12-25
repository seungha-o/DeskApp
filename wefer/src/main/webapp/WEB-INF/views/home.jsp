<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='./resources/packages/core/main.css' rel='stylesheet' />
<link href='./resources/packages/daygrid/main.css' rel='stylesheet' />
<link href='./resources/packages/timegrid/main.css' rel='stylesheet' />
<link href='./resources/packages/list/main.css' rel='stylesheet' />
<script src='./resources/packages/core/main.js'></script>
<script src='./resources/packages/interaction/main.js'></script>
<script src='./resources/packages/daygrid/main.js'></script>
<script src='./resources/packages/timegrid/main.js'></script>
<script src='./resources/packages/list/main.js'></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>WEPER MAIN</title>

<style>
header {
	background-color: #4575C2;
	width: 100%;
	height: 60px;
	margin: 0 auto;
	text-align: -webkit-auto;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 300px;
	overflow-y: hidden;
	padding-top: 20px;
}
header > #logo_wrap {
    height: 60px;
  width: 300px;
  position: fixed;
  top: 0;
  left: 0;
background-color: rgb(69, 117, 194); 
    padding-top: 20px;
    text-align: center;
    
}
header > #work_wrap {
  width: 300px;
  position: fixed;
  top: 0;
  right: 0;
  background-color: rgb(69, 117, 194); 
    padding-top: 10px;

   
}
header > #work_wrap > form{ 
      float: left;
      margin-right : 30px;
      margin-left: 30px;
}

header>span {
	cursor: pointer;
	color: rgb(230, 240, 255);
	font-weight: bold;
	font-size: large;
	margin: 65px;
}

header>span * {
	height: 60%;
	display: inline-block;
}

header>span>form {
	height: 70px;
	width: 30px;
}
header>span>form > #work {
	font-size : 20px;
}

.sidenav {
	height: 100%;
	width: 300px;
	position: fixed;
	z-index: 1;
	top: 60px;
	left: 0;
	background-color: #bdbdbd;
	overflow-x: hidden;
	padding-top: 20px;
}

.sidenav .nav_list #logo {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	color: black;
	display: block;
	text-align: center;
	font-size : 400%;
}
.sidenav .nav_list  #gotomypage {
	padding: 6px 8px 6px 16px;
		text-align: center;
}
.sidenav .nav_list  #gotomypage img {
width: 80px; height: 80px; padding: 10px; margin-left: auto;
	margin-right: auto;
}
.sidenav #member_pic {
	width: 150px;
	height: 150px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	padding : 10px;
}
.sidenav .now_member {
	text-align: center;
	font-size :150%;
}

.sidenav2 {
	height: 100%;
	width: 300px;
	position: fixed;
	z-index: 1;
	top: 60px;
	right: 0;
	background-color: #bdbdbd;
	overflow-x: hidden;
	padding-top: 20px;
}
.sidenav2 .board{
   list-style-type: square;
    font-size: 150%;
	margin : 25px;
    }
section {
    height: 100%;
	background-color: #bdbdbd;
	left: 300px;
	margin-left: 300px;
	

}
section #sectionTop{
  float:left;
  margin-top: 70px;

}

section #calendar {
    float:left;
	max-width: 700px;
	max-height: 300px;
	padding: 50px;
}
section #calendar {
    float:left;
	max-width: 700px;
	max-height: 300px;
	padding: 50px;
}
section #alret{
	float:left;
	width: 500px;
	max-height: 500px;
	padding: 20px;
}

section #alret .dot {
  height: 5px;
  width: 5px;
  background-color: red;
  border-radius: 50%;
  display: inline-block;
}
.content { padding-top: 700px ;  }
.content .post { border: 3px solid; border-radius: 15px; padding : 20px; margin : 20px;     width: 100%}
.content .post a { text-decoration: none;   }
.content .post h1 {
    color: #000;
    font-size: 50x;
    font-weight: 400;
}

</style>


<script type="text/javascript">
var change = function(){
	var elem = document.getElementById("work");
	
	if (elem.value=="출근")   {
   	alert ("출근 확인되었습니다.");
  	elem.value = "퇴근";
   } 
	else {
       var conf =  confirm ("퇴근하시겠습니까 현재시간은 TO_CHAR(SYSDATE, 'HH:MI:SS') 입니다.");
       if (conf)
  	   elem.value = "출근";
       else 
       elem.value = "퇴근";
  }
 
}
</script>
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
<script>
$(document).ready(function(){
  $(".list-group-item").click(function(){
	  var alert = document.querySelector('.list-group-item');
	  var dot = $(this).children
	  console.log($(this));
	  $(this).children('.dot').hide();
	  
  });
});
</script>
</head>

<body>
	<header>
	  <div id = "logo_wrap">
   <a id = "logo" href="/home.jsp" style = "color : black">WEFER</a>
   </div> 
		<span class="menu" onclick="location.href=''"> 화상회의 </span> <span
			class="menu" onclick="location.href=''"> 일정 </span> <span
			class="menu" onclick="location.href=''"> 근태 </span> <span
			class="menu" onclick="location.href=''"> 공지사항 </span> <span
			class="menu" onclick="location.href=''"> 전자결재 </span> <span
			class="menu" onclick="location.href=''"> 프로젝트 </span> 
		  <div id = "work_wrap">
    <form >
        <input type='button' style = "padding: 10px 30px;" onclick='change();' id='work'  class="btn btn-warning" value='출근'>
    </form>
        <p style = "font-size: 15px; color : red; margin :10px" >출근시간</p>
       
    </div>
	</header>
	<nav class="sidenav">
		<div class="nav_list">
			 <img id="member_pic" src="./resources/imgs/user1.PNG">
 
			<span class = "now_member">
				<p> 사원명 </p>
			</span> 	
			<span class = "now_member"> 
				<p> 부서명 </p>
			</span>
			<span  class = "now_member">
				 <p > 직책 </p>
			</span >
			<div id = "gotomypage">
				<img src="./resources/imgs/chat.png"  >
				<img src="./resources/imgs/calendar.png">
				<img src="./resources/imgs/user.png" onclick="location.href='사원의 마이페이지'">
			</div>
			
			<hr>
			<c:if test="true">
				<c:forEach var="vo" items="" varStatus="status">
					<td align="center"></td>
					<tr>
						<td align="center"></td>
					</tr>
				</c:forEach>
			</c:if>
		</div>
	</nav>
	<nav class="sidenav2">
		<div class="nav_list2">
			<div id='calendar2'></div>
		<hr>
		<h3 style = "margin : 25px; padding-left: 35px; text-align: left">공지사항</h3>
		<ol class="board">
  			<li><a href = "">board_title</a></li>
  			<li><a href = "">board_title</a></li>
  			<li><a href = "">board_title</a></li>
  			<li><a href = "">board_title</a></li>
  			<li><a href = "">board_title</a></li>
		</ol>

		</div>
		
	</nav>

	<section>
	<div id = "sectionTop">
		<div id='calendar'></div>
		<div id = 'alret'>
			<h2 style = "padding:10px;  ">내게 온 알림</h2>
			<a href="#" class="list-group-item disabled" >First item  </a>
    		<a href="#" class="list-group-item">Second item  <span class="dot"></span> </a>
    		<a href="#" class="list-group-item">Third item <span class="dot"></span> </a>
    		<a href="#" class="list-group-item">Second item  <span class="dot"></span> </a>
   			<a href="#" class="list-group-item">Third item <span class="dot"></span> </a>
		</div>
	</div>
	</section>
    	<!-- Content -->
	<div class="content"  >
		<div class="container" >
			<!-- Post -->
			<div class="post" >
				<!-- Heading -->
				<a href="#"><h1>Galaxy is on your hand</h1></a>
				<hr>
				<div class="in-content">
					<p>
						Saturn has a prominent ring system that consists of nine continuous main rings and three discontinuous arcs, composed mostly of ice particles with a smaller amount of rocky debris and dust. Sixty-two known moons orbit the planet, of which fifty-three are officially named. This does not include the hundreds of "moonlets" comprising the rings.
					</p>
					<a class="read-more" href="#">Read more</a>
				</div>
				<div class="foot-post">
					<div class="units-row">
					    <div class="unit-100">
					    	<strong>Tags:</strong>
					    	<a href="#">Galaxy</a>,
					    	<a href="#">Human</a>,
					    	<a href="#">World</a>,
					    </div>
					    <div class="unit-100">
					    	<strong>COMMENTS:</strong> 
					    	<a href="#">3</a>
					    </div>
					</div>
				</div>
			</div>
			<!-- /post -->

			<!-- Post -->
			<div class="post">
				<a href="#"><h1>사원이름</h1></a>
				<hr>
				<div class="in-content" >
					<p>
						내용 Saturn has a prominent ring system that consists of nine continuous main rings and three discontinuous arcs, composed mostly afn of ice particles with a smaller amount of rocky debris and dust.
					</p>
				</div>
				<div class="foot-post">
					<div class="units-row">
					    <div class="unit-100">
					    	<strong>Tags:</strong>
					    	<a href="#">Saturn</a>,
					    	<a href="#">Sky</a>,
					    	<a href="#">Moon</a>,
					    </div>
					    <div class="unit-100">
					    	<strong>COMMENTS:</strong> 
					    	<a href="#">3</a>
					    </div>
					</div>
				</div>
			</div>
			<!-- /post -->

			<!-- Post -->
			<div class="post">
				<!-- Heading -->
				<a href="#"><h1>Moon’s orbit around the Earth </h1></a>
				<hr>
				<div class="in-content">
					<p>
						Tilted to the orbit of the Earth around the Sun – and so most of the time, the moon will pass above or below Saturn in the sky, and no occultation will occur. It is only when Saturn lies near the point that the moon’s orbit crosses the “plane of the ecliptic” that occultations can happen.
					</p>
					<a class="read-more" href="#">Read more</a>
				</div>
				<div class="foot-post">
					<div class="units-row">
					    <div class="unit-100">
					    	<strong>Tags:</strong>
					    	<a href="#">Moon</a>,
					    	<a href="#">Orbit</a>,
					    	<a href="#">Earth</a>,
					    </div>
					    <div class="unit-100">
					    	<strong>COMMENTS:</strong> 
					    	<a href="#">221</a>
					    </div>
					</div>
				</div>
			</div>
			<!-- /post -->
			<div class="post">
				<!-- Heading -->
				<a href="#"><h1>The moon will pass above or below Saturn in the sky</h1></a>
				<hr>
				<div class="in-content">
					<p>
						Saturn has a prominent ring system that consists of nine continuous main rings and three discontinuous arcs, composed mostly afn of ice particles with a smaller amount of rocky debris and dust.
					</p>
				</div>
				<div class="foot-post">
					<div class="units-row">
					    <div class="unit-100">
					    	<strong>Tags:</strong>
					    	<a href="#">Saturn</a>,
					    	<a href="#">Sky</a>,
					    	<a href="#">Moon</a>,
					    </div>
					    <div class="unit-100">
					    	<strong>COMMENTS:</strong> 
					    	<a href="#">3</a>
					    </div>
					</div>
				</div>
			</div>
			<!-- /post -->

			<!-- Post -->
			<div class="post">
				<!-- Heading -->
				<a href="#"><h1>Moon’s orbit around the Earth </h1></a>
				<hr>
				<div class="in-content">
					<p>
						Tilted to the orbit of the Earth around the Sun – and so most of the time, the moon will pass above or below Saturn in the sky, and no occultation will occur. It is only when Saturn lies near the point that the moon’s orbit crosses the “plane of the ecliptic” that occultations can happen.
					</p>
					<a class="read-more" href="#">Read more</a>
				</div>
				<div class="foot-post">
					<div class="units-row">
					    <div class="unit-100">
					    	<strong>Tags:</strong>
					    	<a href="#">Moon</a>,
					    	<a href="#">Orbit</a>,
					    	<a href="#">Earth</a>,
					    </div>
					    <div class="unit-100">
					    	<strong>COMMENTS:</strong> 
					    	<a href="#">221</a>
					    </div>
					</div>
				</div>
			</div>
			<!-- /post -->
		</div>
	</div>
	</div>
</body>
</html>
