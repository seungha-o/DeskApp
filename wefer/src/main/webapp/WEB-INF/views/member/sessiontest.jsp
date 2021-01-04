<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${sessionScope.loginId}님의 페이지</h1>
	
	<form action="test" method="get">
		<input type="submit" value="test">
	</form>
	<form action="logout" method="get">
		<input type="submit" value="logout">
	</form>
</body>
</html>