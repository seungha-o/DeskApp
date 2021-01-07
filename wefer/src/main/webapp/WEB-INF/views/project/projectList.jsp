<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Basic Page Info -->
<meta charset="utf-8">
<title>approval</title>

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
	
	<script src="./resources/vendors/scripts/jquery-3.1.1.min.js"></script> <!-- 값 제어를 위해 jquery -->
    <link href="./resources/src/plugins/air-datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
    <!-- Air datepicker css -->
    <script src="./resources/src/plugins/air-datepicker/dist/js/datepicker.js"></script> <!-- Air datepicker js -->
    <script src="./resources/src/plugins/air-datepicker/dist/js/i18n/datepicker.ko.js"></script> <!-- 달력 한글 추가를 위해 커스텀 -->
	
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/core.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/vendors/styles/style.css">
	
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- <script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	console.log(gtag());

	gtag('config', 'UA-119386393-1');
	console.log(gtag());
</script> -->




<title>Insert title here</title>
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
								<h4>blank</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">프로젝트</li>
								</ol>
							</nav>
						</div>
						
					</div>
				</div>
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">

					<div class="pd-20 card-box mb-30">
						<div class="clearfix mb-20">
							
							<div class="pull-left">
								<h4 class="text-blue h4">"정현봉"님의 진행중인 프로젝트</h4>
							</div>
							<div class="pull-right">
								<a href="#" class="btn-block" data-toggle="modal" data-target="#bd-example-modal-lg" type="button">
									프로젝트 생성
								</a>
								<div class="modal fade bs-example-modal-lg" id="bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title" id="myLargeModalLabel">프로젝트 생성</h4>
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											</div>
												<form action = "projectInsert.do" method="post">
											<div class="modal-body">
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">프로젝트 명</label>
														<div class="col-sm-12 col-md-10">
															<input id="project_name" class="form-control" name="project_name" type="text" placeholder="프로젝트 주제를 입력해 주세요">
														</div>
													</div>
										
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">대표컬러</label>
														<div class="col-sm-12 col-md-10">
															<input id="form-control" class="form-control" name="project_color" value="#563d7c" type="color">
														</div>
													</div>
													
											
													
											
												
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">시작일</label>
														<div class="col-sm-12 col-md-10">
															<input id="datepicker1" class="form-control" name="project_std_date" placeholder="Select Date" type="text">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">종료일</label>
														<div class="col-sm-12 col-md-10">
															<input id="datepicker2"  class="form-control" name="project_end_date" placeholder="Select Date" type="text">
														</div>
													</div>
													<hr>

													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">프로젝트 역할</label>
														<div class="col-sm-12 col-md-10">
															<input id="project_sub_title"  class="form-control" type="text" name="project_sub_title" placeholder="Johnny Brown">
														</div>
													</div>



													<div class="form-group row">
														<div style="width: 98%;">
															<div id="person-form-group" class="form-group">


																<div class="fa-hover">

																	<button id="prj-multi-person" type="button"
																		class="btn btn-light"
																		style="float: right; margin-top: 10px;">
																		<i id="prj-add-member" class="icon-copy fi-torsos-female-male"
																			data-toggle="modal" data-target="#Medium-modal">인원추가</i>
																	</button>

																	<div class="modal fade" id="Medium-modal" tabindex="-1"
																		role="dialog" aria-labelledby="myLargeModalLabel"
																		aria-hidden="true">
																		<div class="modal-dialog modal-dialog-centered">
																			<!-- <div class="modal-header"></div> -->
																			<div class="modal-content">
																				<div class="modal-body">
																					<div class="chat-list bg-light-gray">
																						<div class="chat-search select-People"></div>
																						<div class="chat-search" id = "set-name" style="overflow: scroll; position:relative; height: 10%">
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
																					<button id = "clear-set-name" type="button" class="btn btn-primary">정정</button>
																					<button id = "prj-add-project" type="button" class="btn btn-primary">추가</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>



															</div>

														</div>
													</div>

													<div class="form-group row">
														<div id="result"></div>
													</div>
													<div class="prj-add-btn"
														style="display: flex; justify-content: flex-end;">
														<button type="button" id="prj-add-person"
															name="prj-add-person" class="btn btn-light">추가하기</button>
													</div>
												</div>
												<div class="modal-footer">
													<input type="button" class="btn btn-secondary" value="닫기" id="prj-clear" name="prj-clear">
													<button id="prj-save" type="submit" class="btn btn-primary">저장하기</button>
												</div>
											</form>

										</div>
									</div>
								</div>
								
								
							</div>
						</div>


						
						
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">프로젝트</th>
									<th scope="col">참여인원</th>
									<th scope="col">마감일</th>
									<th scope="col">진행도</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>@mdo</td>
									<td>
										<div class="progress mb-20">
											<div
												class="progress-bar bg-success progress-bar-striped progress-bar-animated"
												role="progressbar" style="width: 50%" aria-valuenow="0"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>@fat</td>
									<td>
										<div class="progress mb-20">
											<div
												class="progress-bar bg-success progress-bar-striped progress-bar-animated"
												role="progressbar" style="width: 50%" aria-valuenow="0"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>@twitter</td>
									<td>
										<div class="progress mb-20">
											<div
												class="progress-bar bg-success progress-bar-striped progress-bar-animated"
												role="progressbar" style="width: 50%" aria-valuenow="0"
												aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="collapse-box collapse" id="basic-table">
							<div class="code-box">
								<div class="clearfix">
									<a href="javascript:;"
										class="btn btn-primary btn-sm code-copy pull-left"
										data-clipboard-target="#basic-table-code"><i
										class="fa fa-clipboard"></i> Copy Code</a> <a href="#basic-table"
										class="btn btn-primary btn-sm pull-right collapsed"
										rel="content-y" data-toggle="collapse" role="button"
										aria-expanded="false"><i class="fa fa-eye-slash"></i> Hide
										Code</a>
								</div>
								<pre>
									<code class="xml copy-pre hljs" id="basic-table-code">
									<span class="hljs-tag">&lt;<span class="hljs-name">table</span> <span
											class="hljs-attr">class</span>=<span class="hljs-string">"table"</span>&gt;</span>
									<span class="hljs-tag">&lt;<span class="hljs-name">thead</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">th</span> <span
											class="hljs-attr">scope</span>=<span class="hljs-string">"col"</span>&gt;</span>#<span
											class="hljs-tag">&lt;/<span class="hljs-name">th</span>&gt;</span>
										<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
									<span class="hljs-tag">&lt;/<span class="hljs-name">thead</span>&gt;</span>
									<span class="hljs-tag">&lt;<span class="hljs-name">tbody</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">tr</span>&gt;</span>
										<span class="hljs-tag">&lt;<span class="hljs-name">th</span> <span
											class="hljs-attr">scope</span>=<span class="hljs-string">"row"</span>&gt;</span>1<span
											class="hljs-tag">&lt;/<span class="hljs-name">th</span>&gt;</span>
										<span class="hljs-tag">&lt;/<span class="hljs-name">tr</span>&gt;</span>
									<span class="hljs-tag">&lt;/<span class="hljs-name">tbody</span>&gt;</span>
									<span class="hljs-tag">&lt;/<span class="hljs-name">table</span>&gt;</span>
								</code>
								</pre>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a
					href="https://github.com/dropways" target="_blank">Ankit
					Hingarajiya</a>
			</div>
		</div>
	</div>
	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
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
</body>

