<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>wefer</title>

<!-- Chart code -->

<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
	<!-- Jquery CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  	
	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="./resources/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="./resources/vendors/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="./resources/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/style.css">

	<style>
		#chartdiv {
		  width: 100%;
		  height: 400px;
		}

</style>
</head>
<body>
	 
 <%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
						
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">프로젝트</li>
									<li class="breadcrumb-item active" aria-current="page">프로젝트 작업</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				
				
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
										<div class="clearfix mb-20">	
							<div class="pull-right">
								<a href="#" class="btn-block" data-toggle="modal" data-target="#bd-example-modal-lg" type="button">
									작업 추가
								</a>
								
								
								<!-- 프로젝트 생성 모달  -->
								<div class="modal fade bs-example-modal-lg" id="bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header">
												<h4 class="modal-title" id="myLargeModalLabel">작업 추가</h4>
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											</div>
												<form action = "projectSubInsert.do" method="post">
											<div class="modal-body">
													<c:if test="${not empty projectDate}">
														<c:forEach items="${projectDate}" var="pdate" varStatus="g">
															<input type="hidden" name = "std" value="${pdate.project_std_date}">
															<input type="hidden" name = "end" value="${pdate.project_end_date}">
															<input type="hidden" name = "pid" value="${pdate.project_id}">
														</c:forEach>
													</c:if>

													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">작업 명</label>
														<div class="col-sm-12 col-md-10">
															<input id="project_sub_title"  class="form-control project_sub_title" type="text" name="project_sub_title" placeholder="Johnny Brown">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">시작일</label>
														<div class="col-sm-12 col-md-10">
															<input id="datepicker1" class="form-control project_std_date" name="project_std_dates" placeholder="Select Date" type="text">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">종료일</label>
														<div class="col-sm-12 col-md-10">
															<input id="datepicker2"  class="form-control project_end_date" name="project_end_dates" placeholder="Select Date" type="text">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-12 col-md-2 col-form-label">중요도</label>
														<div class="col-sm-12 col-md-10">
															<select id="important" class="custom-select col-12">
																<option value="" selected="selected">중요도를 골라주세요</option>
																<option value="높음">높음</option>
																<option value="낮음">낮음</option>
																<option value="중간">중간</option>
															</select>
														</div>
													</div>



													<div class="form-group row">
														<div style="width: 98%;">
															<div id="person-form-group" class="form-group">


																<div class="fa-hover fa-hover-create" style="margin-left:135px;" >

																	
																	
																	<button id="prj-multi-person" type="button"
																		class="btn btn-light"
																		style="float: right; margin:0;">
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
																						<div class="chat-search" id = "set-name" style="overflow: auto; position:relative; height: 10%">
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

											
													<div class="prj-add-btn"
														style="display: flex; justify-content: flex-end;">
														<button type="button" id="prj-add-person"
															name="prj-add-person" class="btn btn-light">추가하기</button>
													</div>
													<div class="form-group row">
														<div class="prj-member-result" style="margin-left:135px; "></div>
												
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
						
				
				<c:if test="${not empty projectSubList}">
				
		<%-- 		<div><p>${projectSubList.project_std_date}</p><p>${projectSubList.project_end_date}</p></div> --%>
					<table class="table">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col">작업명</th>
									<th scope="col">중요도</th>
									<th scope="col">작업일</th>
									<th scope="col">진행상황</th>
									<th scope="col">인원</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${projectSubList}" var="pvo" varStatus="s" >					
								<tr>
									<th scope="row">
										<div style="width: 10px; height: 30px; background-color:${pvo.project_color};">
										</div>
									</th>
									<td>
										<a href="#" onclick="window.location='projectHistory.do'">${pvo.project_sub_title}</a>
										<input type="hidden" name="p_title" value="${pvo.project_sub_title}">
									</td>
									<td>${pvo.project_sub_important}<input type="hidden" name="p_imp" value="${pvo.project_sub_important}"></td>
									<td>${pvo.project_sub_std_date} ~ ${pvo.project_sub_end_date}
									<input type="hidden" name="std_d" value="${pvo.project_sub_std_date}">
									<input type="hidden" name="end_d" value="${pvo.project_sub_end_date}">
									</td>
									<td>
									<input type="hidden" name="p_status" value="${pvo.project_sub_status}">
									${pvo.project_sub_status}
									</td>
									<td>
									<c:forEach items="${pvo.members}" var="member" varStatus="a">
										<input type="hidden" name="p_mem" value="${member.name}">
										${member.name}
									</c:forEach>
									</td>
									<td>
									<input type="hidden" name="prj-id" value="${pvo.project_sub_id}">
									<button type="button" data-toggle="modal" data-target="#bd-example-modal-lg2" class="btn btn-primary prj-update" style="width:50px; height: 30px; padding: 0; font-size: 14px; font-weight: 500; mar">수정</button>												
									<button type="button" class="btn btn-danger prj-del" style="width:50px; height: 30px; padding: 0; margin-right:20px; font-size: 14px; font-weight: 500; float: left;">삭제</button>
									</td>
											</tr>
								</c:forEach>	
							</tbody>
						</table>
					
						<hr>
						
							<div id="chartdiv"></div>
				</c:if>
				<c:if test="${empty projectSubList}">
					<h2>작업이 없습니다.</h2>
					<p>작업을 추가해 주세요</p>
				</c:if>
				</div>
				
		
				
			</div>
		
		</div>
	</div>
