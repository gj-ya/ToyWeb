<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toy Web</title>
<link rel="stylesheet" href="resources/css/commons.css" >
<link rel="stylesheet" href="resources/css/index.css" >
<!-- favicon.ico 오류 해결 링크 -->
<link rel="icon" href="data:;base64, iVBORw0KGgo=">
</head>
<body>
	<jsp:include page="header.jsp" />
	<section>
		<div id="index_section">
			<h1>인덱스</h1>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>