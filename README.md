###### made by 오승하
## :pushpin: DESK APP :pushpin:
협업을 위한 그룹웨어

2020.12 ~ 2021.01

## :mag: Project

#### 개요
사내에서 사용하는 업무메신저를 확장하여 각각의 프로젝트에 인원을 추가할수 있고 진행상황과 서로의 스케줄을 공유하기 위해 만들었습니다. 

#### 주요기능
- 실시간 접속여부확인
- 1대1채팅과 알림 전송
- 프로젝트 추가, 수정, 열람 권한부여
- 로그인 아이디는 일정한 규칙으로 자동 부여

##  👀 기술스택
![캡처](https://user-images.githubusercontent.com/69295153/106429174-6fa2eb80-64ad-11eb-9810-c02000325b36.PNG)

#### 그 외 API

| 라이브러리                      | 버전       |
| ------------------------------ | ---------- |
| jstl                           | 1.2        |
| JSON-simple                    | **^16.11** |
| JdataPicker                    | **^5.1**   |
| Spring WebSocket               | **3.3**    |
| Lombok Maven Plugin            | **^4.4**   |
| Mybatis Spring                 | **3.6**    |
| ojdbc6                         | **4.1.5**  |
| Apache commons Fileupload      | **4.1.5**  |
| Naver Smart editer             | 2.2        |

## 👩‍💻 Member

#### 오승하
- 전자결재 기능 전체 (결재 작성, 결재 승인, 결재 분류)
- 스프링 웹소켓을 활용한 기능 전체 ( 프로젝트 추가 알림보내기, 수신 받은 결재 알림보내기, 채팅 알림보내기 )
- ajax를 활용하여 DB에 있는 멤버테이블 주소록 전체 불러오기 

## 🔧설정 파일들

#### header.js
 ```jsx
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
```
gtag로 화면 전환시 로딩 페이지를 보여주었습니다. 

 ```jsx
 function connectWS() {
		console.log("qqqqqqqqqqq")
		var ws = new WebSocket("ws://localhost:8090/wefer/replyEcho");
		console.log("qqqqqqqqqqq 연결됨")
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
 ```
 헤더에 웹소켓을 두어 모든 페이지가 로딩 될때마다 소켓을 커넥션하도록 했습니다. 
 if문을 사용하여 연결된 소켓이 로그인을 한 사용자인지, 수신참조되어 알림이 가야하는 사용자인지 구별을 했습니다. 
 알림이 가는 경우 타임아웃을 3000로 주어 3초동안 알림이 떴다 사라지지만, li태그 안에서는 확인할때까지 유지하도록 했습니다. 
 
 ```jsx
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

 ```
 ajax로 모든 사용자들의 주소록을 불러왔습니다. 소켓이 연결된 사용자인지 구별하여 온/오프라인 상태를 css를 통해 색을 다르게 지정하였습니다. 
 
 ```jsx
<script src="./resources/vendors/scripts/core.js"></script>
<script src="./resources/vendors/scripts/script.min.js"></script>
<script src="./resources/vendors/scripts/process.js"></script>
<script src="./resources/vendors/scripts/layout-settings.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 ```

 ```jsx
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
 ```
헤더에 들어간 외부 js입니다. 

apprdetail.jsp
 ```jsx
<div class="container">
									<h6 class="weight-400 d-flex">
										<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
										<c:if test="${payment_id.conference.conference_title != null}">
										${payment_id.conference.conference_title}
										</c:if>
									
									<c:choose>
										<c:when
											test="${payment_id.conference.conference_contents == null}">
											<td>${payment_id.annual_content}</td>
										</c:when>
										<c:otherwise>
											<td>${payment_id.conference.conference_contents}</td>
										</c:otherwise>
									</c:choose>
									</h6>
								</div> 
 ```
 jstl 사용하여 view에 출력하였습니다. 또한 if문에 해당하는 c태그를 사용하여 값 제어를 했습니다.  
 
apprform.jsp
 ```jsx
		$('#prj-add-project').on('click', function(evt) {
			console.log('수신자 클릭하면');
			var member_list = $(".setting-name").get();
			console.log("member_list.length:" + member_list.length);
			var members_id = $(
			"input[name=members_id][type=hidden]")
			.get();
			console.log("members_id.length:" + members_id.length);
			for (var i = 0; i < member_list.length; i++) {
				console.log("$(member_list[i]).val(): " + $(member_list[i]).val());
				var memberId = $(members_id[i]).val();
				console.log("memberId" + memberId);
				if (socket) {
					var socketMsg = "전자결재," + memberId;
					console.log("sssssssmsg>>", socketMsg)
					socket.send(socketMsg);
				}
			 else {
				console.log("Error on editReply>>", res);
			}
			
		};
		});

 ```
 전자결재를 승인해 줄 승인 참조자에게 알림을 보내기 위해 소켓을 사용한 코드입니다. 
 
 
 
