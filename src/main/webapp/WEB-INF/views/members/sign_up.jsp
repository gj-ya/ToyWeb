<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toy Web</title>
<link rel="stylesheet" href="resources/css/commons.css" >
<link rel="stylesheet" href="resources/css/sign_up.css" >
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<section>
		<div id="sign_up_">
			<h3>회원가입</h3>
			<form action="sign_up_action">
			<table>
				<tr>
					<td class="info_text">아이디</td>
					<td id="id_col">
						<input type="text" name="id">
						<input type="button" value="중복확인" id="id_confirm">
					</td>
				</tr>
				<tr>
					<td class="info_text">비밀번호</td>
					<td class="text_cols">
					<input type="password" id="pw" name="pw">
<!-- 					<input type="text" id="pw" name="pw"> -->
					</td>
				</tr>
				<tr>
					<td class="info_text">비밀번호 확인</td>
					<td class="text_cols"><input type="password" id="re_pw"></td>
				</tr>
				<tr>
					<td class="info_text">E-MAIL</td>
					<td class="text_cols"><input type="text" name="email"></td>
				</tr>
				<tr>
					<td class="info_text">연락처</td>
					<td class="text_cols"><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td colspan="2" id="button_col">
						<input type="submit" value="가입">
						<a href="home"><input type="button" value="취소"></a>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</section>
	<jsp:include page="../footer.jsp"/>
</body>
</html>