<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>wefer</title>
	<!-- 구글차트 -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['timeline']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var container = document.getElementById('timeline');
        var chart = new google.visualization.Timeline(container);
        var dataTable = new google.visualization.DataTable();

        dataTable.addColumn({ type: 'string', id: 'President' });
        dataTable.addColumn({ type: 'date', id: 'Start' });
        dataTable.addColumn({ type: 'date', id: 'End' });
        dataTable.addRows([
          [ 'Washington', new Date(1789, 3, 30), new Date(1797, 2, 4) ],
          [ 'Adams',      new Date(1797, 2, 4),  new Date(1801, 2, 4) ],
          [ 'Jefferson',  new Date(1801, 2, 4),  new Date(1809, 2, 4) ]]);

        chart.draw(dataTable);
      }
    </script>
	
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


</head>
<body>
	 
 <%@ include file="/WEB-INF/views/common/header.jsp" %>
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
									<li class="breadcrumb-item active" aria-current="page">프로젝트 작업</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				
				
				<c:if test="${not empty projectSubList}">
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
		<%-- 		<div><p>${projectSubList.project_std_date}</p><p>${projectSubList.project_end_date}</p></div> --%>
					<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">작업명</th>
									<th scope="col">중요도</th>
									<th scope="col">인원</th>
									<th scope="col">진행상황</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${projectSubList}" var="pvo" varStatus="s" step="1" begin="0" end="0" >					
								<tr>
									<th scope="row"><div style="width: 10px; height: 30px; background-color:${pvo.project.project_color};"></div></th>
									<td>${pvo.projectSub.project_sub_title}</td>
									<td>${pvo.projectSub.project_sub_important}</td>
								<td>
								<c:forEach items="${projectSubList}" var="pvoid" varStatus="a" step="1" begin="0" end="1" >
									${pvoid.member.name}
								</c:forEach>
								</td>
									<td>${pvo.projectSub.project_sub_status}</td>
							</tr>
								</c:forEach>	
							</tbody>
						</table>
						<br>
						<hr>
						<br>
						 <div class="progress mb-20">
							<div
								class="progress-bar bg-success progress-bar-striped progress-bar-animated"
								role="progressbar" style="width: 50%" aria-valuenow="0"
								aria-valuemin="0" aria-valuemax="100"></div>
							</div>
				</div>
				</c:if>
		
				
			</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
			<h4>일정</h4>
			<div id="timeline" style="height: 20%; width: 100%"></div>
			</div>
		</div>
	</div>

	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
</body>	

</html>