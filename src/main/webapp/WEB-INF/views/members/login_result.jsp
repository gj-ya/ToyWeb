<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toy Web</title>
    <link rel="stylesheet" href="resources/css/commons.css" >
    <link rel="stylesheet" href="resources/css/login.css" >
</head>
<body>
    <jsp:include page="../header.jsp" />
	<section>
		<div id="login_result_">
			<h1>로그인 실패</h1>
            <input type="button" value="돌아가기" onclick="javascript:history.back()">
		</div>
	</section>
	<jsp:include page="../footer.jsp" />
</body>
</html>