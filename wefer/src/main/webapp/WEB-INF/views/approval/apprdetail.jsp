<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>approval Form</title>
<!-- Jquery CDN -->
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
<script>
	function check0() {
		if ($('#check0').css('display') == 'none') {
			$('#check0').show();
		} else {
			$('#check0').hide();
		}
	}
	function check1() {
		if ($('#check1').css('display') == 'none') {
			$('#check1').show();
		} else {
			$('#check1').hide();
		}
	}
	function check2() {
		if ($('#check2').css('display') == 'none') {
			$('#check2').show();
		} else {
			$('#check2').hide();
		}
	}
</script>
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

.check {
	float: right;
	padding: 10px !important;
	visibility: hidden;
	margin-left: 10px;
	
}

.name {
	text-align: center;
	padding: inherit;
}

.conf {
	display: none;
	text-align: center;
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

				<div class="pd-20 card-box mb-30">
					<div>
					
							<form  id="conf" action="/wefer/confirm.do">
								<input type = "hidden" name = "payment_id" value = "${payment_id.payment_id}">
						<ul class="list-group list-group-flush">
							<li class="list-group-item pt-20 pb-20">
							<c:if
									test="${not empty payment_id.s_member_id0}">
									<div class="card card-box check" style="visibility: visible;">
										<div class="card-header name">
											${payment_id.s_member_id0}</div><%-- 
													<input type = "hidden" name="s_member_id0" value = "${payment_id.s_member_id0}"/> --%>
										<div class="card-body">
											<div class="conf" id="check0">
												<i class="icon-copy fa fa-check" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</c:if> <c:if test="${not empty payment_id.s_member_id1}">
									<div class="card card-box check" style="visibility: visible;">
										<div class="card-header name">${payment_id.s_member_id1}</div><%-- 
												<input type = "hidden" name="s_member_id1" value = "${payment_id.s_member_id1}"/> --%>
												<div class="card-body">
											<div class="conf" id="check1">
												<i class="icon-copy fa fa-check" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</c:if> <c:if test="${not empty payment_id.s_member_id2}">
									<div class="card card-box check" style="visibility: visible;">
										<div class="card-header name" >${payment_id.s_member_id2}</div>
										<%-- <input type = "hidden" name="s_member_id2" value = "${payment_id.s_member_id2}"/> --%>
										<div class="card-body">
											<div class="conf" id="check2">
												<i class="icon-copy fa fa-check" aria-hidden="true"></i>
											</div>
										</div>
									</div>
								</c:if></li>
							<li class="list-group-item pt-20 pb-20">
								<div class="container">
									<h6 class="weight-400 d-flex">
										<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
										${payment_id.payment_item}
									</h6>
								</div>
							</li>
							<li class="list-group-item pt-20 pb-20">
								<div class="container">
									<h6 class="weight-400 d-flex">
										<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
										<c:choose>
											<c:when
												test="${payment_id.conference.conference_member == null}">
												<td>${payment_id.id}</td>
											</c:when>
											<c:otherwise>
												<td>${payment_id.conference.conference_member}</td>
											</c:otherwise>
										</c:choose>
									</h6>
								</div>
							</li>
							<li class="list-group-item pt-20 pb-20">
								<div class="container">
									<h6 class="weight-400 d-flex">
										<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
										첨부파일
									</h6>
								</div>
							</li>
							<li class="list-group-item pt-20 pb-20">
								<div class="container">
									<h6 class="weight-400 d-flex">
										<i class="icon-copy dw dw-checked mr-2" data-color="#1b00ff"></i>
										<c:if test="${payment_id.conference.conference_title != null}">
										${payment_id.conference.conference_title}
										</c:if>
									</h6>
									<c:choose>
										<c:when
											test="${payment_id.conference.conference_contents == null}">
											<td>${payment_id.annual_content}</td>
										</c:when>
										<c:otherwise>
											<td>${payment_id.conference.conference_contents}</td>
										</c:otherwise>
									</c:choose>
									<input type="button" id="confbutton"
						class="pd-20 btn btn-primary btn-lg" style="float: right;"
						value="승인하기" />
									
								</div>
								
							</li>
							</ul>
						</form>
					</div>
				</div>
			<div class="card">
							<div class="card-header">
								<button class="btn btn-block" data-toggle="collapse" data-target="#faq1" aria-expanded="true">
									COMMENTS
								</button>
							</div>
							<div id="faq1" data-parent="#accordion" class="collapse show" style="">
								<div class="card-body">
								 <%@ include file="/WEB-INF/views/approval/appr-comment.jsp"%>
								<div class="container">
									<div class="commentList"></div>
								</div>
								</div><div class="container">
									<label for="content">comment</label>
									<form name="commentInsertForm">
										<div class="input-group">
											<input type="hidden" name="payment_id" value="${payment_id.payment_id}" />
											 <input type="text" class="form-control" id="contents" name="contents"
												placeholder="내용을 입력하세요.">
												 <span class="input-group-btn">
												<button class="btn btn-default" type="button"
													name="commentInsertBtn" >등록</button>
											</span>
										</div>
									</form>
								</div>
							</div>
					
								
						</div>	
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(function() {
			$("#confbutton").click(function() {
				confirm("${payment_id.id}"+"님의 결재를 승인하시겠습니까?");
				$("#conf").submit();
			});
		})
	</script>	
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