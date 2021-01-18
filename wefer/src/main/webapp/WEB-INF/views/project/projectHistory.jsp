<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<title>wefer</title>

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


	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<!-- 스마트 에디터 -->
	<script type="text/javascript" src="./resources/src/se/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
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
									<li class="breadcrumb-item active" aria-current="page">프로젝트 히스토리</li>
								</ol>
							</nav>
						</div>
						
					</div>
				</div>
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
				<div class="blog-list" style="width: 900px; margin: 0 auto;" >
					<div class="row no-gutters">						
						<div class="col-lg-8 col-md-12 col-sm-12" style = "flex: 0 0 100%; max-width: 100%;">
							<div class="blog-caption">
								<div class="blog-by">
									<form action="/prjHistory.do">
										<textarea name="annual_content" id="smartEditor" style="width: 100%; height: 200px;"></textarea>
										<button type="button" class="btn btn-secondary btn-lg btn-block" style="background-color: #0b132b">Block level button</button>
									</form>
									<hr>
								</div>
							</div>
						</div>
					</div>
									<ul>
										<li>
											<div class="row no-gutters">
												<div class="col-lg-4 col-md-12 col-sm-12">
													<div class="blog-img" style="background: url(&quot;vendors/images/img2.jpg&quot;) center center no-repeat;">
														<img src="resources/vendors/images/img2.jpg" alt="" class="bg_img" style="display: none;">
													</div>
												</div>
												<div class="col-lg-8 col-md-12 col-sm-12">
													<div class="blog-caption">
														<h4><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></h4>
														<div class="blog-by">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
															<hr>
														</div>
													</div>
												</div>
												<div id="prj-comment-area" style="background-color: gray; width: 900px; height: 100%;">
												<form action="/prjHistoryComment.do" method="post">
													<input type="text" name="comment">
												</form>
												</div>
											</div>
										</li>
										<li>
											<div class="row no-gutters">
												<div class="col-lg-4 col-md-12 col-sm-12">
													<div class="blog-img" style="background: url(&quot;vendors/images/img3.jpg&quot;) center center no-repeat;">
														<img src="vendors/images/img3.jpg" alt="" class="bg_img" style="display: none;">
													</div>
												</div>
												<div class="col-lg-8 col-md-12 col-sm-12">
													<div class="blog-caption">
														<h4><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></h4>
														<div class="blog-by">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
															<div class="pt-10">
																<a href="#" class="btn btn-outline-primary">Read More</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="row no-gutters">
												<div class="col-lg-4 col-md-12 col-sm-12">
													<div class="blog-img" style="background: url(&quot;vendors/images/img4.jpg&quot;) center center no-repeat;">
														<img src="vendors/images/img4.jpg" alt="" class="bg_img" style="display: none;">
													</div>
												</div>
												<div class="col-lg-8 col-md-12 col-sm-12">
													<div class="blog-caption">
														<h4><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></h4>
														<div class="blog-by">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
															<div class="pt-10">
																<a href="#" class="btn btn-outline-primary">Read More</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="row no-gutters">
												<div class="col-lg-4 col-md-12 col-sm-12">
													<div class="blog-img" style="background: url(&quot;vendors/images/img5.jpg&quot;) center center no-repeat;">
														<img src="vendors/images/img5.jpg" alt="" class="bg_img" style="display: none;">
													</div>
												</div>
												<div class="col-lg-8 col-md-12 col-sm-12">
													<div class="blog-caption">
														<h4><a href="#">Lorem ipsum dolor sit amet, consectetur adipisicing elit</a></h4>
														<div class="blog-by">
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
															<div class="pt-10">
																<a href="#" class="btn btn-outline-primary">Read More</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
				</div>
			</div>
		</div>
	</div>
		<script type="text/javascript">
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
		$(function() {
			$("#savebutton").click(
					function() {
						oEditors.getById["smartEditor"].exec(
								"UPDATE_CONTENTS_FIELD", []);
						$("#frm").submit();
					});
		})
	</script>
	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
</body>
</html>