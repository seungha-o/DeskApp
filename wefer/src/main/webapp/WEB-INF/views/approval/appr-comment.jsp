<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<script>

$(document).ready(function() {
	console.log("로드됐나?");
	commentList();//페이지 로딩시 댓글 목록 출력 
	checkList();
});

	var payment_id = '${payment_id.payment_id}'; 
	$('[name=commentInsertBtn]').click(function() { 
		var insertData = $('[name=commentInsertForm]').serialize();
		commentInsert(insertData);
	});

	function commentList() {
		$.ajax({
					url : '${contextPath}/comment/list',
					type : 'get',
					data : {
						'payment_id' : payment_id
					},
					success : function(data) {
						console.log("리스트나왔나?");
						var a = '';
						console.log(data);
						$.each(data,function(key, value) {
							console.log(key);
							console.log(value);
							console.log(value.payment_comment_number);
							console.log(value.contents);
											a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
											a += '<div class="commentInfo'+value.payment_comment_number+'">'
												
											a += '<a href="#" onclick="location.href=\'/wefer\/personerProfileList.do?addrMemberId='+value.id+'\'">'+value.id+'</a>';
											a += '<div class = "right" style="float: right"><a onclick="commentUpdate('
													+ value.payment_comment_number + ',\''
													+ value.contents
													+ '\');"> 수정 </a>';
											a += '<a onclick="commentDelete('
													+ value.cno
													+ ');"> 삭제 </a> </div>';
											a += '<div class="commentContent'+value.payment_comment_number+'"> <p> '
													+ value.contents + '</p></div>';
											a += '</div></div>';
										});

						$(".commentList").html(a);
					}
				});
	}
	function checkList() {
		$.ajax({
					url : '${contextPath}/comment/check',
					type : 'get',
					data : {
						'payment_id' : payment_id
					},
					success : function(data) {
						console.log("수신자나왔나?");
						var a = '';
						console.log(data.name);
						console.log(data.id);
						console.log(data);
						console.log("${payment_id.s_member_id0}");
						console.log("${payment_id.id}");
						
				
						if (data.name == "${payment_id.s_member_id0}"){
							a += '<div class="card card-box check" id = "${payment_id.s_member_id0}" style="visibility: visible;">'
/* 							a += '<div class="card-header name">'
							a += '${payment_id.s_member_id0}</div>' */
							a +=	'<div class="card-body body">'
							a += '<input type="submit" class="btn btn-outline-primary confbutton" style="float: right;" value="승인하기" />'
							a += '</div>'
						}else if (data.name == "${payment_id.s_member_id1}"){
							a += '<div class="card card-box check" id = "${payment_id.s_member_id1}" style="visibility: visible;">'
							/* 	a += '<div class="card-header name">'
								a += '${payment_id.s_member_id1}</div>' */
								a +=	'<div class="card-body body">'
								a += '<input type="submit" class="btn btn-outline-primary confbutton" style="float: right;" value="승인하기" />'
								a += '</div>'
						}else {
							a += '<div class="card card-box check" id = "${payment_id.s_member_id2}" style="visibility: visible;">'
								/* a += '<div class="card-header name">'
								a += '${payment_id.s_member_id2}</div>' */
								a +=	'<div class="card-body body">'
								a += '<input type="submit" class="btn btn-outline-primary confbutton" style="float: right;" value="승인하기" />'
								a += '</div>'
						}
						
						$(".checkList").html(a);
					}
				});
	}

	//댓글 등록
	function commentInsert(insertData) {
		$.ajax({
			url : '${contextPath}/comment/insert',
			type : 'post',
			data : insertData,
			success : function(data) {
				console.log(data);
				if (data == 1) {
					console.log(data);
					commentList(); 
					$('[name=content]').val('');
				}
			}
		});
	}

	function commentUpdate(cno, content) {
		var a = '';

		a += '<div class="input-group">';
		a += '<input type="text" class="form-control" name="content_'+payment_comment_number+'" value="'+contents+'"/>';
		a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('
				+ payment_comment_number + ');">수정</button> </span>';
		a += '</div>';

		$('.commentContent' + payment_comment_number).html(a);

	}

	//댓글 수정
	function commentUpdateProc(payment_comment_number) {
		var updateContent = $('[name=content_' + payment_comment_number + ']').val();

		$.ajax({
			url : '${contextPath}/comment/update',
			type : 'post',
			data : {
				'contents' : updateContent,
				'payment_comment_number' : payment_comment_number
			},
			success : function(data) {
				if (data == 1)
					commentList(payment_id);
			}
		});
	}

	//댓글 삭제 
	function commentDelete(payment_comment_number) {
		$.ajax({
			url : '${contextPath}/comment/delete/' + payment_comment_number,
			type : 'post',
			success : function(data) {
				if (data == 1)
					commentList(payment_id); 
			}
		});
	}
	 function cksubmit() {
			confirm("${payment_id.member.name}"+"님의 결재를 승인하시겠습니까?");
	      }
			$(".confbutton").click(function() {
			
				//$("#conf").submit();
			});
			/* $(".confbutton").click(function() {
				confirm("${payment_id.member.name}"+"님의 결재를 승인하시겠습니까?");
				$("#conf").submit();
				$("#2").hide();
			});
			$("#0").click(function() {
				confirm("${payment_id.member.name}"+"님의 결재를 승인하시겠습니까?");
				$("#conf").submit();
				$("#0").hide();
			}); */
	
	</script>
