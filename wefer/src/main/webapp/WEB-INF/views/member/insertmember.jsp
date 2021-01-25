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
<style>
#file_label {
 display: inline-block;
 padding: .5em .75em;
 color: #999;
 font-size: inherit;
 line-height: normal;
 vertical-align: middle;
 background-color: #fdfdfd;
 cursor: pointer; 
 border: 1px solid #ebebeb; 
 border-bottom-color: #e2e2e2; 
 border-radius: .25em; 
 margin : 5px;
 

        }
        
 .p-status{
	padding-top:13px;
 	text-align:center;
 	color: white;
 	font-size: inherit;
 	line-height: normal;
 	vertical-align: middle;
 	background-color: #fdfdfd;
 	border: 1px solid #ebebeb; 
 	border-bottom-color: #e2e2e2; 
 	border-radius: .50em; 
 	margin : 5px;
 	width: 100px;
 	height: 50px;
 }
        
 input[name="profileimg"]{
 position: absolute;
  width: 1px;
  height: 1px; 
  padding: 0; 
  margin: -1px; 
  overflow: hidden; 
  clip:rect(0,0,0,0); 
  border: 0;
 } 
  
.upload-name { 
display: inline-block; 
padding: .5em .75em; /* label의 패딩값과 일치 */ 
font-size: inherit; 
font-family: inherit; 
line-height: normal; 
vertical-align: middle; 
background-color: #f5f5f5; 
border: 1px solid #ebebeb; 
border-bottom-color: #e2e2e2; 
border-radius: .25em; 
-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
-moz-appearance: none; 
appearance: none; 
}
</style>
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
						
					</div>
				</div>
				<div class="pd-20 bg-white border-radius-4 box-shadow mb-30">
					<div class="pd-20 card-box mb-30">
						<div class="clearfix">
							<div class="pull-left">
								<h4>직원 추가</h4>
							</div>
						</div>
						
						
				<form id="signup" action="insertmember.do" method="post" enctype="multipart/form-data">
						
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">이름</label>
								<div class="col-sm-12 col-md-10">
									<input name="name" class="form-control" type="text"
										placeholder="이름">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">주소</label>
								<div class="col-sm-12 col-md-10">
									<input type="text" name="address" id="sample4_roadAddress" placeholder="도로명주소" class="form-control"> 
									<span id="guide" style="color:#999;display:none"></span>
									<input class="btn btn-outline-primary" type="button" style="margin-top: 10px" onclick="sample4_execDaumPostcode()" value="주소 찾기"><br>
									
									<!-- <input name="address" class="form-control" type="text"
										placeholder="주소"> -->
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
									<input name="phone" class="form-control" placeholder ="-없이 적어주세요" type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength='11'>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">이메일</label>
								<div class="col-sm-12 col-md-10">
									<input name="email" class="form-control" placeholder="이메일을 입력해 주세요"
										type="email">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">부서</label>
								<div class="col-sm-12 col-md-10">
									<select id="dept_no" class="custom-select col-12">
										<option selected="">부서를 선택하세요</option>
										<option value="1">인사팀</option>
										<option value="2">경영팀</option>
										<option value="3">개발팀</option>
									</select>
									<input type="hidden" name="dept_no">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-12 col-md-2 col-form-label">직급</label>
								<div class="col-sm-12 col-md-10">
									<select id="position" class="custom-select col-12">
										<option selected="">직급을 선택하세요</option>
										<option value="사원">사원</option>
										<option value="대리">대리</option>
										<option value="과장">과장</option>
										<option value="부장">부장</option>
										<option value="사장">사장</option>
									</select>
									<input type="hidden" name="position">
								</div>
							</div>

							
							<div class="form-group row">
								
								<label class="col-sm-12 col-md-2 col-form-label">프로필 이미지</label>
								<div class="col-sm-12 col-md-10">
									<label id="file_label" for ="upload_project_file">파일선택</label>
									<input class="upload-name" value=".png 만 올려주세요" disabled="disabled">
									<input id="upload_project_file" name="profileimg" type="file" accept=".png" style="float: right;">
								</div>
							</div>
						<input type="submit" name="submit" value="등록하기" class="btn btn-primary" style="width: 100%">
						</form>
					</div>
				</div>
				
			</div>
		</div>
		</div>
		
<script type="text/javascript">


$(document).ready(function(){
	  var fileTarget = $('#upload_project_file');

	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            var filename = $(this)[0].files[0].name;
	        } else {
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        }

	        $(this).siblings('.upload-name').val(filename);
	    });
	    

}); 


	$('input[name=email]').on("change", function() {
		const regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		var email = $('input[name=email]').val();
		if(regEmail.test(email)){
			$('input[name=email]').css("border","1px solid black");
			 $.ajax({
	                url : "${pageContext.request.contextPath}/emailChk.do",
	                type : 'POST',
	                dataType : 'json',
	                data : {
	                	email : email
	                	
	                },
	                beforeSend : function() {
	                    console.log('Ajax submit 보내기전');
	                },
	                success : function(data) {
	                	console.log(data);
	                 if(data == 0){
	                	 $('input[name=email]').css("border","1px solid green");
	                 }else{
	                	 alert("이미 존재하는 이메일 입니다.");
	                	 $('input[name=email]').css("border","1px solid red");
	                	 $('input[name=email]').focus();
	                 }
	               
	                }, error : function(data) {
	                    console.log('Ajax submit error');
	                    $('input[name=email]').focus();
	                }, complete : function() {
	                    console.log('Ajax submit complete');
	                }
			  }); 
		}else if(!regEmail.test(email)){
			alert("이메일 형식에 알맞게 적어주세요");
			$('input[name=email]').css("border","1px solid red");
			$('input[name=email]').val('');
			$('input[name=email]').focus();
			
		}
		
	})
	
	$('input[name=phone]').on("focusout", function() {
		const regPhone = /^01([0|1|6|7|8|9])?([0-9]{3,4})?([0-9]{4})$/;
		var phone = $('input[name=phone]').val();
		console.log(phone);
		if(regPhone.test(phone)){
			$('input[name=phone]').css("border","1px solid black");
		}else if(!regPhone.test(phone)){
			$('input[name=phone]').css("border","1px solid red");
			$('input[name=phone]').focus();
		}
		
		
	});
	
	$('input[type=submit][name=submit]').click(function() {
		
	
		

		var name = $('input[name=name]').val();
		console.log(name);
		var birth = $('input[name=birth]').val();
		var phone = $('input[name=phone]').val();
		var address = $('input[name=address]').val();
		var email = $('input[name=email]').val();
		var dept_no = $('#dept_no option:selected').val();
		var position = $('#position option:selected').val();
		
		var file = $('input[name=file]').val();
		
		
		if(!name || !birth || !phone || !email || !dept_no || !position || !address){
			/* if(!name){
				name.css("border-color", 'red');		
			}
			if(!birth){
				birth.css("border-color", 'red');		
				
			}
			if(!phone){
				phone.css("border-color", 'red');		
				
			}
			if(!email){
				email.css("border-color", 'red');		
				
			}
			if(!address){
				address.css("border-color", 'red');		
				
			} */
			alert('항목을 모두 채워주세요')
			return false;
		}else{
			$('input[name=position]').val(position);
			$('input[name=dept_no]').val(dept_no);
			$('form').submit(function() {
				return true;
			})		
			
			
		}

	});
		
	
	/* 도로명주소 api */
	    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample4_roadAddress").value = roadAddr;
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }

	
</script>
</body>
</html>