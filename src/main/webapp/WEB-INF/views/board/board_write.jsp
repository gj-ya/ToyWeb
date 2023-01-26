<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<div id="board_write_">
            <form action="board_writing" onsubmit="return write_confirm()" method="post">
			<table id="write_table">
                <tr>
                    <td><input type="text" name="title" id="title" maxlength="30" placeholder="제목을 작성해주세요..."></td>
                </tr>
                <tr>
                    <td><textarea name="contents" id="contents" maxlength="100"></textarea></td>
                </tr>
            </table>
            <div id="btn_box">
                <input type="submit" value="작성">
                <input type="button" value="돌아가기" onclick="javascript:history.back()">
            </div>
            </form>
		</div>
	</section>
	<jsp:include page="../footer.jsp" />
</body>
</html>