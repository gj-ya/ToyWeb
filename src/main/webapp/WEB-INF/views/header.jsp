<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="resources/css/commons.css">
<script type="text/javascript" src="resources/js/commons.js"></script>

<header>
	<div id="head_">
		<div id="webname_b">
			<h3>
				<a href="home">TOY WEB</a>
			</h3>
		</div>

		<c:if test="${member_num == null}">
			<div id="login_b">
				<a href="login"><input type="button" value="로그인"></a> <a
					href="sign_up"><input type="button" value="회원가입"></a>
			</div>
		</c:if>
		<c:if test="${member_num == '1'}">
			<div id="login_b">
				<a href="management"><input type="button" value="관리자"></a>
				<a href="log_out"> <input type="button" value="로그아웃"></a>
			</div>
		</c:if>
		<c:if test="${member_num != null && member_num != '1'}">
			<div id="login_b">
				<span>${id}님 로그인중</span> <a href="log_out"> <input type="button"
					value="로그아웃"></a>
			</div>
		</c:if>
	</div>
	<nav>
		<ul>
			<li><a href="choice">메뉴선택</a></li>
			<li><a href="calc">계산기</a></li>
			<li><a href="">D-Day</a></li>
			<li><a href="calendar">스케줄</a></li>
			<li><a href="board_home?page=1">커뮤니티</a></li>
			<li><h4 id="clock"></h4></li>
		</ul>
	</nav>
</header>
