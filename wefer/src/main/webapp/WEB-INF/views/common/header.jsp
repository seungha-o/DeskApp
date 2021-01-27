<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
 <c:set var="contextPath" value="${pageContext.request.contextPath}" />  
 <!-- Jquery CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="./resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./resources/vendors/images/favicon-16x16.png">
<script
	src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
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

	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo"><img src="./resources/vendors/images/deskapp-logo.svg" alt=""></div>
			<div class='loader-progress' id="progress_div">
				<div class='bar' id='bar1'></div>
			</div>
			<div class='percent' id='percent1'>0%</div>
			<div class="loading-text">
				Loading...
			</div>
		</div>
	</div>

<div class="header">
	<div class="header-left">
		<div class="menu-icon dw dw-menu"></div>
		<div id="socketMessage" class="alert alert-secondary" role="alert"
			style="display: none; width: 150%; margin-left: 43px; margin-top: 15px;"">
		</div>

	</div>
	<div class="header-right">
		<input style="display: none" class="btn btn-success" type="button" value="출근" id = "gowork"'>
		<input style="display: none" class="btn btn-success" type="button" value="퇴근" id = "gohome" onclick='gotohome();'>

		<div class="user-notification">
			<div class="dropdown">
				<div id="msgStack"></div>
				<a class="dropdown-toggle no-arrow" href="#" role="button"
					data-toggle="dropdown"> <i class="icon-copy dw dw-notification"></i>

					<span id="dot" class="badge notification-active"
					style="display: none"></span>
				</a>
				<div class="dropdown-menu dropdown-menu-right" onchange="dot();">
					<div class="notification-list mx-h-350 customscroll">
						<ul id="socketAlert">
							<li><a href="#"> 모든 알림을 확인했습니다 </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="user-info-dropdown">
			<div class="dropdown">
				<a class="dropdown-toggle" href="#" role="button"
					data-toggle="dropdown"> <span class="user-icon"> <img
						src="${pageContext.request.contextPath}/resources/profileImg/${sessionScope.loginProfile }" style="width: 52px; height: 52px; border-radius: 50%" alt="">
				</span> <span class="user-name">${sessionScope.loginName}</span>
				</a>
				<div
					class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="logout.do"><i class="dw dw-logout"></i>Log Out</a>
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
				<li class="dropdown"><a href="#" class="dropdown-toggle"> <span
						class="micon dw dw-house-1"></span><span class="mtext">마이페이지</span>
				</a>
					<ul class="submenu">
						<li><a href="#" onclick="location.href='/wefer/profile.do'">내
								정보</a></li>
						<li><a href="schdmanagement.do">내 일정관리</a></li>
						<li><a href="myattendance.do">내 근태조회</a></li>
					</ul></li>
				<li><a href="#" onclick="location.href='/wefer/approval.do'"
					class="dropdown-toggle no-arrow"> <span
						class="micon dw dw-calendar1"></span><span class="mtext">전자결재</span>
				</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-option="off"> <span class="micon dw dw-list3"></span><span
						class="mtext">프로젝트</span>
				</a>
					<ul class="submenu">
						<li><a href="#"
							onclick="location.href='/wefer/projectlist.do'">진행중인 프로젝트</a></li>
						<li><a href="#" onclick="location.href='/wefer/projectEndlist.do'">종료된 프로젝트</a></li>
					</ul></li>
				<c:if test="${dept_no eq '1'}">
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-library"></span><span class="mtext">근태관리</span>
						</a>
						<ul class="submenu">
							<li><a href="${contextPath}/attendancelist.do">근태 리스트</a></li>
						</ul>
					</li>
					</c:if>
					<c:if test="${dept_no ne '1'}">
					
					</c:if>
					
					
					<c:if test="${dept_no eq '1'}">
					<li class="dropdown">
						<a href="javascript:;" class="dropdown-toggle">
							<span class="micon dw dw-library"></span><span class="mtext">사원 관리</span>
						</a>
						<ul class="submenu">
							<li><a href="memberlist.do">사원 목록</a></li>
							<li><a href="insertmember">사원 추가</a></li>
						</ul>
					</li>
					</c:if>
					
				<c:if test="${dept_no eq '1'||position eq '부장' }">
					<li>
					<a href="schedule.do" class="dropdown-toggle no-arrow">
					<span class="micon dw dw-calendar1"></span>
					<span class="mtext">일정</span>
					</a>
					</li>
				</c:if>
				

				<li><a href="#" onclick="location.href='/wefer/chat.do'"
					class="dropdown-toggle no-arrow"> <span
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
<div class="mobile-menu-overlay"></div><!-- 
<div id="socketMessage" class="alert alert-success" role="alert" style="display:none;"></div> -->
<script>
	var socket = null;
	$(document).ready(function() {
		connectWS();
		
	$.ajax({
			type : 'post',
			url : '${contextPath}/attendbutton.do',
			success : function(data){
				if(data == "0"){
					$('#gowork').css('display','block');
					$('#gohome').css('display','none');
				}else{
					$('#gohome').css('display','block');
					$('#gowork').css('display','none');
				}
			},
			error : function() {
				 alert("button err"); 
			}
		})
	});

	function connectWS() {
		console.log("tttttttttttttt")
		var ws = new WebSocket("ws://localhost:8090/wefer/replyEcho");
		console.log("tttttttttttttt 연결됨")
		socket = ws;

		ws.onopen = function() {
			console.log('Info: connection opened.');
		};

		ws.onmessage = function(event) {
			console.log("ReceiveMessage:", event.data + '\n');
		//console.log ( event.data + '\n');
		if ((event.data + '\n').length <= 9){
			console.log(event.data + '\n');
         var login_status_name = "#login_status_"+event.data;
         console.log("지금 로그인중인사람" +login_status_name);
         // 주소록에서 로그인 된 사람 이름을 녹색
         $(login_status_name).css('background-color','green');
         // 아니면 원래 색인 빨강 그대로 유지
	
		}
		else {
			var $socketAlert = $('ul#socketAlert');
			$socketAlert.html(event.data);

			$('#dot').css('display','block');
			$socketAlert.css('display', 'block');
			
 		var $socketMessage = $('div#socketMessage'); 
			$socketMessage.html(event.data); 
 			$socketMessage.css('display', 'block'); 

		     setTimeout( function() {
			       $socketMessage.css('display', 'none');
			    }, 3000);  
		};

		}
		ws.onclose = function(event) {
			console.log('Info: connection closed.');
		};
		ws.onerror = function(err) {
			console.log('Error:', err);
		};
	}
