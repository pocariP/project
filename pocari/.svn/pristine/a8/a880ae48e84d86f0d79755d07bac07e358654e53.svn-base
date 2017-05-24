<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<script>
$(function() {
	/* index 이동 */
	var url = "/pocari/main/index";
	$("#member_logo").css("cursor","pointer").click(function() {
		$(location).attr('href',url);
	});
	
	/* 폼 animate */
	$("#succ_main").animate({
		top : '18%',
		opacity : '0.9'
	});	
});
</script>
<style>
div#succ_main {
	position: absolute;
	top: 20%;
	left: 50%;
	margin-left: -300px;
	width: 600px;
	height: 300px;
	background-color: white;
	opacity: 0;
}
div#succ_main h1 {
	text-align: center;
	margin-top: 70px;
}
div.succ_btn {
	text-align: center;
}
div.succ_btn a {
	position: absolute;
	top: 55%;
	left: 38%;
	padding: 10px 30px;
	background-color: skyblue;
	border-radius: 5px;
	text-decoration: none;
	font-weight: bold;
}
div.succ_btn a:link, div.succ_btn a:visited, div.succ_btn a:active, div.succ_btn a:hover {
	color: #000;
}
</style>
</head>
<body>
	<div class="home">
		<div id="member_logo"></div>
		<div id="succ_main">
			<h1>회원가입을 축하드립니다.</h1>
			<div class="succ_btn">
				<a href="${_ctx}/main/index" type="button">메인으로 >></a>
			</div>
		</div>
	</div>
</body>
</html>