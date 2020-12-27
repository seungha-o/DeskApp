<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 css 사용 -->

<meta name="viewport" content="width=device-width, initial-scale=1.0">




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

</section>


<!--  부트스트랩 js 사용 -->
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
</body>
</html>

