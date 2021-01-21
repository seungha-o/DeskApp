<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Jquery CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="./resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./resources/vendors/images/favicon-16x16.png">
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
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
	href="./resources/vendors/styles/style.css">


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script>
<script type="text/javascript">
	var change = function() {
		var elem = document.getElementById("commute");
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
<div class="pre-loader">
	<div class="pre-loader-box">
		<div class="loader-logo">
			<img src="./resources/vendors/images/deskapp-logo.svg" alt="">
		</div>
		<div class='loader-progress' id="progress_div">
			<div class='bar' id='bar1'></div>
		</div>
		<div class='percent' id='percent1'>0%</div>
		<div class="loading-text">Loading...</div>
	</div>
</div>

<div class="header">
	<div class="header-left">
		<div class="menu-icon dw dw-menu"></div>


	</div>
	<div class="header-right">
		<!-- <input class="btn btn-success" type="button" value="출근" id = "commute" onclick='change();'> -->

		<div class="user-notification">
			<div class="dropdown">
				<div id="msgStack"></div>
				<a class="dropdown-toggle no-arrow" href="#" role="button"
					data-toggle="dropdown"> <i class="icon-copy dw dw-notification"></i>
					<span class="badge notification-active"></span>
				</a>
				<div class="dropdown-menu dropdown-menu-right">
					<div class="notification-list mx-h-350 customscroll">
						
					</div>
				</div>
			</div>
		</div>
		<div class="user-info-dropdown">
			<div class="dropdown">
				<a class="dropdown-toggle" href="#" role="button"
					data-toggle="dropdown"> <span class="user-icon"> <img
						src="./resources/vendors/images/photo1.jpg" alt="">
				</span> <span class="user-name">${sessionScope.loginId}</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
					<a class="dropdown-item" href="profile.html"><i
						class="dw dw-user1"></i> Profile</a> <a class="dropdown-item"
						href="profile.html"><i class="dw dw-settings2"></i> Setting</a> <a
						class="dropdown-item" href="faq.html"><i class="dw dw-help"></i>
						Help</a> <a class="dropdown-item" href="login.html"><i
						class="dw dw-logout"></i> Log Out</a>
				</div>
			</div>
		</div>
		<div class="github-link">
			<a href="https://github.com/HyeonBongJeong/wefer" target="_blank"><img
				src="./resources/vendors/images/github.svg" alt=""></a>
		</div>
	</div>
</div>

<div class="right-sidebar">
	<div class="sidebar-title">
		<h3 class="weight-600 font-16 text-blue">
			Layout Settings <span class="btn-block font-weight-400 font-12">User
				Interface Settings</span>
		</h3>
		<div class="close-sidebar" data-toggle="right-sidebar-close">
			<i class="icon-copy ion-close-round"></i>
		</div>
	</div>
	<div class="right-sidebar-body customscroll">
		<div class="right-sidebar-body-content">
			<h4 class="weight-600 font-18 pb-10">Header Background</h4>
			<div class="sidebar-btn-group pb-30 mb-10">
				<a href="javascript:void(0);"
					class="btn btn-outline-primary header-white active">White</a> <a
					href="javascript:void(0);"
					class="btn btn-outline-primary header-dark">Dark</a>
			</div>

			<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
			<div class="sidebar-btn-group pb-30 mb-10">
				<a href="javascript:void(0);"
					class="btn btn-outline-primary sidebar-light ">White</a> <a
					href="javascript:void(0);"
					class="btn btn-outline-primary sidebar-dark active">Dark</a>
			</div>

			<h4 class="weight-600 font-18 pb-10">Menu Dropdown Icon</h4>
			<div class="sidebar-radio-group pb-10 mb-10">
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebaricon-1" name="menu-dropdown-icon"
						class="custom-control-input" value="icon-style-1" checked="">
					<label class="custom-control-label" for="sidebaricon-1"><i
						class="fa fa-angle-down"></i></label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebaricon-2" name="menu-dropdown-icon"
						class="custom-control-input" value="icon-style-2"> <label
						class="custom-control-label" for="sidebaricon-2"><i
						class="ion-plus-round"></i></label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebaricon-3" name="menu-dropdown-icon"
						class="custom-control-input" value="icon-style-3"> <label
						class="custom-control-label" for="sidebaricon-3"><i
						class="fa fa-angle-double-right"></i></label>
				</div>
			</div>

			<h4 class="weight-600 font-18 pb-10">Menu List Icon</h4>
			<div class="sidebar-radio-group pb-30 mb-10">
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebariconlist-1" name="menu-list-icon"
						class="custom-control-input" value="icon-list-style-1" checked="">
					<label class="custom-control-label" for="sidebariconlist-1"><i
						class="ion-minus-round"></i></label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebariconlist-2" name="menu-list-icon"
						class="custom-control-input" value="icon-list-style-2"> <label
						class="custom-control-label" for="sidebariconlist-2"><i
						class="fa fa-circle-o" aria-hidden="true"></i></label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebariconlist-3" name="menu-list-icon"
						class="custom-control-input" value="icon-list-style-3"> <label
						class="custom-control-label" for="sidebariconlist-3"><i
						class="dw dw-check"></i></label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebariconlist-4" name="menu-list-icon"
						class="custom-control-input" value="icon-list-style-4" checked="">
					<label class="custom-control-label" for="sidebariconlist-4"><i
						class="icon-copy dw dw-next-2"></i></label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebariconlist-5" name="menu-list-icon"
						class="custom-control-input" value="icon-list-style-5"> <label
						class="custom-control-label" for="sidebariconlist-5"><i
						class="dw dw-fast-forward-1"></i></label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type="radio" id="sidebariconlist-6" name="menu-list-icon"
						class="custom-control-input" value="icon-list-style-6"> <label
						class="custom-control-label" for="sidebariconlist-6"><i
						class="dw dw-next"></i></label>
				</div>
			</div>

			<div class="reset-options pt-30 text-center">
				<button class="btn btn-danger" id="reset-settings">Reset
					Settings</button>
			</div>
		</div>
	</div>
</div>

<div class="left-side-bar">
	<div class="brand-logo">
		<a href="#" onclick="location.href='/wefer/home.do'"> <img
			src="./resources/vendors/images/deskapp-logo.svg" alt=""
			class="dark-logo"> <img
			src="./resources/vendors/images/deskapp-logo-white.svg" alt=""
			class="light-logo">
		</a>
		<div class="close-sidebar" data-toggle="left-sidebar-close">
			<i class="ion-close-round"></i>
		</div>
	</div>
	<div class="menu-block customscroll">
		<div class="sidebar-menu">
			<ul id="accordion-menu">
				<li class="dropdown"><a href="#"
					class="dropdown-toggle"> <span class="micon dw dw-house-1"></span><span
						class="mtext">마이페이지</span>
				</a>
					<ul class="submenu">
						<li><a href="#" onclick="location.href='/wefer/profile.do'">내
								정보</a></li>
						<li><a href="schdmanagement.do">내 일정관리</a></li>
						<li><a href="index2.html">내 근태조회</a></li>
					</ul></li>
				<li><a href="#"
					onclick="location.href='/wefer/approval.do'"
					class="dropdown-toggle no-arrow"> <span
						class="micon dw dw-calendar1"></span><span class="mtext">전자결재</span>
				</a></li>
				<li class="dropdown"><a href="#"
					class="dropdown-toggle" data-option="off"> <span
						class="micon dw dw-list3"></span><span class="mtext">프로젝트</span>
				</a>
					<ul class="submenu">
						<li><a href="#"
							onclick="location.href='/wefer/projectlist.do'">진행중인 프로젝트</a></li>
						<li><a href="#">종료된 프로젝트</a></li>
					</ul></li>
				<li class="dropdown"><a href="javascript:;"
					class="dropdown-toggle"> <span class="micon dw dw-library"></span><span
						class="mtext">근태관리</span>
				</a>
					<ul class="submenu">
						<li><a href="basic-table.html">Basic Tables</a></li>
						<li><a href="datatable.html">DataTables</a></li>
					</ul></li>
					<c:if test="${dept_no eq '1'||position eq '부장' }">
									<li><a href="schedule.do" class="dropdown-toggle no-arrow"></c:if>
						<span class="micon dw dw-calendar1"></span><span class="mtext">일정</span>
				</a></li>

				<li><a href="#" onclick="location.href='/wefer/chat.do'" class="dropdown-toggle no-arrow"> <span
						class="micon dw dw-chat3"></span><span class="mtext">채팅</span>
				</a></li>
				<li>
					<div class="dropdown-divider"></div>
				</li>
				<li><a href="javascript:;" class="dropdown-toggle"> <span
						class="micon dw dw-list3"></span> <span class="mtext">주소록</span>
				</a>
					<ul class="submenu result">
						<!-- 주소록 나오는 부분 -->
					</ul></li>
				<li>
					<div id="result"></div>

				</li>
			</ul>
		</div>
	</div>
</div>
<div class="mobile-menu-overlay"></div>
<script>
	$(document).ready(function() {
		connect(); // 소켓연결
	});
</script>
<script>

	var socket = null;

	$(document).ready(
			function() {
				sock = new SockJS("<c:url value="/echo-ws"/>");
				socket = sock;
				//연결
				sock.onopen = function () {
			        console.log('Info: connection opened.');
			    };
				// 데이터를 전달 받았을때 
				
				sock.onmessage = function (event) {
				        console.log("ReceiveMessage:", event.data+'\n');
				        let $socketAlert = $('div#socketAlert');
				        $socketAlert.html(event.data);
				        $socketAlert.css('display', 'block');
				        
				        setTimeout( function() {
				        	$socketAlert.css('display', 'none');
				        }, 3000);
				    };
				// 데이터를 보냈을 때

				// 세션에서 이미지 읽기
				var profileImg = '${profileImg}';
				if (profileImg == null || profileImg == "") {
					$(".profile").attr("src",
							"${contextPath}/resources/image/user.png")
				} else { // null이 아닐경우
					$(".profile").attr("src",
							"data:image/png;base64, " + profileImg);
				}

				// 포인트 읽기
				$.ajax({
					type : "post",
					async : "true",
					dataType : "text",
					data : {
						m_id : '${m_id}' //data로 넘겨주기
					},
					url : "${contextPath}/point/selectNowPoint.do",
					success : function(data, textStatus) {
						if (data != '') {
							$("#point").text(pointToNumFormat(data));
						} else {
							$("#point").text(0);
						}
					}
				});

				// 알림 카운트 받아오기
				$.ajax({
					type : "post",
					async : "true",
					dataType : "text",
					data : {
						m_id : '${m_id}' //data로 넘겨주기
					},
					url : "${contextPath}/member/selectNewNoticeCnt.do",
					success : function(data, textStatus) {
						if (data != '0') {
							$("#newNoticeCnt").text(data);
						}
					}
				});

			});

	// 실시간 알림 받았을 시
	function onMessage(evt) {
		console.log("ReceiveMessage:", evt.data+'\n');
		var data = evt.data;
		// toast
		let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true'>";
		toast += "<div class='toast-header'><i class='fas fa-bell mr-2'></i><strong class='mr-auto'>알림</strong>";
		toast += "<small class='text-muted'></small><button type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
		toast += "<span aria-hidden='true'>&times;</span></button>";
		toast += "</div> <div class='toast-body'>" + data + "</div></div>";
		$("#msgStack").append(toast);
		$(".toast").toast({
			"animation" : true,
			"autohide" : false
		});
		//	 		$(".toast").toast({"animation": true, "autohide": true, "delay": 5000});
		$('.toast').toast('show');
		// 알림 카운트 추가
		$("#newNoticeCnt").text($("#newNoticeCnt").text() * 1 + 1);
	};
</script>
<script type="text/javascript">
	$
			.ajax({
				url : "${pageContext.request.contextPath}/memeberList",
				type : "POST",
				contentType : "application/json; charset=utf-8;",
				dataType : "json",
				success : function(data) {

					for (var i = 0; i < data.length; i++) {
						if (data[i].dept_name == '인사팀') {
							if ($('.insa').length == 0) {
								$('.result').append(
										'<ul class="insa"><span style="color:white;">'
												+ data[i].dept_name
												+ '</span></ul>');
							}
						} else if (data[i].dept_name == '경영팀') {
							if ($('.gyeonyoung').length == 0) {
								$('.result').append(
										'<ul class="gyeonyoung"><span style="color:white;">'
												+ data[i].dept_name
												+ '</span></ul>');
							}
						} else if (data[i].dept_name == '개발팀') {
							if ($('.geabal').length == 0) {
								$('.result').append(
										'<ul class="geabal"><span style="color:white;">'
												+ data[i].dept_name
												+ '</span></ul>');
							}
						}
					}
					for (var i = 0; i < data.length; i++) {
						if (data[i].dept_name == '인사팀') {
							$('.insa')
									.append(
											'<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
													+ data[i].id
													+ '\'"> '
													+ data[i].name
													+ '('
													+ data[i].position
													+ ')</a></li>');
						} else if (data[i].dept_name == '경영팀') {
							$('.gyeonyoung')
									.append(
											'<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
													+ data[i].id
													+ '\'"> '
													+ data[i].name
													+ '('
													+ data[i].position
													+ ')</a></li>');
						} else if (data[i].dept_name == '개발팀') {
							$('.geabal')
									.append(
											'<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
													+ data[i].id
													+ '\'"> '
													+ data[i].name
													+ '('
													+ data[i].position
													+ ')</a></li>');
						}

					}

				},
				error : function() {
					alert("restController err");
				}
			});
</script>
<script src="./resources/vendors/scripts/core.js"></script>
<script src="./resources/vendors/scripts/script.min.js"></script>
<script src="./resources/vendors/scripts/process.js"></script>
<script src="./resources/vendors/scripts/layout-settings.js"></script>