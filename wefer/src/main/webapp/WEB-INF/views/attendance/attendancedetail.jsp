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
	
	 
	</script>
</body>
</html>