<!-- 프로젝트 수정 모달  -->
<div class="modal fade bs-example-modal-lg" id="bd-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myLargeModalLabel">작업 수정</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
				<form action = "projectSubUpdate.do" method="post">
			<div class="modal-body">
					<c:if test="${not empty projectDate}">
						<c:forEach items="${projectDate}" var="pdate" varStatus="g">
							<input type="hidden" name = "std" value="${pdate.project_std_date}">
							<input type="hidden" name = "end" value="${pdate.project_end_date}">
							<input type="hidden" name = "p_pid" value="${pdate.project_id}">
						</c:forEach>
					</c:if>

					<div class="form-group row">
						<label class="col-sm-12 col-md-2 col-form-label">작업 명</label>
						<div class="col-sm-12 col-md-10">
							<input id="project_sub_title_update"  class="form-control project_sub_title_update" type="text" name="project_sub_title_update" placeholder="Johnny Brown">
							<input id="project_sub_id_update"  class="form-control project_sub_id_update" type="hidden" name="project_sub_id_update">
													
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-12 col-md-2 col-form-label">시작일</label>
						<div class="col-sm-12 col-md-10">
							<input id="datepicker3" class="form-control project_std_date_update" name="project_std_date_update" placeholder="Select Date" type="text">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-12 col-md-2 col-form-label">종료일</label>
						<div class="col-sm-12 col-md-10">
							<input id="datepicker4"  class="form-control project_end_date_update" name="project_end_date_update" placeholder="Select Date" type="text">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-12 col-md-2 col-form-label">중요도</label>
						<div class="col-sm-12 col-md-10">
							<select id="update_important" name="update_important" class="custom-select col-12">
								<option value="" selected="selected">중요도를 골라주세요</option>
								<option value="높음">높음</option>
								<option value="낮음">낮음</option>
								<option value="중간">중간</option>
							</select>
						</div>
					</div>



					<div class="form-group row">
						<div style="width: 98%;">
							<div id="person-form-group" class="form-group">


								<div class="fa-hover fa-hover-update" style="margin-left:135px;" >

									
									
									<button id="prj-multi-person-update" type="button"
										class="btn btn-light"
										style="float: right; margin:0;">
										<i id="prj-add-update-member" class="icon-copy fi-torsos-female-male"
											data-toggle="modal" data-target="#Medium-modal2">인원추가</i>
									</button>
									
									

									<div class="modal fade" id="Medium-modal2" tabindex="-1"
										role="dialog" aria-labelledby="myLargeModalLabel"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered">
											<!-- <div class="modal-header"></div> -->
											<div class="modal-content">
												<div class="modal-body">
													<div class="chat-list bg-light-gray">
														<div class="chat-search select-People"></div>
														<div class="chat-search" id = "set-name-update" style="overflow: auto; position:relative; height: 10%">
														<!--  클릭한 참조자 이름  -->
														</div>

														<div
															class="notification-list chat-notification-list customscroll">

															<ul class="submenu ref1">
																<!-- 참조자 나오는 부분 -->
															</ul>

															<!-- 스크롤부분 -->
														</div>
														<!-- 회색박스 -->
													</div>
												</div>
												<div class="modal-footer">
													<button id = "clear-set-name-update" type="button" class="btn btn-primary">정정</button>
													<button id = "prj-add-project-update" type="button" class="btn btn-primary">추가</button>
												</div>
											</div>
										</div>
									</div>
								</div>



							</div>

						</div>
					</div>

			
	
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-secondary" value="닫기" id="prj-clear-update" name="prj-clear-update">
					<button id="prj-save-update" type="submit" class="btn btn-primary">저장하기</button>
				</div>
			</form>

		</div>
	</div>
