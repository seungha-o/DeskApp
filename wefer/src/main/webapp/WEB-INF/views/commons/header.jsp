<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 css 사용 -->
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./resources/css/header.css">

<title>Insert title here</title>

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
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
	
</body>
</html>