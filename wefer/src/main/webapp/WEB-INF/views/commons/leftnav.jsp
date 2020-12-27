<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 css 사용 -->

<title>Insert title here</title>
</head>
<body>
<nav class="sidenav">
		<div class="nav_list">
			<img id="member_pic" src="./resources/imgs/user1.PNG"> <span
				class="now_member">
				<p>사원명</p>
			</span> <span class="now_member">
				<p>부서명</p>
			</span> <span class="now_member">
				<p>직책</p>
			</span>
			<div id="gotomypage">
				<img src="./resources/imgs/chat.png"> <img
					src="./resources/imgs/calendar.png"> <img
					src="./resources/imgs/user.png" onclick="location.href='사원의 마이페이지'">
			</div>

			<hr>
				<!-- 	<c:if test="true">
						<c:forEach var="vo" items="" varStatus="status">
					<td align="center"></td>
					<tr>
						<td align="center"></td>
					</tr>
				</c:forEach>
			</c:if> -->
		</div>
	</nav>
	<!--  부트스트랩 js 사용 -->
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
	
	
</body>
</html>