</div> 
<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv", am4charts.XYChart);
chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

chart.paddingRight = 30;
chart.dateFormatter.inputDateFormat = "yyyy-MM-dd";

var colorSet = new am4core.ColorSet();
colorSet.saturation = 0.4;

chart.data = [ {
  "category": "Module #1",
  "start": "2021-01-06",
  "end": "2021-01-08",
  "color": colorSet.getIndex(0).brighten(0),
  "task": "Gathering requirements"
}, {
  "category": "Module #2",
  "start":"2021-01-10",
  "end": "2021-01-15",
  "color": colorSet.getIndex(2).brighten(0),
  "task": "Gathering requirements"
},  {
  "category": "Module #3",
  "start": "2021-01-13",
  "end": "2021-01-18",
  "color": colorSet.getIndex(4).brighten(0),
  "task": "Gathering requirements"
},{
  "category": "Module #4",
  "start": "2021-01-20",
  "end": "2021-01-21",
  "color": colorSet.getIndex(6).brighten(1.2),
  "task": "Testing and QA"
}, {
  "category": "Module #5",
  "start": "2021-01-09",
  "end": "2021-01-20",
  "color": colorSet.getIndex(8).brighten(0),
  "task": "Gathering requirements"
}];

chart.dateFormatter.dateFormat = "yyyy-MM-dd";
chart.dateFormatter.inputDateFormat = "yyyy-MM-dd";

var categoryAxis = chart.yAxes.push(new am4charts.CategoryAxis());
categoryAxis.dataFields.category = "category";
categoryAxis.renderer.grid.template.location = 0;
categoryAxis.renderer.inversed = true;

var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
dateAxis.renderer.minGridDistance = 70;
dateAxis.baseInterval = { count: 1, timeUnit: "day" };
// dateAxis.max = new Date(2018, 0, 1, 24, 0, 0, 0).getTime();
//dateAxis.strictMinMax = true;
dateAxis.renderer.tooltipLocation = 0;

var series1 = chart.series.push(new am4charts.ColumnSeries());
series1.columns.template.height = am4core.percent(70);
series1.columns.template.tooltipText = "{task}: [bold]{openDateX}[/] - [bold]{dateX}[/]";

series1.dataFields.openDateX = "start";
series1.dataFields.dateX = "end";
series1.dataFields.categoryY = "category";
series1.columns.template.propertyFields.fill = "color"; // get color from data
series1.columns.template.propertyFields.stroke = "color";
series1.columns.template.strokeOpacity = 1;

chart.scrollbarX = new am4core.Scrollbar();

}); // end am4core.ready()

