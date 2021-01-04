<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
		<c:forEach var="vo" items="${pmlist}">
										<tr>
											<td>${vo.conference.conference_title}</td>
											<td>${vo.id}</td>
											<td>${vo.payment_item}</td>
											<td>${vo.payment_status}</td>
										</tr>
									</c:forEach>
</table>
</body>
</html>