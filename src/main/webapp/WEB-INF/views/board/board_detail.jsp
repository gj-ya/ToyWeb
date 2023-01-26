<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toy Web</title>
<link rel="stylesheet" href="resources/css/commons.css" >
<link rel="stylesheet" href="resources/css/board.css" >
<script type="text/javascript" src="resources/js/board.js"></script>
<!-- favicon.ico 오류 해결 링크 -->
<link rel="icon" href="data:;base64, iVBORw0KGgo=">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<section>
		<div id="board_home_">
			<h1>게 시 판</h1>
            <div id="detail_">
                <div id="detail_title_b">
                    <h3>${list.title}</h3>
                </div>
                <div id="detail_n_t">
                    <div id="detail_n">
                        <h5>작성자: ${list.writer}</h5>
                    </div>
                    <div id="detail_t">
                        <h6><fmt:formatDate value="${list.write_time}" pattern="yyyy-MM-dd HH:mm"/></h6>
                    </div>
                </div>
                <div id="detail_contents_b">
                    <pre>${list.contents}</pre>
                </div>
            </div>
            <div id="detail_btn_box">
                <c:if test="${member_num == null || member_num != list.member_num}">
                    <input type="button" value="뒤로가기" onclick="history.back()">
                </c:if>
                <c:if test="${member_num == list.member_num}">
                    <input type="button" value="뒤로가기" onclick="history.back()">
                    <input type="button" value="삭제" onclick="delete_confirm('${list.board_num}')">
                    <input type="button" value="수정" onclick="location.href='board_fix?board_num=${list.board_num}'">
                </c:if>
            </div>
		</div>
	</section>
	<jsp:include page="../footer.jsp" />
</body>
</html>