<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="listCount" value="${pageInfo.getListCount()}" />
<c:set var="nowPage" value="${pageInfo.getPage()}" />
<c:set var="maxPage" value="${pageInfo.getMaxPage()}" />
<c:set var="startPage" value="${pageInfo.getStartPage()}" />
<c:set var="endPage" value="${pageInfo.getEndPage()}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toy Web</title>
<link rel="stylesheet" href="resources/css/commons.css" >
<link rel="stylesheet" href="resources/css/board.css" >
<!-- favicon.ico 오류 해결 링크 -->
<link rel="icon" href="data:;base64, iVBORw0KGgo=">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<section id="board_main_sec">
		<div id="board_home_">
			<h1>게 시 판</h1>
            <table id="home_table">
                <tr>
                    <th width="100px">글번호</th><th width="300px">제목</th><th width="100px">작성자</th><th width="200px">작성날짜</th>
                </tr>
                <c:forEach items="${list}" varStatus="status" var="list">
                    <tr>
                        <td>${list.board_num}</td>
                        <td><a href="board_detail?board_num=${list.board_num}">${list.title}</a></td>
                        <td>${list.writer}</td>
                        <td><fmt:formatDate value="${list.write_time}" pattern="yyyy-MM-dd HH:mm"/></td>
                    </tr>
                </c:forEach>
            </table>
            <div id="btn_b">
                <c:if test="${member_num == null}">
                    <input type="button" value="작성하기" onclick="alert('로그인을 해야 작성이 가능합니다')">
                </c:if>
                <c:if test="${member_num != null}">
                    <a href="board_write"><input type="button" value="작성하기"></a>
                </c:if>
            </div>
		</div>
	</section>
    <section id="pageList">
        <c:if test="${nowPage <= 1}">
            [처음]&nbsp;[이전]&nbsp;
        </c:if>
        <c:if test="${nowPage > 1}">
            <a href="board_home?page=1">[처음]</a>
            <a href="board_home?page=${nowPage - 1}">[이전]</a>&nbsp;
        </c:if>
        <c:forEach var="a" begin="${startPage}" end="${endPage}">
            <c:if test="${a eq nowPage}">
                [${a}]&nbsp;
            </c:if>
            <c:if test="${a != nowPage}">
                <a href="board_home?page=${a}">[${a}]</a>&nbsp;
            </c:if>
        </c:forEach>
        <c:if test="${nowPage >= maxPage}">
            [다음]&nbsp;[마지막]&nbsp;
        </c:if>
        <c:if test="${nowPage < maxPage}">
            <a href="board_home?page=${nowPage + 1}">[다음]</a>
            <a href="board_home?page=${maxPage}">[마지막]</a>
        </c:if>
    </section>
	<jsp:include page="../footer.jsp" />
</body>
</html>