<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>approval Form</title>
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
<script type="text/javascript"
	src="./resources/src/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="./resources/vendors/scripts/jquery-3.1.1.min.js"></script>
<!-- 값 제어를 위해 jquery -->
<link
	href="./resources/src/plugins/air-datepicker/dist/css/datepicker.min.css"
	rel="stylesheet" type="text/css" media="all">
<!-- Air datepicker css -->
<script src="https://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<script
	src="./resources/src/plugins/air-datepicker/dist/js/datepicker.js"></script>
<!-- Air datepicker js -->
<script
	src="./resources/src/plugins/air-datepicker/dist/js/i18n/datepicker.ko.js"></script>
<!-- 달력 한글 추가를 위해 커스텀 -->


<style>
.chat-box .chat-desc ul, .pd-ltr-20 {
	padding: 20px 20px 10px;
}

.wrap {
	display: flex;
}

.bootstrap-tagsinput {
	box-sizing: border-box;
	width: 100%;
	border: 0;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-0">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="title">
								<h4>결재</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">결재</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>

				<form name="writeForm" id="frm" action="/wefer/aInsert.do"
					method="post">
					<div class="pd-20 card-box mb-30">
						<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">제목</label>
							<div class="col-sm-12 col-md-10 wrap">
								<select id="payment_item" name="payment_item"
									onchange="select()" class=" selectpicker ">
									<option value="no">Choose...</option>
									<option value="반차">반차</option>
									<option value="월차">월차</option>
								</select> <input id="ann" class="form-control kind" type="text"
									placeholder="제목을 입력하세요" /> <input type="hidden"
									name="annual_kind" id="k" type="text" placeholder="제목을 입력하세요" />
							</div>
						</div>
						<div id="annDate_one" style="display: none">
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">시작일</label>
								<div class="col-sm-12 col-md-10">
									<input id="datepicker1" class="form-control"
										name="annual_stddate" placeholder="Select Date" type="text">
								</div>
							</div>
						</div>
						<div id="annDate_two" style="display: none">
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">종료일</label>
								<div class="col-sm-12 col-md-10">
									<input id="datepicker2" class="form-control"
										name="annual_enddate" placeholder="Select Date" type="text">
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">수신참조인</label>
							<div class="col-sm-12 col-md-10 wrap">
								<div id="person-form-group" class="form-control">
									<div class="fa-hover"></div>

									<div class="modal fade" id="Medium-modal" tabindex="-1"
										role="dialog" aria-labelledby="myLargeModalLabel"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<!-- <div class="modal-header"></div> -->
											<div class="modal-content">
												<div class="modal-body">
													<div class="chat-list bg-light-gray">
														<div class="chat-search select-People"></div>
														<div class="chat-search" id="set-name"
															style="overflow: scroll; position: relative; height: 10%">
															<!--  클릭한 참조자 이름  -->
														</div>
														<div
															class="notification-list chat-notification-list customscroll">

															<ul class="submenu ref">
																<!-- 참조자 나오는 부분 -->
															</ul>
															<!-- 스크롤부분 -->
														</div>
														<!-- 회색박스 -->
													</div>
												</div>
												<div class="modal-footer">
													<button id="clear-set-name" type="button"
														class="btn btn-primary">정정</button>
													<button id="prj-add-project" type="button"
														class="btn btn-primary">추가</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<i class="icon-copy fi-torsos-female-male"
									style="font-size: 40px; padding-right: 15px; display: block; margin-left: 10px; line-height: 1;"
									data-toggle="modal" data-target="#Medium-modal"></i>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-10 col-md-2 col-form-label">참조문서</label>
							<div class="col-sm-12 col-md-10">
								<input type="file" class="form-control">
							</div>
						</div>
					</div>
					<div class="html-editor pd-20 card-box mb-30">
						<div class="jsx-2303464893 editor">
							<div class="fr-box fr-basic fr-top" role="application">
								<div class="fr-wrapper show-placeholder" dir="auto"
									style="overflow: scroll;">
									<textarea name="annual_content"
										style="width: 100%; height: 412px;"></textarea>
								</div>
							</div>
						</div>
					</div>
					<input type="button" id="savebutton"
						class="pd-20 btn btn-primary btn-lg" style="float: right;"
						value="결재작성" />
				</form>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		// 참조자한테 소켓보내기
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
					// websocket에 보내기!! (reply,댓글작성자)
					let socketMsg = "전자결재," + memberId;
					//+ "," + gBoardWriter + "," + gBno;
					console.log("sssssssmsg>>", socketMsg)
					socket.send(socketMsg);
				}
			 else {
				console.log("Error on editReply>>", res);
			}
			
		};
		});

		// notifySend
		/*$('#prj-add-project').click(function(e){
			console.log(socket);
			let modal = $('.ref').has(e.target);
			console.log(modal);
			let type = '70';
			let target = modal.find('.modal-body input').val();
			//let content = modal.find('.modal-body textarea').val();
			//let url = '${contextPath}/member/notify.do';
			// db저장	
			$.ajax({
				type: 'post',
				url: '${contextPath}/notify/saveNotify.do',
				dataType: 'text',
				data: {
					target: target,
				//	content: content,
					type: type,
				//	url: url
				},
				success: function(){
					socket.send("관리자,"+target);	// 소켓에 전달
				}
			});
			//modal.find('.modal-body textarea').val('');	// textarea 지우기
		});*/
	</script>


	<!-- 	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "smartEditor",
			sSkinURI : "./resources/src/se/SmartEditor2Skin.html",
			fCreator : "createSEditor2",
			htParams : {
				bUseToolbar : true,
				bUseVerticalResizer : false,
				bUseModeChanger : false
			}
		});
	</script> -->

	<script type="text/javascript">
		$(function() {
			$("#savebutton").click(function() {
				$("#frm").submit();
			});
		})
		$.ajax({
					url : "${pageContext.request.contextPath}/memeberList",
					type : "POST",
					contentType : "application/json; charset=utf-8;",
					dataType : "json",
					success : function(data) {

						for (var i = 0; i < data.length; i++) {
							if (data[i].dept_name == '인사팀') {
								if ($('.insa1').length == 0) {
									$('.ref').append(
											'<ul id="insa" class="insa1"><span>'
													+ data[i].dept_name
													+ '</span></ul>');
								}
							} else if (data[i].dept_name == '경영팀') {
								if ($('.gyeonyoung1').length == 0) {
									$('.ref').append(
											'<ul id="gyeonyoung" class="gyeonyoung1"><span>'
													+ data[i].dept_name
													+ '</span></ul>');
								}
							} else if (data[i].dept_name == '개발팀') {
								if ($('.geabal1').length == 0) {
									$('.ref').append(
											'<ul id="geabal" class="geabal1"><span>'
													+ data[i].dept_name
													+ '</span></ul>');
								}
							}
						}
						for (var i = 0; i < data.length; i++) {

							if (data[i].dept_name == '인사팀') {
								$('.insa1')
										.append(
												'<li class="add-person1" value = "' + data[i].name + '" ><a href="#"> ['
														+ data[i].dept_name
														+ ']'
														+ data[i].name
														+ '('
														+ data[i].position
														+ ')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].name+'"></li>');
							} else if (data[i].dept_name == '경영팀') {
								$('.gyeonyoung1')
										.append(
												'<li class="add-person1" value = "' + data[i].name + '" ><a href="#"> ['
														+ data[i].dept_name
														+ ']'
														+ data[i].name
														+ '('
														+ data[i].position
														+ ')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].name+'"></li>');
							} else if (data[i].dept_name == '개발팀') {
								$('.geabal1')
										.append(
												'<li class="add-person1" value = "' + data[i].name + '" ><a href="#"> ['
														+ data[i].dept_name
														+ ']'
														+ data[i].name
														+ '('
														+ data[i].position
														+ ')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].name+'"></li>');
							}
						}
					},
					error : function() {
						alert("restController err");
					}
				});
		$(document)
				.on(
						"click",
						".add-person1",
						function() {
							console.log($(this).children(".member_id").val());
							var member_id = $(this).children(".member_id")
									.val();
							var member_name = $(this).text();
							$('#set-name')
									.append(
											'<div class="setting-name" style="display:block; left=10px; margin-right:10px;">'
													+ member_name
													+ '&nbsp;&nbsp;<input type="hidden" name="members_id" value="'+member_id+'"></div>');
						})

		$('#clear-set-name').click(function() {
			$("#set-name").empty();
		});

		$(document).on("click", ".del-person", function() {
			$(this).parent().remove();

		})

		$(document).on("click", ".del-sub-group", function() {
			$(this).parent().remove();

		})

		$('#prj-add-project')
				.click(
						function() {
							if ($('.setting-name').length == 0) {
								alert('인원을 한명 이상 골라주세요');
							} else if ($('.setting-name').length > 3) {
								alert('인원은 세명까지 고를 수 있습니다.');
							} else {
								if ($('.prj-member-list').length < 3) {
									var member_list = $(".setting-name").get();
									var members_id = $(
											"input[name=members_id][type=hidden]")
											.get();
									console.log($('.prj-member-list').length);
									$('#set-name').empty();
									for (var i = 0; i < member_list.length; i++) {
										var member_name = $(member_list[i])
												.text();
										var member_id = $(members_id[i]).val();
										console.log(member_id);
										$('.fa-hover')
												.append(
														'<div class="prj-member-list" style="line-height: 2; margin-right:10px; float: left;">'
																+ member_name
																+ '<a class="del-person" href="javascript:void(0);">x</a><input type="hidden" name="s_member_id'+i+'" value="'+member_id+'"><div>');
									}
									$('#Medium-modal').modal('toggle');
									$('.modal-backdrop').remove();
								} else {
									$('#set-name').empty();
									alert('인원은 세명까지 고를 수 있습니다.');
									$('#Medium-modal').modal('toggle');
									$('.modal-backdrop').remove();
								}
							}

						});
		function select() {
			var x = document.getElementById("payment_item").value;
			if (x == "반차") {
				$(".kind").val("[반차] 휴가신청서입니다.");
			 $("#k").val();
				$("#k").val("반차");
				$("#annDate_one").show();
				$("#annDate_two").hide();
			} else {
				$(".kind").val("[월차] 휴가신청서입니다.");
				 $("#k").val();
				$("#k").val("월차");
				$("#annDate_one").show();
				$("#annDate_two").show();
			}
		}
	</script>

	<script type="text/javascript">
		//두개짜리 제어 연결된거 만들어주는 함수
		datePickerSet($("#datepicker1"), $("#datepicker2"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째

		function datePickerSet(sDate, eDate, flag) {

			//시작 ~ 종료 2개 짜리 달력 datepicker	
			if (!isValidStr(sDate) && !isValidStr(eDate) && sDate.length > 0
					&& eDate.length > 0) {
				var sDay = sDate.val();
				var eDay = eDate.val();

				if (flag && !isValidStr(sDay) && !isValidStr(eDay)) { //처음 입력 날짜 설정, update...			
					var sdp = sDate.datepicker().data("datepicker");
					sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요

					var edp = eDate.datepicker().data("datepicker");
					edp.selectDate(new Date(eDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
				}

				//시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
				if (!isValidStr(eDay)) {
					sDate.datepicker({
						maxDate : new Date(eDay.replace(/-/g, "/"))
					});
				}
				sDate.datepicker({
					language : 'en',
					dateFormat : 'yyyy-mm-dd',
					autoClose : true,
					onSelect : function() {
						datePickerSet(sDate, eDate);
					}
				});

				//종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
				if (!isValidStr(sDay)) {
					eDate.datepicker({
						minDate : new Date(sDay.replace(/-/g, "/"))
					});
				}
				eDate.datepicker({
					language : 'en',
					dateFormat : 'yyyy-mm-dd',
					autoClose : true,
					onSelect : function() {
						datePickerSet(sDate, eDate);
					}
				});

				//한개짜리 달력 datepicker
			} else if (!isValidStr(sDate)) {
				var sDay = sDate.val();
				if (flag && !isValidStr(sDay)) { //처음 입력 날짜 설정, update...			
					var sdp = sDate.datepicker().data("datepicker");
					sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
				}

				sDate.datepicker({
					language : 'en',
					dateFormat : 'yyyy-mm-dd',
					autoClose : true
				});
			}

			function isValidStr(str) {
				if (str == null || str == undefined || str == "")
					return true;
				else
					return false;
			}
		}

		function choose(a) {
			$('#set-name')
					.append(
							'<div class="setting-name" style="display:inline; left=10px; margin-right:10px;">'
									+ a + '</div>&nbsp;&nbsp;');

		}

		$('#clear-set-name').click(function() {
			$("#set-name").empty();
		});
	</script>
	<!-- js -->
	<script src="./resources/src/plugins/jquery-steps/jquery.steps.js"></script>
	<script src="./resources/vendors/scripts/steps-setting.js"></script>
	<!-- switchery js -->
	<script src="./resources/src/plugins/switchery/switchery.min.js"></script>
	<!-- bootstrap-tagsinput js -->
	<script
		src="./resources/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<!-- bootstrap-touchspin js -->
	<script
		src="./resources/src/plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script src="./resources/vendors/scripts/advanced-components.js"></script>
	<script
		src="./resources/src/plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script src="./resources/vendors/scripts/advanced-components.js"></script>
</body>
</html>