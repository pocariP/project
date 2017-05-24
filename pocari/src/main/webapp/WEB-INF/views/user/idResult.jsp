<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기11</title>
<link rel="stylesheet" href="/pocari/res/css/styles.css">
<script type="text/javascript" src="/pocari/res/js/jquery.min.js"></script>
<script>
	$(function() {
		
		/* index 이동 */
		var url = "/pocari/main/index";
		$("#member_logo").css("cursor","pointer").click(function() {
			$(location).attr('href',url);
		});
		
		/* 폼 animate */
		$("#result_main").animate({
			top : '18%',
			opacity : '0.9'
		});
	});
	function goLogin() {
		document.location.href = "/pocari/user/login";
	}
	function goPwFind() {
		document.location.href = "/pocari/user/findInfo";
	}
</script>
<style>
/*=============================== idResult ====================================*/
div#result_main {
	position: absolute;
	top: 20%;
	left: 50%;
	margin-left: -300px;
	width: 600px;
	height: 300px;
	background-color: white;
	opacity: 0;
}
div#result_main h2{
	margin-top: 35px;
	margin-left: 50px;
	color: #538CB8;
}
div#result_main p{
	margin-left: 70px;
	font-weight: bold;
}
div#result_id{
	position:absolute;
	top: 45%;
	left: 10%;
	right: 10%;
	padding: 20px 40px;;
	border: 1px solid #B4CECC;
	font-weight: bold;
	color: gray;
}
div#result_id p{
	margin: 0;
	padding-left: 30px;
}
div#result_main_btn{
	position: absolute;
	top: 75%;
	left: 30%;
}
div#result_main_btn input{
	background-color: #F0DDA0;
	border: none;
	width: 120px;
	height: 30px;
	color: #CC8755;
	font-size: 14px;
	border-radius: 5px;
}
</style>
</head>
<body>

	<div class="home">
		<div id="member_logo"></div>
		<div id="result_main">
			<h2>아이디 찾기</h2>
			<p>입력하신 정보와 일치하는 아이디입니다.<p>
			<div id="result_id">
<!-- 				아이디 찾기 기능 -->
				<c:set var="findId" value="${findId}" />
				<c:choose>
					<c:when test="${!empty findId}">
						<c:forEach items="${findId}" var="findId">
							아이디 : ${findId.lgnId} <br>
						</c:forEach>
					</c:when>
					<c:otherwise>
						검색 결과가 없습니다.
					</c:otherwise>
				</c:choose>
<!-- 				아이디 찾기 기능 끝 -->
			</div>
			<div id="result_main_btn">
				<input type="button" value="로그인" onclick="goLogin()">
				<input type="button" value="비밀번호 찾기" onclick="goPwFind()">
			</div>
		</div>
	</div>	

</body>
</html>