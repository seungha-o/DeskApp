<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>

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

					<form name = "writeForm" id =  "frm" action = "/wefer/aInsert.do" method = "post">
				<div class="pd-20 card-box mb-30"> 
						<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">제목</label>
							<div class="col-sm-12 col-md-10 wrap">
								<select id="payment_item" name="payment_item"
									onchange="select()" class="custom-select col-3">
									<option value="no">Choose...</option>
									<option value="휴가">휴가계</option>
								</select> <input id="ann" class="form-control" type="text"
									placeholder="제목을 입력하세요" />
							</div>
						</div>
						<div id="annDate" style="display: none">
							<div class="form-group row">
								<label for="example-datetime-local-input"
									class="col-sm-12 col-md-2 col-form-label">시작일</label>
								<div class="col-sm-12 col-md-10">
									<input class="form-control datetimepicker"
										placeholder="Choose Date anf time" name="annual_stddate"
										type="text" id="start">
								</div>
							</div>
							<div class="form-group row">
								<label for="example-datetime-local-input"
									class="col-sm-12 col-md-2 col-form-label">종료일</label>
								<div class="col-sm-12 col-md-10">
									<input class="form-control datetimepicker"
										placeholder="Choose Date anf time" name="annual_enddate"
										type="text" id="end" onchange="time()">
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">수신참조인</label>

							<div class="col-sm-12 col-md-10 wrap">

								<input placeholder="Search Here" type="text"
									data-role="tagsinput"> <i
									class="icon-copy fi-torsos-female-male"
									style="font-size: 40px; padding-left: 5px;" data-toggle="modal"
									data-target="#Medium-modal"></i>

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
						<div class="form-group row">
							<label class="col-sm-10 col-md-2 col-form-label">참조문서</label>
							<div class="col-sm-12 col-md-10">
								<input type="file" class="form-control">

							</div>
						</div>	
						
				</div>
				<div class="html-editor pd-20 card-box mb-30">
				<%@ include file="/WEB-INF/views/common/aaa.jsp"%>
				</div>
				<input type = "button" id = "savebutton"  class="pd-20 btn btn-primary btn-lg"
			                  style="float: right;" value = "결재작성"/>
						</form>
			</div>
		</div>
	
	</div>
	<script type="text/javascript">
	   $.ajax({
      url : "${pageContext.request.contextPath}/memeberList",
      type : "POST",
      contentType : "application/json; charset=utf-8;",
      dataType : "json",
     
      /*  success : function(data) {
         for (var i = 0; i < data.length; i++) {
        	 $('.ref').append('<li onclick="choose(\''+data[i].name+'\');"><a href ="#">' + data[i].name + '</a></li>')
         }
      }, */
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
	       
	       
	    },error : function() {
         alert("restController err");  
      }
   });
	   
	  


	function select() {
		var x = document.getElementById("payment_item").value;
		if (x == "휴가") {
			$("#ann").val("휴가신청서입니다.");
			$("#annDate").show();
		}
	}
	
	function choose(a) {
		$('#set-name').append('<div class="setting-name" style="display:inline; left=10px; margin-right:10px;">'+a+'</div>&nbsp;&nbsp;');
		
	}
	
	$('#clear-set-name').click(function() {
		$("#set-name").empty();
	});
	
	
	
</script>
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
	<script src="./resources/src/plugins/switchery/switchery.min.js"></script>
	<script
		src="./resources/src/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>
	<script
		src="./resources/src/plugins/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
	<script src="./resources/vendors/scripts/advanced-components.js"></script>
</body>
</html>