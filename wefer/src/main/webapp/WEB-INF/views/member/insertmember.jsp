<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="UTF-8">
<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

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
								<h4>직원추가</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">직원추가</li>
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
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
					<div class="pd-20 card-box mb-30">
						<div class="clearfix">
							<div class="pull-left">
								<h4>직원 추가</h4>
							</div>
						</div>
						
						
				<form action="insertmember.do" method="post" enctype="multipart/form-data">
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">아이디</label>
								<div class="col-sm-12 col-md-10">
									<input id = "id" name="id" class="form-control" type="text"
										placeholder="사원번호">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">패스워드</label>
								<div class="col-sm-12 col-md-10">
									<input name="password" class="form-control" type="password"
										placeholder="1234">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">이름</label>
								<div class="col-sm-12 col-md-10">
									<input name="name" class="form-control" type="text"
										placeholder="이름">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">생년월일</label>
								<div class="col-sm-12 col-md-10">
									<input name="birth" class="form-control" type="text"
										placeholder="19990101">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">전화번호</label>
								<div class="col-sm-12 col-md-10">
									<input name="phone" class="form-control" value="1-(111)-111-1111" type="tel">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">이메일</label>
								<div class="col-sm-12 col-md-10">
									<input name="email" class="form-control" value="WEFER@WEFER.com"
										type="email">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">부서</label>
								<div class="col-sm-12 col-md-10">
									<select  name="dept_no" class="custom-select col-12">
										<option selected="">부서를 선택하세요</option>
										<option value="1">인사팀</option>
										<option value="2">경영팀</option>
										<option value="3">개발팀</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">직급</label>
								<div class="col-sm-12 col-md-10">
									<select name="position" class="custom-select col-12">
										<option selected="">직급을 선택하세요</option>
										<option value="사원">사원</option>
										<option value="대리">대리</option>
										<option value="과장">과장</option>
										<option value="부장">부장</option>
										<option value="사장">사장</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">관리권한</label>
								<div class="col-sm-12 col-md-10">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn btn-outline-secondary active"> <input
											type="radio" name="manage" id="option1" autocomplete="off" value="1">
											 예 </label> 
										<label class="btn btn-outline-secondary"> <input
											type="radio" name="manage" id="option2" autocomplete="off" checked value="0">
											아니요 </label>
									</div>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">프로필 이미지</label>
								<div class="col-sm-12 col-md-10">
									<input type ="file" name="profileimg" required="required">
								</div>
							</div>
						<input type="submit" value="등록하기">
						</form>
					</div>
				</div>
				<div class="footer-wrap pd-20 mb-20 card-box">
					DeskApp - Bootstrap 4 Admin Template By <a
						href="https://github.com/dropways" target="_blank">Ankit
						Hingarajiya</a>
				</div>
			</div>
		</div>
		</div>
</body>
</html>