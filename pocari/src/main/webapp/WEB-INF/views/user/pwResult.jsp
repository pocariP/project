<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp"/>
<title>비밀번호 찾기</title>
<script>
	$(function() {
		/* 폼 animate */
		$("#result_main").animate({
			top : '18%',
			opacity : '0.9'
		});
	});
	
	/* index 이동 */
	var url = "/pocari/main/index";
	$("#member_logo").css("cursor", "pointer").click(function() {
		$(location).attr('href', url);
	});
	
	function goLogin() {
		location.href = "/pocari/user/login";
	}
</script>
</head>
<body>

	<div class="home">
		<div id="member_logo"></div>
		<div id="result_main">
			<h2>비밀번호 찾기</h2>
			<p>비밀번호 변경에 성공했습니다.<p>
			<input type="button" value="로그인 하러가기 >>" onclick="goLogin()">
		</div>
	</div>	

</body>
</html>