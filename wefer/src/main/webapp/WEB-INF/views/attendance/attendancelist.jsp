<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>

<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>
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
	href="./resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css"
	href="./resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
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
								<h4>DataTable</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">DataTable</li>
								</ol>
							</nav>
						</div>
						<div class="col-md-6 col-sm-12 text-right">
							<div class="dropdown">
								<a class="btn btn-primary dropdown-toggle" href="#"
									role="button" data-toggle="dropdown"> January 2018 </a>
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Export List</a> <a
										class="dropdown-item" href="#">Policies</a> <a
										class="dropdown-item" href="#">View Assets</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Simple Datatable start -->
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">Data Table Simple</h4>
						<p class="mb-0">
							you can find more options <a class="text-primary"
								href="https://datatables.net/" target="_blank">Click Here</a>
						</p>
						<p class="mb-0">
							<!-- <label><input class="deptrd" type="radio" name="dept_item" value="" checked="checked">오늘</label>
							<label><input class="deptrd" type="radio" name="dept_item" value="">일주일</label>
							<label><input class="deptrd" type="radio" name="dept_item" value="">날짜선택</label> 
							<input style="width: 100px;" id="datepicker1" name="project_std_date" placeholder="Select Date" type="text">
							<input style="width: 100px;" id="datepicker2" name="project_end_date" placeholder="Select Date" type="text">
							<input style="" id="searchDateList" type="button" name="search" value="검색">-->
							<div class="btn-group btn-group-toggle" data-toggle="buttons" >
								<label class="btn btn-outline-secondary active">
									<input type="radio" name="options" id="option1" autocomplete="off" value="1" checked> 오늘</label>
								<label class="btn btn-outline-secondary">
									<input type="radio" name="options" id="option2" autocomplete="off" value="2"> 일주일</label>
								<label class="btn btn-outline-secondary">
									<input type="radio" name="options" id="option3" autocomplete="off" value="3"> 날짜선택</label>
							</div>
								&nbsp;&nbsp;
							<div class="btn-group btn-group-toggle disset" data-toggle="buttons" >
								<input style="width: 100px; height: 40px;" id="datepicker1" name="project_std_date" placeholder=" Select Date" type="text">
							</div>
							<div class="btn-group btn-group-toggle disset" data-toggle="buttons" >
								<input style="width: 100px; height: 40px;" id="datepicker2" name="project_end_date" placeholder=" Select Date" type="text">
							</div>
							<div class="btn-group btn-group-toggle disset" data-toggle="buttons" >
								<button name="search" type="button" class="btn btn-secondary">검색</button>
							</div>
						</p>
					</div>
					
					<div class="pb-20" id="day_list">
						<table class="table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">이름</th>
									<th>부서</th>
									<th>근무일자</th>
									<th>출근시간</th>
									<th>퇴근시간</th>
									<th>근무시간</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="dlist" items="${dlist}">
								<tr>
									<td>${dlist.member.name}</td>
									<td>
									<c:choose>
									<c:when test="${dlist.member.dept_no eq '1'}">인사팀</c:when>
									<c:when test="${dlist.member.dept_no eq '2'}">경영팀</c:when>
									<c:otherwise>개발팀</c:otherwise>
									</c:choose>
									</td>
									<td>${dlist.attend_work_date}</td>
									<td>${dlist.attend_gotowork}</td>
									<td>${dlist.attend_gotowork}</td>
									<td>${dlist.attend_work_time}</td>
								<tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					
					<div class="pb-20" id="week_list">
						<table class="table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">이름</th>
									<th>부서</th>
									<th>근무일자</th>
									<th>출근시간</th>
									<th>퇴근시간</th>
									<th>근무시간</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="wlist" items="${wlist}">
								<tr>
									<td>${wlist.member.name}</td>
									<td>
									<c:choose>
									<c:when test="${wlist.member.dept_no eq '1'}">인사팀</c:when>
									<c:when test="${wlist.member.dept_no eq '2'}">경영팀</c:when>
									<c:otherwise>개발팀</c:otherwise>
									</c:choose>
									</td>
									<td>${wlist.attend_work_date}</td>
									<td>${wlist.attend_gotowork}</td>
									<td>${wlist.attend_gotowork}</td>
									<td>${wlist.attend_work_time}</td>
								<tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					
					<div class="pb-20" id="select_list">
						<table class="table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">이름</th>
									<th>부서</th>
									<th>근무일자</th>
									<th>출근시간</th>
									<th>퇴근시간</th>
									<th>근무시간</th>
								</tr>
							</thead>
							<tbody class="resultsearch">
								
							</tbody>
						</table>
					</div>
					
				</div>
				<!-- Simple Datatable End -->
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a
					href="https://github.com/dropways" target="_blank">Ankit
					Hingarajiya</a>
			</div>
		</div>
	</div>
	<!-- js -->
	<script
		src="./resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<!-- buttons for Export datatable -->
	<script
		src="./resources/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script
		src="./resources/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
	<script src="./resources/vendors/scripts/datatable-setting.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		$('#day_list').css('display','block');
		$('#week_list').css('display','none');
		$('#select_list').css('display','none');
		$('.disset').css('display','none');

	});
	
	
	$('input[type=radio][name=options]').on('click',function(){
		var chkvalue = $('input[type=radio][name=options]:checked').val();
		if(chkvalue=='1'){
			$('#day_list').css('display','block');
			$('#week_list').css('display','none');
			$('#select_list').css('display','none');
			$('.disset').css('display','none');
		}else if(chkvalue=='2'){
			$('#day_list').css('display','none');
			$('#week_list').css('display','block');
			$('#select_list').css('display','none');
			$('.disset').css('display','none');
		}else if(chkvalue=='3'){
			$('.disset').css('display','inline-block');
		}
	});
	
	$("button[name=search]").click(function() {
		
		 var startdate =  $("input[name=project_std_date]").val()
		 var enddate = $("input[name=project_end_date]").val()
		 console.log("로그는" + startdate +"그리고"+ enddate);
		 $.ajax({
			type : 'post',
			url : '${contextPath}/searchattendancelist.do',
			data : {'startdate':startdate , 'enddate':enddate},
			dataType : 'json',
			success : function(data){
					$(".resultsearch").empty();
					for(var i=0; i<data.length; i++ ){
						var dept_name = data[i].member.dept_no;
						if(dept_name == 1){
							dept_name = '인사팀';
							}else if(dept_name == 2){
								dept_name='경영팀';
							}else{
								dept_name="개발팀";
							}
						$(".resultsearch").append('<tr><td>'+ data[i].member.name +'</td>'+				
								'<td>'+dept_name+'</td>'+	
								'<td>'+data[i].attend_work_date+'</td>'+
								'<td>'+data[i].attend_gotowork+'</td>'+
								'<td>'+data[i].attend_gotowork+'</td>'+
								'<td>'+data[i].attend_work_time+'</td></tr>')
						$('#day_list').css('display','none')
						$('#week_list').css('display','none')
						$('#select_list').css('display','block')
								
					}
				},
				error : function() {
					 alert("restController err"); 
				}
		 });
	})
	
	
	
	
	
	
	
	
	
	
	
	
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
	 
	 
	</script>
</body>
</html>