<script>
/* 사원추가 */
 $(document).ready(function() {
	 $("#prj-add-member").click(function() {
			$.ajax({
			    url : "${pageContext.request.contextPath}/projectMemberList",
			    type : "POST",
			    contentType : "application/json; charset=utf-8;",
			    dataType : "json",
			    success : function(data) {
			    	
			       for (var i = 0; i < data.length; i++) {
			    	   if(data[i].dept_name == '인사팀'){
			    		 if($('.insa1').length == 0){
				      	 $('.ref').append('<ul id="insa" class="insa1"><span>'+data[i].dept_name+'</span></ul>');		       			 
			    		 }
			    	   }else if(data[i].dept_name == '경영팀'){
			    		   if($('.gyeonyoung1').length == 0){
				      	 		$('.ref').append('<ul id="gyeonyoung" class="gyeonyoung1"><span>'+data[i].dept_name+'</span></ul>');		       			   
			    		   }
			    	   }else if(data[i].dept_name == '개발팀'){
			    		   if($('.geabal1').length == 0){
				      	 		$('.ref').append('<ul id="geabal" class="geabal1"><span>'+data[i].dept_name+'</span></ul>');		       			   
			   		   }	   
			    	   }
			       }
			       for (var i = 0; i < data.length; i++) {
			      	   if(data[i].dept_name == '인사팀'){
			    	      	 $('.insa1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a></li>');		   
			        	   }else if(data[i].dept_name == '경영팀'){
			    	      	 $('.gyeonyoung1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a></li>');		   
			        	   }else if(data[i].dept_name == '개발팀'){
			    	      	 $('.geabal1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a></li>');		   
			        	   }
			         }
			       
			       
			    },
			    error : function() {
			       alert("restController err");  
			    }
			 });
			
		});
		
		
});


	
 
 
	//한개만 단순하게 만들때
	$("#datepicker").datepicker({
		language : 'ko'
	});

	//두개짜리 제어 연결된거 만들어주는 함수
	datePickerSet($("#datepicker1"), $("#datepicker2"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째

	/*
	 * 달력 생성기
	 * @param sDate 파라미터만 넣으면 1개짜리 달력 생성
	 * @example   datePickerSet($("#datepicker"));
	 * 
	 * 
	 * @param sDate, 
	 * @param eDate 2개 넣으면 연결달력 생성되어 서로의 날짜를 넘어가지 않음
	 * @example   datePickerSet($("#datepicker1"), $("#datepicker2"));
	 */
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
			$('#set-name').append('<div class="setting-name" style="display:inline; left=10px; margin-right:10px;">'+a+'</div>&nbsp;&nbsp;');
			
		}
		
		$('#clear-set-name').click(function() {
			$("#set-name").empty();
		});
		
		$('#prj-add-project').click(function() {
			$('#result').append($('#set-name').text());
			$('#set-name').empty();
			$('#Medium-modal').modal('toggle');
		});
		
		$('#prj-save').click(function() {
			$('#project_name').val('');
			$('#datepicker1').val('');
			$('#datepicker2').val('');
			$('#project_sub_title').val('');
			$('#result').empty();
			$('#bd-example-modal-lg').modal('toggle');
			$('.modal-backdrop').remove();
		});
		
		$('#prj-clear').click(function() {
			$('#project_name').val('');
			$('#datepicker1').val('');
			$('#datepicker2').val('');
			$('#project_sub_title').val('');
			$('#result').empty();
			$('#bd-example-modal-lg').modal('toggle');
			$('.modal-backdrop').remove();
		});
		
	
		
		
	
		
		
		
		
    </script>
</html>