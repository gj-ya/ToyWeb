<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toy Web</title>
<link rel="stylesheet" href="resources/css/commons.css">
<link rel="stylesheet" href="resources/css/management.css" >
<!-- favicon.ico 오류 해결 링크 -->
<link rel="icon" href="data:;base64, iVBORw0KGgo=">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<section>
		<div id="manage_">
			<c:if test="${member_num != 1}">
				<c:redirect url="log_out" />
			</c:if>
			<c:if test="${member_num == 1}">
				<aside>
					<div id="manage_side">
						<ul>
							<li>가입자 목록</li>
							<li>가입자 관리</li>
							<li>흠흠</li>
						</ul>
					</div>
				</aside>
				<div id="manage_b">
					<table>
						<tr id="table_top_tr">
							<th width="100px">멤버번호</th><th width="200px">아이디</th><th width="300px">이메일</th><th width="200px">연락처</th>
						</tr>
						<c:forEach items="${list}" varStatus="status" var="list">
							<tr>
								<td>${list.member_num}</td>
								<td>${list.id}</td>
								<td>${list.email}</td>
								<td>${list.phone}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</c:if>
		</div>
	</section>
	<jsp:include page="../footer.jsp" />
</body>
</html>