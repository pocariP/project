<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="/pocari/res/css/styles.css">
<script type="text/javascript" src="/pocari/res/js/jquery.min.js"></script>

<style>
/*=============================== pwResult ====================================*/
div#result_main {
	position: absolute;
	top: 20%;
	left: 50%;
	margin-left: -200px;
	width: 400px;
	height: 200px;
	background-color: white;
}
div#result_main h2{
	margin-top: 35px;
	margin-left: 50px;
	color: #538CB8;
}
div#result_main p{
	margin-left: 80px;
	font-weight: bold;
}
div#result_main input{
	position: absolute;
	top: 70%;
	left: 38%;
	background-color: #F0DDA0;
	color: #CC8755;
	border: none;
}

</style>
</head>
<body>

	<div class="home">
		<div id="member_logo"></div>
		<div id="result_main">
			<h2>비밀번호 찾기</h2>
			<p>비밀번호 변경에 실패했습니다.<p>
			<input type="button" value="돌아가기" onclick="javascript:history.back(-1)">
		</div>
	</div>

</body>
</html>