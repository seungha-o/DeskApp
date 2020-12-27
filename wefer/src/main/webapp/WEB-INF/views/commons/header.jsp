<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script type="text/javascript" src="./resources/js/wefer.js"></script>

<title>Insert title here</title>


</head>
<body>
<header>
		<div id="logo_wrap">
			<a id="logo" href="/home.jsp" style="color: black">WEFER</a>
		</div>
		<span class="menu" onclick="location.href=''"> 화상회의 </span> <span
			class="menu" onclick="location.href=''"> 일정 </span> <span
			class="menu" onclick="location.href=''"> 근태 </span> <span
			class="menu" onclick="location.href=''"> 공지사항 </span> <span
			class="menu" onclick="location.href=''"> 전자결재 </span> <span
			class="menu" onclick="location.href=''"> 프로젝트 </span>
		<div id="work_wrap">
			<form>
				<input type='button' style="padding: 10px 30px;" onclick='change();'
					id='work' class="btn btn-warning" value='출근'>
			</form>
			<p style="font-size: 15px; color: red; margin: 10px">출근시간</p>

		</div>
	</header>
	<!--  부트스트랩 js 사용 -->

	
</body>
</html>