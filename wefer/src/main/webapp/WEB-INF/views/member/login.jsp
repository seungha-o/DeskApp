<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<body class="login-page">
	<div class="login-header box-shadow">
		<div
			class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo">
				<a href="login.html"> <img
					src="./resources/vendors/images/deskapp-logo.svg" alt="">
				</a>
			</div>
			<div class="login-menu">
				<ul>

				</ul>
			</div>
		</div>
	</div>
	<div class="login-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src="./resources/vendors/images/login-page-img.png" alt="">
				</div>
				
				
				<div class="col-md-6 col-lg-5" id="logincontainer">
					<div class="login-box bg-white box-shadow border-radius-10">
						<div class="login-title">
							<img src="./resources/vendors/images/wefer2.png" alt=""
								class="light-logo">
							<h2 class="text-center text-primary">WEFER</h2>
						</div>
						<form action="login.do" method="post">
							<div class="select-role"></div>
							<div class="input-group custom">
								<input name="id" type="text"
									class="form-control form-control-lg" placeholder="Username" autocomplete="off">
								<div class="input-group-append custom">
									<span class="input-group-text"><i
										class="icon-copy dw dw-user1"></i></span>
								</div>
							</div>
							<div class="input-group custom">
								<input name="password" type="password"
									class="form-control form-control-lg" placeholder="**********" autocomplete="off">
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="dw dw-padlock1"></i></span>
								</div>
							</div>
							<div
								style="margin: auto; text-align: center; padding-bottom: 20px;">
								<label style="margin: 0" onclick="findid()">아이디 찾기&nbsp;&nbsp;|</label>
								<label style="margin: 0" onclick="findpw()">&nbsp;비밀번호찾기</label>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="input-group mb-0">

										<input id="login" class="btn btn-primary btn-lg btn-block"
											value="로그인">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-5" id="idfind" style="display: none;">
					<div class="login-box bg-white box-shadow border-radius-10">
						<div class="login-title">
							<img src="./resources/vendors/images/wefer2.png" alt=""
								class="light-logo">
							<h2 class="text-center text-primary">아이디 찾기</h2>
						</div>
						<form action="">
							<div class="select-role"></div>
							<div class="input-group custom">
								아이디를 만드실때 작성한 이메일을 입력해주세요.
							</div>
							<div class="input-group custom">
								<input id="idemail" name="idemail" type="email" class="form-control form-control-lg" autocomplete="off">
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="dw dw-mail"></i></span>
								</div>
							</div>
							<div class="input-group custom">
								<input id="onemail" type="text" class="form-control form-control-lg" readonly>
							</div>
							<div>
								<input style="display: inline-block; width: 49%; margin: 0" id="login" class="btn btn-primary  btn-block"value="아이디찾기" onclick="gotoid()">
								<input style="display: inline-block; width: 49%; margin: 0" id="login" class="btn btn-primary  btn-block"value="로그인하기" onclick="gologin()">
							</div>
						</form>
					</div>
				</div>
				
				<div class="col-md-6 col-lg-5" id="passwordfind" style="display: none;">
					<div class="login-box bg-white box-shadow border-radius-10">
						<div class="login-title">
							<img src="./resources/vendors/images/wefer2.png" alt=""
								class="light-logo">
							<h2 class="text-center text-primary">비밀번호 찾기</h2>
						</div>
						<form action="">
							<div class="select-role"></div>
							<div class="input-group custom">
								이메일을 입력해주세요.
							</div>
							<div class="input-group custom">
								<input id="pwemail" name="pwemail" type="email" class="form-control form-control-lg" autocomplete="off">
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="dw dw-mail"></i></span>
								</div>
							</div>
							<div class="input-group custom">
								아이디를 입력해주세요.
							</div>
							<div class="input-group custom">
								<input id="pwid" name="pwid" type="text" class="form-control form-control-lg" autocomplete="off">
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="dw dw-mail"></i></span>
								</div>
							</div>
							<div class="input-group custom">
								<input id="onpw" type="text" class="form-control form-control-lg" readonly>
							</div>
						
							<div>
								<input style="display: inline-block; width: 49%; margin: 0" id="login" class="btn btn-primary  btn-block"value="비밀번호 찾기" onclick="gotopw();">
								<input style="display: inline-block; width: 49%; margin: 0" id="login" class="btn btn-primary  btn-block"value="로그인하기" onclick="gologin();">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

	
	
	
	


	<script type="text/javascript">
		$('#login').click(function() {
			var id = $("input[type=text][name=id]").val()
			var password = $("input[type=password][name=password]").val()
			$.ajax({
				type : 'post',
				data : {
					'id' : id,
					'password' : password
				},
				url : '${contextPath}/login.do',
				success : function(data) {
					if (data == "1") {
						alert("아이디 또는 비밀번호가 다릅니다.");
					} else if (data == "2") {
						alert('로그인 성공');
						window.location.href = "home.do";
					}
				},
				error : function() {
					alert("로그인 에러");
				}
			});
		})
		
		function findid() {
			$('#idfind').css('display','block');
			$('#logincontainer').css('display','none');
			$('#passwordfind').css('display','none');
			$("#onemail").val(null);
			$("#idemail").val(null);
		}
		
		function findpw() {
			$('#passwordfind').css('display','block');
			$('#logincontainer').css('display','none');
			$('#idfind').css('display','none');
			$("input[type=email][id=pwemail]").val(null);
			$("input[type=text][id=pwid]").val(null);
			$("#onpw").val(null);
			
		
		}
		
		function gologin() {
			$('#logincontainer').css('display','block');
			$('#idfind').css('display','none');
			$('#passwordfind').css('display','none');
			$("input[type=text][id=id]").val(null);
			$("input[type=password][id=password]").val(null);
		}
		
		function gotoid() {
			var email = $("input[type=email][name=idemail]").val()
			$.ajax({
				type : 'post',
				data : {'email' : email},
				url : '${contextPath}/gotoid.do',
				success : function(data2) {
					console.log("data2="+data2)
					if(data2=="1") {
						console.log("조건에걸림"+data2);
						alert("존재하지 않는 이메일입니다.");
					}else {
						console.log("조건에안걸림"+data2);
						$("#onemail").val(data2);
					}
				},
				error : function() {
					alert("아이디찾기 에러");
				}
			});
		}
		
		function gotopw() {
			var email = $("input[type=email][id=pwemail]").val()
			var id = $("input[type=text][id=pwid]").val()
			$.ajax({
				type : 'post',
				data : {'email' : email,'id':id},
				url : '${contextPath}/gotopw.do',
				success : function(data3) {		
					if(data3=="1") {
						console.log("조건에걸림"+data3);
						alert("존재하지 않는 이메일 또는 아이디입니다");
					}else {
						console.log("조건에안걸림"+data3);
						$("#onpw").val(data3);
					}
				},
				error : function() {
					alert("아이디찾기 에러");
				}
			});
		}
		
		
		
		
	</script>
</body>
</html>