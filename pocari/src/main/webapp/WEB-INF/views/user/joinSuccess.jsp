<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp"/>
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