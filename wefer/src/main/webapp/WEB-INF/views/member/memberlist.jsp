<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>

<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="./resources/vendors/images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="./resources/vendors/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="./resources/vendors/images/favicon-16x16.png">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/core.css">
<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="./resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="./resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/style.css">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
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
								<a class="btn btn-primary dropdown-toggle" href="#" role="button" data-toggle="dropdown">
									January 2018
								</a>
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Export List</a>
									<a class="dropdown-item" href="#">Policies</a>
									<a class="dropdown-item" href="#">View Assets</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Simple Datatable start -->
				<div class="card-box mb-30">
					<div class="pd-20">
						<h4 class="text-blue h4">Data Table Simple</h4>
						<p class="mb-0">you can find more options <a class="text-primary" href="https://datatables.net/" target="_blank">Click Here</a></p>
						<p class="mb-0">
							<label><input class="deptrd" type="radio" name="dept_item" value="" checked="checked">모든부서</label>
							<label><input class="deptrd" type="radio" name="dept_item" value="1">인사팀</label>
							<label><input class="deptrd" type="radio" name="dept_item" value="2">경영팀</label>
							<label><input class="deptrd" type="radio" name="dept_item" value="3">개발팀</label>
							<input type="text" name="keyword" placeholder="이름입력">
							<input type="button" name="search" value="검색">
						</p>
					</div>
					<div class="pb-20">
						<table class="table stripe hover nowrap">
							<thead>
								<tr>
									<th class="table-plus datatable-nosort">이름</th>
									<th>부서</th>
									<th>직급</th>
									<th>전화번호</th>
									<th>입사일</th>
									<th class="datatable-nosort">매뉴</th>
								</tr>
							</thead>
							<tbody class="result">
					
								
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- Simple Datatable End -->
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				DeskApp - Bootstrap 4 Admin Template By <a href="https://github.com/dropways" target="_blank">Ankit Hingarajiya</a>
			</div>
		</div>
	</div>
	<!-- js -->

	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<!-- buttons for Export datatable -->
	<script src="./resources/src/plugins/datatables/js/dataTables.buttons.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/buttons.print.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/buttons.html5.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/buttons.flash.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/pdfmake.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/vfs_fonts.js"></script>
	<!-- Datatable Setting js -->
	<script src="./resources/vendors/scripts/datatable-setting.js"></script>
	<script type="text/javascript">
	
	
	$(document).ready(function() {
		var deptno = "";
		$.ajax({
			type : 'post',
			url : '${contextPath}/deptmemberlist.do',
			data : {'dept' : deptno},
			dataType : 'json',
			success : function(data){
				$(".result").empty();
				for(var i=0; i<data.length; i++ ){
					var dept_name = data[i].dept_no;
					if(dept_name == 1){
						dept_name = '인사팀';
						}else if(dept_name == 2){
							dept_name='경영팀';
						}else{
							dept_name="개발팀";
						}
					console.log(dept_name);
					
					$(".result").append('<tr><td>'+ data[i].name +'</td>'+				
							'<td>'+dept_name+'</td>'+	
							'<td>'+data[i].position+'</td>'+
							'<td>'+data[i].phone+'</td>'+
							'<td>'+data[i].employ_date+'</td>'+
							'<td><div class="dropdown">'+
									'<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">'+
										'<i class="dw dw-more"></i>'+
									'</a>'+
									'<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">'+
										'<a class="dropdown-item" href="${contextPath}/deletemember.do?id='+data[i].id+'"><i class="dw dw-delete-3"></i> Delete</a>'+
									'</div>'+
								'</div>'+
							'</td></tr>')
				}
			},
			error : function() {
				 alert("restController err"); 
			}
		});
	
		
	$("input[type=radio][name=dept_item]").click(function() {
		 deptno = $(this).val();
		console.log("로그는" + deptno);
		$.ajax({
			type : 'post',
			url : '${contextPath}/deptmemberlist.do',
			data : {'dept' : deptno},
			dataType : 'json',
			success : function(data){
				$(".result").empty();
				for(var i=0; i<data.length; i++ ){
					var dept_name = data[i].dept_no;
					if(dept_name == 1){
						dept_name = '인사팀';
						}else if(dept_name == 2){
							dept_name='경영팀';
						}else{
							dept_name="개발팀";
						}
					console.log(dept_name);
					
					$(".result").append('<tr><td>'+ data[i].name +'</td>'+				
							'<td>'+dept_name+'</td>'+	
							'<td>'+data[i].position+'</td>'+
							'<td>'+data[i].phone+'</td>'+
							'<td>'+data[i].employ_date+'</td>'+
							'<td><div class="dropdown">'+
									'<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">'+
										'<i class="dw dw-more"></i>'+
									'</a>'+
									'<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">'+
										'<a class="dropdown-item" href="${contextPath}/deletemember.do?id='+data[i].id+'"><i class="dw dw-delete-3"></i> Delete</a>'+
									'</div>'+
								'</div>'+
							'</td></tr>')
				}
			},
			error : function() {
				 alert("restController err"); 
			}
		});
	}) 
	$("input[type=button][name=search]").click(function() {
		var keyword = $("input[type=text][name=keyword]").val()
		console.log("로그는" + keyword);
		$.ajax({
			type : 'post',
			url : '${contextPath}/searchmemberlist.do',
			data : {'keyword' : keyword},
			dataType : 'json',
			success : function(data){
				$(".result").empty();
				for(var i=0; i<data.length; i++ ){
					var dept_name = data[i].dept_no;
					if(dept_name == 1){
						dept_name = '인사팀';
						}else if(dept_name == 2){
							dept_name='경영팀';
						}else{
							dept_name="개발팀";
						}
					console.log(dept_name);
					
					$(".result").append('<tr><td>'+ data[i].name +'</td>'+				
							'<td>'+dept_name+'</td>'+	
							'<td>'+data[i].position+'</td>'+
							'<td>'+data[i].phone+'</td>'+
							'<td>'+data[i].employ_date+'</td>'+
							'<td><div class="dropdown">'+
									'<a class="btn btn-link font-24 p-0 line-height-1 no-arrow dropdown-toggle" href="#" role="button" data-toggle="dropdown">'+
										'<i class="dw dw-more"></i>'+
									'</a>'+
									'<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">'+
										'<a class="dropdown-item" href="${contextPath}/deletemember.do?id='+data[i].id+'"><i class="dw dw-delete-3"></i> Delete</a>'+
									'</div>'+
								'</div>'+
							'</td></tr>')
				}
			},
			error : function() {
				 alert("restController err"); 
			}
		});
	}) 
		
		
		
	});
	
	</script>
</body>
</html>