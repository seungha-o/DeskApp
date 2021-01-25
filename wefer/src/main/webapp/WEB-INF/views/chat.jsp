<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>approval Form</title>
<!-- Jquery CDN -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
<style>
#scroll{
	height : 480px;
    overflow-y: scroll;
    
}
 #scroll::-webkit-scrollbar {
    display: none; 
}
#messageinput::-webkit-scrollbar {
    display: none; 
}
.chat-desc{
	height : 480px;
    overflow-y: scroll;
    
}
.chat-desc::-webkit-scrollbar {
    display: none; 
} 

.btn {
	height: !important 0px;
}
.ptag:after{
 content:none;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Chat</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Chat</li>
							</ol>
							</nav>
						</div>
					</div>
				</div>
				<div class=" border-radius-4 box-shadow mb-30">
					<div class="row no-gutters">
						<div class="col-lg-3 col-md-4 col-sm-12">
							<div class="chat-list bg-light-gray" style = " border-right: 1px solid #ccc">
								<div class="chat-search">
									<span class="ti-search"></span> <input type="text"
										placeholder="Search Contact">
								</div>
								<div
									class="notification-list chat-notification-list customscroll">
									<ul class="submenu chatMember">
										<!-- 채팅할사람 -->
									</ul>
								</div>
							</div>
						</div>
						<div id="no"
							style="margin: auto; text-align: center; vertical-align: middle;">
							<i class="icon-copy ion-chatbubbles"style="font-size: 150px;"></i><br><br>
							채팅을 시작하려면 사람을 선택해주세요.
						</div>
						<div id="yes" class="bg-white col-lg-9 col-md-8 col-sm-12 detail"
							style="display: none">
							<div class="chat-detail" style = "border-radius:10px">
								<div class="chat-profile-header clearfix">
									<div class="left">
										<div class="clearfix">
											<div class="chat-profile-photo photo"><!-- 선택한 사람 사진 -->
											<!-- 	<img src="vendors/images/profile-photo.jpg" alt=""> -->
											</div>
											<div class="chat-profile-name name" ><!-- 선택한 사람 이름 -->
												<%-- <h3>${sessionScope.loginName}</h3> --%>
											</div>
										</div>
									</div>
									<div class="right text-right">
										<div class="dropdown">
											<a class="btn btn-outline-primary dropdown-toggle" href="#"
												role="button" data-toggle="dropdown"> Setting </a>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="#" onclick="closeSocket();">대화방 나가기</a>
												  <a class="dropdown-item text-light-orange" href="#" onclick="closeChat()" >창 닫기</a>
											</div>
										</div>
									</div>
								</div>
								<div class="chat-box">
									<div class="chat-desc" id = scroll >
									
										<p style="text-align: center">--------------------------대화가 시작되었습니다.--------------------------</p>
									<!-- 	<div id = "scroll" > -->
											<ul id="messages">
												
											</ul>
										<!-- </div> -->
									</div>
									<div class="chat-footer">
										<div class="file-upload">
											<a href="#" ><i class="fa fa-paperclip"></i></a>
										</div>
										<div class="chat_text_area">
											<input type="text" id="sender" value="${loginName}"
												style="display: none;">
											<textarea id="messageinput" onkeyup = "enterkey();" ></textarea>
										</div>
										<div class="chat_send">
											<button onclick="sent();" 
												class="icon-copy ion-paper-airplane btn btn-link sendBtn"
												type="submit"></button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
		<!-- 웹소켓 js -->
		<script type="text/javascript">
			var ws;
			var messages = document.getElementById("messages");
			var flag = true;
			

			function openSocket(name, photo) {
				
			 //   $("#scroll").scrollTop($("#scroll")[0].scrollHeight);
			 //   console.log("1"+$("#scroll")[0].scrollHeight);
				$('#yes').css('display', 'block');
				$('#no').css('display', 'none');
				alert(name+"님과 채팅을 시작합니다.");
				$('.name').append('<h3>'+name+'</h3>');
				$('.photo').append('<img src="./resources/image/memberImage/'+photo+'" style="width:50px; height:50px;">'); 
			
				
				
				
				if (ws !== undefined && ws.readyState !== WebSocket.CLOSED) {
					writeResponse("대화는 한명씩만 가능합니다. 대화를 먼저 종료해주세요.");
					return;
				}
				//웹소켓 객체 만드는 코드
				ws = new WebSocket("ws://localhost:8090/wefer/wecho.do");

				ws.onopen = function(event) {
					if (event.data === undefined) {
						return;
					}
					writeResponse(event.data);
				};

				ws.onmessage = function(event) {
					console.log(event.data)
					writeResponse(event.data);
				};

				ws.onclose = function(event) {
					messages.innerHTML +=  // 왼쪽
						"<li class=\"clearfix \"><span class=\"chat-img\">\r\n" + 
		        		"<img src=\"vendors/images/chat-img2.jpg\" alt=\"\">\r\n" + 
		        		"</span>\r\n" + 
		        		"<div class=\"chat-body clearfix\"><p>"+ "상대방이 대화를 종료했습니다." +"</p><div class=\"chat_time\">09:40PM</div>\r\n" + "</div></li>"
					
				}

			}
			function enterkey() {
			   
		        if (window.event.keyCode == 13) {
		        	sent()
		        }
		}
			function sent() { // 보내는 사람만 들어감 
				

			  
				var text = document.getElementById("messageinput").value 
				/* + ","
						+ document.getElementById("sender").value; */
				ws.send(text);
				
				document.getElementById("messageinput").value = "";
				console.log("sent에 들어오면 보내는거 받는사람은 안들어옴 " + text);
				
				if (flag == true){
					messages.innerHTML +=  // 오른쪽에 나와야함 
					"<li class=\"clearfix admin_chat\" style = \"list-style: none;\"><span class=\"chat-img\">\r\n" + 
	        		"<img src=\"vendors/images/chat-img2.jpg\" alt=\"\">\r\n" + 
	        		"</span>\r\n" + 
	        		"<div class=\"chat-body clearfix\"><p>"+ text +"</p><div class=\"chat_time\">09:40PM</div>\r\n" + "</div></li>"
	        		flag = false;
	        		
					console.log($("#scroll").scrollTop());
					console.log($("#scroll")[0].scrollHeight);
					console.log($("#scroll").height());
					console.log($("#mCSB_5_scrollbar_vertical").height());
					  $("#scroll").scrollTop($("#scroll")[0].scrollHeight);
					  console.log($("#scroll")[0].scrollHeight);
				}
				
				
				
			}
			function writeResponse(text) {
			
				var sessionid = "${loginName}";  // 로그인한 사람
				var sender =  document.getElementById("sender").value; // 지금 글 보낸 사람 
				console.log(sessionid);
				console.log(sender);
				console.log("writeResponse에 들어오면 보내는거 받는거 다 들어감  " + text);
				if (sessionid == sender && flag == true){
					
					messages.innerHTML +=  // 왼쪽
						"<li class=\"clearfix \" style = \"list-style: none;\"><span class=\"chat-img\">\r\n" + 
		        		"<img src=\"vendors/images/chat-img2.jpg\" alt=\"\">\r\n" + 
		        		"</span>\r\n" + 
		        		"<div class=\"chat-body clearfix\"><p style = \"display: inline-block;\">"+ text +"</p><div class=\"chat_time\">09:40PM</div>\r\n" + "</div></li>"

						  $("#scroll").scrollTop($("#scroll")[0].scrollHeight);
				}flag = true;
				
				
			}
			
			function closeSocket() {
				var c = confirm("채팅창을 닫겠습니까?");
		   
				$('.photo').empty();
				$('.name').empty();
				if (c){
					$('#yes').css('display', 'none');
					$('#no').css('display', 'block');
				}
		}
		</script>
		<!-- 멤버리스트 js -->
		<script type="text/javascript">
			$
					.ajax({
						url : "${pageContext.request.contextPath}/SessionmemeberList",
						type : "POST",
						contentType : "application/json; charset=utf-8;",
						dataType : "json",
						success : function(data) {
							console.log("채팅방")
							for (var i = 0; i < data.length; i++) {
								if (data[i].dept_name == '인사팀') {
									if ($('.1').length == 0) {
										$('.chatMember').append(
												'<ul class="1"><span>'
														+ data[i].dept_name
														+ '</span></ul>');
									}
								} else if (data[i].dept_name == '경영팀') {
									if ($('.2').length == 0) {
										$('.chatMember').append(
												'<ul class="2"><span><h3 class="clearfix">'
														+ data[i].dept_name
														+ '</h3></span></ul>');
									}
								} else if (data[i].dept_name == '개발팀') {
									if ($('.3').length == 0) {
										$('.chatMember').append(
												'<ul class="3"><span>'
														+ data[i].dept_name
														+ '</span></ul>');
									}
								}
							}
							for (var i = 0; i < data.length; i++) {
								if (data[i].dept_name == '인사팀') {
									if (data[i].status == '퇴근') {
										$('.1')
												.append(
														'<li value = "' + data[i].name + '" ><a href="#"  onclick="openSocket(\''+data[i].name+'\',\''+data[i].profile+'\');"><img src="./resources/image/memberImage/'+data[i].profile+'" style="width:30px; height:30px;"> '
																+ data[i].name
																+ '('
																+ data[i].position
																+ ')<div style="width:7px; height:7px; border-radius:50%; background-color:red;"></div></a></li>');
									} else if (data[i].status == '출근') {
										$('.1')
												.append(
														'<li value = "' + data[i].name + '" ><a href="#"  onclick="openSocket(\''+data[i].name+'\',\''+data[i].profile+'\');"><img src="./resources/image/memberImage/'+data[i].profile+'" style="width:30px; height:30px;"> '
																+ data[i].name
																+ '('
																+ data[i].position
																+ ')<div style="width:7px; height:7px; border-radius:50%; background-color:green;"></div></a></li>');
									}

								} else if (data[i].dept_name == '경영팀') {
									if (data[i].status == '퇴근') {
										$('.2')
												.append(
														'<li value = "' + data[i].name + '" ><a href="#"  onclick="openSocket(\''+data[i].name+'\',\''+data[i].profile+'\');"><img src="./resources/image/memberImage/'+data[i].profile+'" style="width:30px; height:30px;"> '
																+ data[i].name
																+ '('
																+ data[i].position
																+ ')<div style="width:7px; height:7px; border-radius:50%; background-color:red;"></div></a></li>');
									} else if (data[i].status == '출근') {
										$('.2')
												.append(
														'<li value = "' + data[i].name + '" ><a href="#"  onclick="openSocket(\''+data[i].name+'\',\''+data[i].profile+'\');"><img src="./resources/image/memberImage/'+data[i].profile+'" style="width:30px; height:30px;"> '
																+ data[i].name
																+ '('
																+ data[i].position
																+ ')<div style="width:7px; height:7px; border-radius:50%; background-color:green;"></div></a></li>');
									}
								} else if (data[i].dept_name == '개발팀') {
									if (data[i].status == '퇴근') {
										$('.3')
												.append(
														'<li value = "' + data[i].name + '" ><a href="#"  onclick="openSocket(\''+data[i].name+'\',\''+data[i].profile+'\');"><img src="./resources/image/memberImage/'+data[i].profile+'" style="width:30px; height:30px;"> '
																+ data[i].name
																+ '('
																+ data[i].position
																+ ')<div style="width:7px; height:7px; border-radius:50%; background-color:red;"></div></a></li>');
									} else if (data[i].status == '출근') {
									
										$('.3')                                                          
												.append(
														'<li value = "' + data[i].name + '" ><a href="#"  onclick="openSocket(\''+data[i].name+'\',\''+data[i].profile+'\');"><img src="./resources/image/memberImage/'+data[i].profile+'" style="width:30px; height:30px;"> '
																+ data[i].name
																+ '('
																+ data[i].position
																+ ')<div style="width:7px; height:7px; border-radius:50%; background-color:green;"></div></a></li>');
									}
								}
							}
						},
						error : function() {
							alert("restController err");
						}
					});
		</script>
</body>
</html>