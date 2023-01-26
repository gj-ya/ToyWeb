<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toy Web</title>
<link rel="stylesheet" href="resources/css/commons.css" >
<link rel="stylesheet" href="resources/css/login.css" >
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<section>
		<div id="login_">
			<div id="login_box">
				<form action="login_confirm" method="post">
				<h2>로 그 인</h2>
				<table>
					<tr>
						<td><h4>아 이 디</h4></td>
						<td><input type="text" name="id" id="id"></td>
						<td rowspan="2"><input type="submit" value="로그인"></td>
					</tr>
					<tr>
						<td><h4>비밀번호</h4></td>
						<td><input type="password" name="pw" id="pw"></td>
					</tr>
					<tr>
						<td colspan="2" id="login_btn_col">
<!-- 							<input type="submit" value="로그인"> -->
							<a href="home"><input type="button" value="홈으로"></a>
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>