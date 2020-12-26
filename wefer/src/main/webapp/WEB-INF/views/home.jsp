<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<title>WEPER MAIN</title>

<style>



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

.sidenav2 .board {
	list-style-type: square;
	font-size: 150%;
	margin: 25px;
}

section {
	height: 100%;
	background-color: #bdbdbd;
	left: 300px;
	margin-left: 300px;
}

section #sectionTop {
	float: left;
	margin-top: 70px;
}

section #alret {
	float: left;
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

.content {
	padding-top: 700px;
}

.content .post {
	border: 3px solid;
	border-radius: 15px;
	padding: 20px;
	margin: 20px;
	width: 100%
}

.content .post a {
	text-decoration: none;
}

.content .post h1 {
	color: #000;
	font-size: 50x;
	font-weight: 400;
}
</style>


<script type="text/javascript">
	var change = function() {
		var elem = document.getElementById("work");
		if (elem.value == "출근") {
			alert("출근 확인되었습니다.");
			elem.value = "퇴근";
		} else {
			var conf = confirm("퇴근하시겠습니까 현재시간은 TO_CHAR(SYSDATE, 'HH:MI:SS') 입니다.");
			if (conf)
				elem.value = "출근";
			else
				elem.value = "퇴근";
		}

	}
</script>

<script>
	$(document).ready(function() {
		$(".list-group-item").click(function() {
			var alert = document.getElementById('.list-group-item');
			var dot = $(this).childNodes;
			$(this).children('.dot').hide();
		});
	});
</script>
</head>

<body>
  <%@ include file="/WEB-INF/views/commons/header.jsp" %>
  <%@ include file="/WEB-INF/views/commons/leftnav.jsp" %>
	
	<nav class="sidenav2">
		<div class="nav_list2">
			<div id='calendar2'></div>
			<hr>
			<h3 style="margin: 25px; padding-left: 35px; text-align: left">공지사항</h3>
			<ol class="board">
				<li><a href="">board_title</a></li>
				<li><a href="">board_title</a></li>
				<li><a href="">board_title</a></li>
				<li><a href="">board_title</a></li>
				<li><a href="">board_title</a></li>
			</ol>

		</div>

	</nav>

	<section>
		<div id="sectionTop">
		 <%@ include file="/WEB-INF/views/main-page/calender.jsp" %>
		
			
			<div id='alret'>
				<h2 style="padding: 10px;">내게 온 알림</h2>
				<a href="#" class="list-group-item disabled">First item </a> <a
					href="#" class="list-group-item">Second item <span class="dot"></span>
				</a> <a href="#" class="list-group-item">Third item <span
					class="dot"></span>
				</a> <a href="#" class="list-group-item">Second item <span
					class="dot"></span>
				</a> <a href="#" class="list-group-item">Third item <span
					class="dot"></span>
				</a>
			</div>
		</div>
	</section>
	<!-- Content -->
	<div class="content">
		<div class="container">
			<!-- Post -->
			<div class="post">
				<!-- Heading -->
				<a href="#"><h1>Galaxy is on your hand</h1></a>
				<hr>
				<div class="in-content">
					<p>Saturn has a prominent ring system that consists of nine
						continuous main rings and three discontinuous arcs, composed
						mostly of ice particles with a smaller amount of rocky debris and
						dust. Sixty-two known moons orbit the planet, of which fifty-three
						are officially named. This does not include the hundreds of
						"moonlets" comprising the rings.</p>
					<a class="read-more" href="#">Read more</a>
				</div>
				<div class="foot-post">
					<div class="units-row">
						<div class="unit-100">
							<strong>Tags:</strong> <a href="#">Galaxy</a>, <a href="#">Human</a>,
							<a href="#">World</a>,
						</div>
						<div class="unit-100">
							<strong>COMMENTS:</strong> <a href="#">3</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /post -->

			<!-- Post -->
			<div class="post">
				<a href="#"><h1>사원이름</h1></a>
				<hr>
				<div class="in-content">
					<p>내용 Saturn has a prominent ring system that consists of nine
						continuous main rings and three discontinuous arcs, composed
						mostly afn of ice particles with a smaller amount of rocky debris
						and dust.</p>
				</div>
				<div class="foot-post">
					<div class="units-row">
						<div class="unit-100">
							<strong>Tags:</strong> <a href="#">Saturn</a>, <a href="#">Sky</a>,
							<a href="#">Moon</a>,
						</div>
						<div class="unit-100">
							<strong>COMMENTS:</strong> <a href="#">3</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /post -->

			<!-- Post -->
			<div class="post">
				<!-- Heading -->
				<a href="#"><h1>Moon’s orbit around the Earth</h1></a>
				<hr>
				<div class="in-content">
					<p>Tilted to the orbit of the Earth around the Sun – and so
						most of the time, the moon will pass above or below Saturn in the
						sky, and no occultation will occur. It is only when Saturn lies
						near the point that the moon’s orbit crosses the “plane of the
						ecliptic” that occultations can happen.</p>
					<a class="read-more" href="#">Read more</a>
				</div>
				<div class="foot-post">
					<div class="units-row">
						<div class="unit-100">
							<strong>Tags:</strong> <a href="#">Moon</a>, <a href="#">Orbit</a>,
							<a href="#">Earth</a>,
						</div>
						<div class="unit-100">
							<strong>COMMENTS:</strong> <a href="#">221</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /post -->
			<div class="post">
				<!-- Heading -->
				<a href="#"><h1>The moon will pass above or below Saturn in
						the sky</h1></a>
				<hr>
				<div class="in-content">
					<p>Saturn has a prominent ring system that consists of nine
						continuous main rings and three discontinuous arcs, composed
						mostly afn of ice particles with a smaller amount of rocky debris
						and dust.</p>
				</div>
				<div class="foot-post">
					<div class="units-row">
						<div class="unit-100">
							<strong>Tags:</strong> <a href="#">Saturn</a>, <a href="#">Sky</a>,
							<a href="#">Moon</a>,
						</div>
						<div class="unit-100">
							<strong>COMMENTS:</strong> <a href="#">3</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /post -->

			<!-- Post -->
			<div class="post">
				<!-- Heading -->
				<a href="#"><h1>Moon’s orbit around the Earth</h1></a>
				<hr>
				<div class="in-content">
					<p>Tilted to the orbit of the Earth around the Sun – and so
						most of the time, the moon will pass above or below Saturn in the
						sky, and no occultation will occur. It is only when Saturn lies
						near the point that the moon’s orbit crosses the “plane of the
						ecliptic” that occultations can happen.</p>
					<a class="read-more" href="#">Read more</a>
				</div>
				<div class="foot-post">
					<div class="units-row">
						<div class="unit-100">
							<strong>Tags:</strong> <a href="#">Moon</a>, <a href="#">Orbit</a>,
							<a href="#">Earth</a>,
						</div>
						<div class="unit-100">
							<strong>COMMENTS:</strong> <a href="#">221</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /post -->
		</div>
	</div>
	</div>
<!--  부트스트랩 js 사용 -->
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
</body>
</html>