datePickerSet($("#datepicker1"), $("#datepicker2"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째
datePickerSet($("#datepicker3"), $("#datepicker4"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째

//두번 째 두개짜리 제어 연결된거 만들어주는 함수
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

 function datePickerSet(sDate2, eDate2, flag) {

		//시작 ~ 종료 2개 짜리 달력 datepicker	
		if (!isValidStr(sDate2) && !isValidStr(eDate2) && sDate2.length > 0
				&& eDate2.length > 0) {
			var sDay2 = sDate2.val();
			var eDay2 = eDate2.val();
			var std_date = $("input[name=std]").val();
			var end_date = $("input[name=end]").val();
			console.log(std_date);
			console.log(end_date);
		
			

			if (flag && !isValidStr(sDay2) && !isValidStr(eDay2)) { //처음 입력 날짜 설정, update...			
				var sdp2 = sDate2.datepicker().data("datepicker");
				sdp2.selectDate(new Date(sDay2.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요

				var edp2 = eDate2.datepicker().data("datepicker");
				edp2.selectDate(new Date(eDay2.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
				
				
			}

			//시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
					
			
			
			sDate2.datepicker({
				language : 'en',
				dateFormat : 'yyyy-mm-dd',
				minDate : new Date(std_date.replace(/-/g, "/")),
				maxDate : new Date(end_date.replace(/-/g, "/")),
				autoClose : true,
				onSelect : function() {
					datePickerSet(sDate2, eDate2);
				}
			});
			
			

			//종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
			
				
				
					
			eDate2.datepicker({
				language : 'en',
				dateFormat : 'yyyy-mm-dd',
				minDate : new Date(sDay2.replace(/-/g, "/")),
				maxDate : new Date(end_date.replace(/-/g, "/")),
				autoClose : true,
				onSelect : function() {
					datePickerSet(sDate2, eDate2);
				}
			});
			
			
			
			
			
			
			
			

			//한개짜리 달력 datepicker
		} 

         function isValidStr(str) {
             if (str == null || str == undefined || str == "")
                 return true;
             else
                 return false;
         }
     }
	
		

 /*수정용 연락처 */

	 $("#prj-add-update-member").click(function() {
			$.ajax({
			    url : "${pageContext.request.contextPath}/memeberList",
			    type : "POST",
			    contentType : "application/json; charset=utf-8;",
			    dataType : "json",
			    success : function(data) {
			    	
			       for (var i = 0; i < data.length; i++) {
			    	   if(data[i].dept_name == '인사팀'){
			    		 if($('.insa1').length == 0){
				      	 $('.ref1').append('<ul id="insa-update" class="insa-update"><span>'+data[i].dept_name+'</span></ul>');		       			 
			    		 }
			    	   }else if(data[i].dept_name == '경영팀'){
			    		   if($('.gyeonyoung1').length == 0){
				      	 		$('.ref1').append('<ul id="gyeonyoung-update" class="gyeonyoung-update"><span>'+data[i].dept_name+'</span></ul>');		       			   
			    		   }
			    	   }else if(data[i].dept_name == '개발팀'){
			    		   if($('.geabal1').length == 0){
				      	 		$('.ref1').append('<ul id="geabal-update" class="geabal-update"><span>'+data[i].dept_name+'</span></ul>');		       			   
			   		   }	   
			    	   }
			       }
			       for (var i = 0; i < data.length; i++) {
			    	  
			      	   if(data[i].dept_name == '인사팀'){
			    	      	 $('.insa-update').append('<li class="add-person2" value = "' + data[i].name + '" ><a href="#"> ['+data[i].dept_name+']'  + data[i].name + '('+data[i].position+')</a><input class="member_id_update" type="hidden" name="member_id_update" value="'+data[i].id+'"></li>');		   
			        	   }else if(data[i].dept_name == '경영팀'){
			    	      	 $('.gyeonyoung-update').append('<li class="add-person2" value = "' + data[i].name + '" ><a href="#"> ['+data[i].dept_name+']'  + data[i].name + '('+data[i].position+')</a><input class="member_id_update" type="hidden" name="member_id_update" value="'+data[i].id+'"></li>');		   
			        	   }else if(data[i].dept_name == '개발팀'){
			    	      	 $('.geabal-update').append('<li class="add-person2" value = "' + data[i].name + '" ><a href="#"> ['+data[i].dept_name+']' + data[i].name + '('+data[i].position+')</a><input class="member_id_update" type="hidden" name="member_id_update" value="'+data[i].id+'"></li>');		   
			        	   }
			      	   
			      	/*  if(data[i].dept_name == '인사팀'){
		    	      	 $('.insa1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
		        	   }else if(data[i].dept_name == '경영팀'){
		    	      	 $('.gyeonyoung1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
		        	   }else if(data[i].dept_name == '개발팀'){
		    	      	 $('.geabal1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
		        	   } */
			         }
			       
			       
			    },
			    error : function() {
			       alert("restController err");  
			    }
			 });
			
		});
		
		

 
/* 인원 수정 추가 */
$(document).on("click",".add-person2", function() {
	console.log($(this).children(".member_id_update").val());
	var member_id = $(this).children(".member_id_update").val();
	var member_name = $(this).text();
	$('#set-name-update').append('<div class="setting-name-update" style="display:block; left=10px; margin-right:10px;">'+member_name+'&nbsp;&nbsp;<input type="hidden" name="members_id_update" value="'+member_id+'"></div>');
	$(this).css({'pointer-events': 'none','background-color':'red'});
})

/* 인원 수정 칸 비우기 */
$('#clear-set-name-update').click(function() {
	$('.add-person2').css({'pointer-events': 'auto','background-color':'#ecf0f4'});
	$("#set-name-update").empty();
});
/* 인원 수정 하나 지우기 */
$(document).on("click",".del-person-update", function() {
	var member_name = $(this).parent().text().replace("x"," ").trim();
	
	var member_list = $('.add-person2').get();
	for(var i = 0; i < member_list.length; i++){
		var compare_name = $(member_list[i]).text().trim();
		if(member_name == compare_name){
			$('.add-person2:contains("'+compare_name+'")').css({'pointer-events': 'auto','background-color':'#ecf0f4'});
			$(this).parent().remove();
			}
	
		}
		
	
})

/* 인원 수정 리스트 추가 */
$('#prj-add-project-update').click(function() {
	if($('.setting-name-update').length == 0){
		alert('인원을 한명 이상 골라주세요');
	}else if($('.setting-name-update').length > 1){
		alert('인원수정은 한명만 추가 가능합니다.');
	}else{
		if($('.prj-member-list_update').length < 1){
				var member_list = $(".setting-name-update").get();
				var member_id = $("input[name=members_id_update][type=hidden]").get();
				console.log($('.prj-member-list_update').length);
			$('#set-name-update').empty();
			for(var i = 0; i < member_list.length; i++){
				var member_name = $(member_list[i]).text();
				var members_id = $(member_id[i]).val();
				console.log(members_id);
			$('.fa-hover-update').append('<div class="prj-member-list_update" style="width:600px; margin-top:15px; margin-left:10px;">'+member_name+'<a class="del-person-update" href="javascript:void(0);">x</a><input type="hidden" name="prj_member_id_update" value="'+members_id+'"><div>');						
			}
			$('#Medium-modal2').modal('toggle');
			$('.modal-backdrop').remove(); 
		}else{
			$('#set-name-update').empty();
			alert('인원은 한명까지 고를 수 있습니다.');
			$('#Medium-modal2').modal('toggle');
			$('.modal-backdrop').remove(); 
		}	
	}
	
	
	
	
});
 
$('.prj-update').click(function() {
	var id = $(this).parent().parent().find('input[name=prj-id]').val();
	var title = $(this).parent().parent().find('input[name=p_title]').val();
	var std = $(this).parent().parent().find('input[name=std_d]').val();
	var end = $(this).parent().parent().find('input[name=end_d]').val();
	var imp = $(this).parent().parent().find('input[name=p_imp]').val();
	console.log(id);
	console.log(title);
	console.log(std);
	console.log(end);
	console.log(imp);

	$('input[name=project_sub_id_update]').val(id);
	$('input[name=project_sub_title_update]').val(title);
	$('input[name=project_std_date_update]').val(std);
	$('input[name=project_end_date_update]').val(end);
	$('#update_important').val(imp).prop("selected", true);

})		
		
		
$('#prj-save-update').click(function() {
	if(confirm("정말 수정하시겠습니까 ?") == true){
		
	}else{
		return;
	}
})
/* 작업수정리스트 */
/* $('#prj-add-person-update').click(function() {
	var project_sub_title = $('.project_sub_title_update').val();
	var prj_member_list = $('.prj-member-list_update').get();
	var member_id_group = $("input[name=prj_member_id_update][type=hidden]").get();
	var project_sub_std_date = $("input[name=project_std_date_update][type=text]").val();
	var project_sub_end_date = $("input[name=project_end_date_update][type=text]").val();
	var important = $("#update_important option:selected").val();
	if(important == "" || important == null){
		alert("중요도를 선택해 주세요")
	}


	

	
	
	if(project_sub_title == ""||project_sub_std_date == ""||project_sub_end_date == ""||prj_member_list.length == 0){
		alert("항목을 모두 입력해 주세요");
	}else{
		var i = 0;
	$('.prj-member-result-update').append('<div class="prj-sub-group-update"></div>');
	$('.prj-sub-group-update').last().append('<div class="prj-sub-update">'+project_sub_title+'<input type="hidden" name="project_sub_title_update" value="'+project_sub_title+'"></div>');
	
	for(i = 0; i < prj_member_list.length; i++){
		var sub_member = $(prj_member_list[i]).text();
		var sub_members = sub_member.replace(/\x/g,'');
		var prj_member_id = $(member_id_group[i]).val();
		
		
	$('.prj-sub-group-update').last().append('<div class="prj-sub-member">'+sub_members+'<input type="hidden" name="id" value="'+prj_member_id+'"></div>');
		
	}
	$('.prj-sub-group-update').last().append('<div class="prj-sub-dates-update">'+project_sub_std_date+'<input type="hidden" name="project_sub_std_date_updates" value="'+project_sub_std_date+'"></div>');
	$('.prj-sub-group-update').last().append('<div class="prj-sub-dates-update">'+project_sub_end_date+'<input type="hidden" name="project_sub_end_date_updates" value="'+project_sub_end_date+'"></div>');
	$('.prj-sub-group-update').last().append('<div class="importants-update">'+important+'<input type="hidden" name="project_sub_important_updates" value="'+important+'"></div>');
	
	$('.prj-sub-group-update').last().append('<input type="hidden" name="prj_members_id_count_update" value="'+i+'"></div>')
	
	
	$('.prj-sub-group-update').last().append('<a class="del-sub-group-update" href="javascript:void(0);">x</a>');
	$('#project_sub_title_update').val('');
	$('input[name=project_std_date_update][type=text]').val('');
	$('input[name=project_end_date_update][type=text]').val('');
	$('.prj-member-list_update').remove();
	}
	


}) */


/* 연락처 */

	 $("#prj-add-member").click(function() {
			$.ajax({
			    url : "${pageContext.request.contextPath}/memeberList",
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
			    	      	 $('.insa1').append('<li class="add-person1" value = "' + data[i].name + '" ><a href="#"> ['+data[i].dept_name+']'  + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
			        	   }else if(data[i].dept_name == '경영팀'){
			    	      	 $('.gyeonyoung1').append('<li class="add-person1" value = "' + data[i].name + '" ><a href="#"> ['+data[i].dept_name+']'  + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
			        	   }else if(data[i].dept_name == '개발팀'){
			    	      	 $('.geabal1').append('<li class="add-person1" value = "' + data[i].name + '" ><a href="#"> ['+data[i].dept_name+']' + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
			        	   }
			      	   
			      	/*  if(data[i].dept_name == '인사팀'){
		    	      	 $('.insa1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
		        	   }else if(data[i].dept_name == '경영팀'){
		    	      	 $('.gyeonyoung1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
		        	   }else if(data[i].dept_name == '개발팀'){
		    	      	 $('.geabal1').append('<li onclick = "choose(\'['+data[i].dept_name+']'+data[i].name+'('+data[i].position+')\')" class="add-person1" value = "' + data[i].name + '" ><a href="#"> ' + data[i].name + '('+data[i].position+')</a><input class="member_id" type="hidden" name="member_id" value="'+data[i].id+'"></li>');		   
		        	   } */
			         }
			       
			       
			    },
			    error : function() {
			       alert("restController err");  
			    }
			 });
			
		});
		
		

/* 인원추가 */
$(document).on("click",".add-person1", function() {
	console.log($(this).children(".member_id").val());
	var member_id = $(this).children(".member_id").val();
	var member_name = $(this).text();
	$('#set-name').append('<div class="setting-name" style="display:block; left=10px; margin-right:10px;">'+member_name+'&nbsp;&nbsp;<input type="hidden" name="members_id" value="'+member_id+'"></div>');
	$(this).css({'pointer-events': 'none','background-color':'red'});
})

/* 인원칸 비우기 */
$('#clear-set-name').click(function() {
	$('.add-person1').css({'pointer-events': 'auto','background-color':'#ecf0f4'});
	$("#set-name").empty();
});
/* 인원하나 지우기 */
$(document).on("click",".del-person", function() {
	var member_name = $(this).parent().text().replace("x"," ").trim();
	
	var member_list = $('.add-person1').get();
	for(var i = 0; i < member_list.length; i++){
		var compare_name = $(member_list[i]).text().trim();
		if(member_name == compare_name){
			$('.add-person1:contains("'+compare_name+'")').css({'pointer-events': 'auto','background-color':'#ecf0f4'});
			$(this).parent().remove();
			}
	
		}
		
	
})


/* 인원 리스트 추가 */
$('#prj-add-project').click(function() {
	if($('.setting-name').length == 0){
		alert('인원을 한명 이상 골라주세요');
	}else if($('.setting-name').length > 3){
		alert('인원은 세명까지 고를 수 있습니다.');
	}else{
		if($('.prj-member-list').length < 3){
				var member_list = $(".setting-name").get();
				var member_id = $("input[name=members_id][type=hidden]").get();
				console.log($('.prj-member-list').length);
			$('#set-name').empty();
			for(var i = 0; i < member_list.length; i++){
				var member_name = $(member_list[i]).text();
				var members_id = $(member_id[i]).val();
				console.log(members_id);
			$('.fa-hover-create').append('<div class="prj-member-list" style="width:600px; margin-top:15px; margin-left:10px;">'+member_name+'<a class="del-person" href="javascript:void(0);">x</a><input type="hidden" name="prj_member_id" value="'+members_id+'"><div>');						
			}
			$('#Medium-modal').modal('toggle');
			$('.modal-backdrop').remove(); 
		}else{
			$('#set-name').empty();
			alert('인원은 세명까지 고를 수 있습니다.');
			$('#Medium-modal').modal('toggle');
			$('.modal-backdrop').remove(); 
		}	
	}
	
	
	
	
});

/* 작업리스트 */
$('#prj-add-person').click(function() {
	var project_sub_title = $('.project_sub_title').val();
	var prj_member_list = $('.prj-member-list').get();
	var member_id_group = $("input[name=prj_member_id][type=hidden]").get();
	var project_sub_std_date = $("input[name=project_std_dates][type=text]").val();
	var project_sub_end_date = $("input[name=project_end_dates][type=text]").val();
	var important = $("#important option:selected").val();
	if(important == "" || important == null){
		alert("중요도를 선택해 주세요")
	}


	

	
	
	if(project_sub_title == ""||project_sub_std_date == ""||project_sub_end_date == ""||prj_member_list.length == 0){
		alert("항목을 모두 입력해 주세요");
	}else{
		var i = 0;
	$('.prj-member-result').append('<div class="prj-sub-group"></div>');
	$('.prj-sub-group').last().append('<div class="prj-sub">'+project_sub_title+'<input type="hidden" name="project_sub_title" value="'+project_sub_title+'"></div>');
	
	for(i = 0; i < prj_member_list.length; i++){
		var sub_member = $(prj_member_list[i]).text();
		var sub_members = sub_member.replace(/\x/g,'');
		var prj_member_id = $(member_id_group[i]).val();
		
		
	$('.prj-sub-group').last().append('<div class="prj-sub-member">'+sub_members+'<input type="hidden" name="id" value="'+prj_member_id+'"></div>');
		
	}
	$('.prj-sub-group').last().append('<div class="prj-sub-dates">'+project_sub_std_date+'<input type="hidden" name="project_sub_std_date" value="'+project_sub_std_date+'"></div>');
	$('.prj-sub-group').last().append('<div class="prj-sub-dates">'+project_sub_end_date+'<input type="hidden" name="project_sub_end_date" value="'+project_sub_end_date+'"></div>');
	$('.prj-sub-group').last().append('<div class="importants">'+important+'<input type="hidden" name="project_sub_important" value="'+important+'"></div>');
	
	$('.prj-sub-group').last().append('<input type="hidden" name="prj_members_id_count" value="'+i+'"></div>')
	
	
	$('.prj-sub-group').last().append('<a class="del-sub-group" href="javascript:void(0);">x</a>');
	$('#project_sub_title').val('');
	$('input[name=project_std_dates][type=text]').val('');
	$('input[name=project_end_dates][type=text]').val('');
	$('.prj-member-list').remove();
	}
	


})

/* 작업 삭제 */
$(document).on("click",".del-sub-group", function() {
	$(this).parent().remove();
	
})



/* 작업리스트 삭제 */
$(".prj-del").click(function(){
	var projectP = $(this).parent();
	var projectDiv = projectP.find('input[name=prj-id]').val();
	console.log(projectDiv);
    if(confirm("정말 삭제하시겠습니까 ?") == true){
		$.ajax({
			url : "${pageContext.request.contextPath}/projectSubDelete.do",
			method : "POST",
			data : {
				project_sub_id : projectDiv
			},
			success : function(data) {
				alert(data);
				projectP.parent().remove();
			},
			error : function(request, status,
					error) {

				alert("code:" + request.status
						+ "\n" + "message:"
						+ request.responseText
						+ "\n" + "error:"
						+ error);
			}
		});
    }
    else{
        return ;
    }
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
</body>	

</html>