</script>
<script type="text/javascript">
   $.ajax({
            url : "${pageContext.request.contextPath}/memeberList",
            type : "POST",
            contentType : "application/json; charset=utf-8;",
            dataType : "json",
            success : function(data) {
               for (var i = 0; i < data.length; i++) {   // 주소록
                  if (data[i].dept_name == '인사팀') {
                     if ($('.insa').length == 0) {
                        $('.result').append(
                              '<ul class="insa"><span  style="color:white;">'
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
                     if (data[i].status == '퇴근') {
                        $('.insa').append(
                                    '<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
                                          + data[i].id
                                          	+ '\'"><img src="${pageContext.request.contextPath}/resources/profileImg/'+data[i].profile+'" style="width:30px; heigh:30px;"> '
                                          + data[i].name
                                          + '('
                                          + data[i].position
                                          + ')<div id="login_status_'+data[i].name+'" style="width:7px; height:7px; border-radius:50%; background-color:red;"></div></a></li>');
                     } else if (data[i].status == '출근') {
                        $('.insa').append(
                                    '<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
                                          + data[i].id
                                          + '\'"><img src="${pageContext.request.contextPath}/resources/profileImg/'+data[i].profile+'" style="width:30px; heigh:30px;"> '
                                          + data[i].name
                                          + '('
                                          + data[i].position
                                          + ')<div id="login_status_'+data[i].name+'" style="width:7px; height:7px; border-radius:50%; background-color:green;"></div></a></li>');
                     }

                  } else if (data[i].dept_name == '경영팀') {
                     if (data[i].status == '퇴근') {
                        $('.gyeonyoung').append(
                                    '<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
                                          + data[i].id
					  + '\'"><img src="${pageContext.request.contextPath}/resources/profileImg/'+data[i].profile+'" style="width:30px; heigh:30px;"> '
                                          + data[i].name
                                          + '('
                                          + data[i].position
                                          + ')<div  id="login_status_'+data[i].name+'" style="width:7px; height:7px; border-radius:50%; background-color:red;"></div></a></li>');
                     } else if (data[i].status == '출근') {
                        $('.gyeonyoung')
                              .append(
                                    '<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
                                          + data[i].id
                                       	  + '\'"><img src="<img src="${pageContext.request.contextPath}/resources/profileImg/'+data[i].profile+'" style="width:30px; heigh:30px;"> '
                                          + data[i].name
                                          + '('
                                          + data[i].position
                                          + ')<div  id="login_status_'+data[i].name+'" style="width:7px; height:7px; border-radius:50%; background-color:green;"></div></a></li>');
                     }
                  } else if (data[i].dept_name == '개발팀') {
                     if (data[i].status == '퇴근') {
                        $('.geabal')
                              .append(
                                    '<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
                                          + data[i].id
                                          + '\'"><img <img src="${pageContext.request.contextPath}/resources/profileImg/'+data[i].profile+'" style="width:30px; heigh:30px;"> '
                                          + data[i].name
                                          + '('
                                          + data[i].position
                                          + ')<div  id="login_status_'+data[i].name+'" style="width:7px; height:7px; border-radius:50%; background-color:red;"></div></a></li>');
                     } else if (data[i].status == '출근') {
                        $('.geabal')
                              .append(
                                    '<li value = "' + data[i].name + '" ><a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='
                                          + data[i].id
                                          + '\'"><img <img src="${pageContext.request.contextPath}/resources/profileImg/'+data[i].profile+'" style="width:30px; heigh:30px;"> '
                                          + data[i].name
                                          + '('
                                          + data[i].position
                                          + ')<div  id="login_status_'+data[i].name+'" style="width:7px; height:7px; border-radius:50%; background-color:green;"></div></a></li>');
                     }
                  }
               }

				},
				error : function() {
					alert("restController err");
				}
			});
$('#gowork').click(function() {
		$.ajax({
			type : 'post',
			url : '${contextPath}/insertattend.do',
			success : function(data){
				 alert(data); 
				 $.ajax({
						type : 'post',
						url : '${contextPath}/attendbutton.do',
						success : function(data){
							if(data == "0"){
								$('#gowork').css('display','block');
								$('#gohome').css('display','none');
							}else{
								$('#gohome').css('display','block');
								$('#gowork').css('display','none');
							}
						},
						error : function() {
							 alert("gowork button err"); 
						}
					})
			},
			error : function() {
				 alert("gowork err"); 
			}
		})
	}) 

	
	
	function gotohome() {
		$.ajax({
			type : 'post',
			url : '${contextPath}/updateattend.do',
			success : function(data){
				alert(data); 
				sessionStorage.clear();
				location.href="${contextPath}/";

				
			},
			error : function() {
				 alert("gohome err"); 
			}
		})
}
</script>
<script src="./resources/vendors/scripts/core.js"></script>
<script src="./resources/vendors/scripts/script.min.js"></script>
<script src="./resources/vendors/scripts/process.js"></script>
<script src="./resources/vendors/scripts/layout-settings.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>