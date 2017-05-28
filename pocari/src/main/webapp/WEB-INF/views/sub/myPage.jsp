<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page session="true" pageEncoding="UTF-8"%>

<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp" />
<%@ include file="../main/header2.jsp"%>

<style>
div#myPage_main {
	text-align: center;
	width : auto;
	height: auto;
	margin: 10px auto;
}

/* div#user_profile {
	width: 200px;
	height: 200px;
	background-color: green;
} */

</style>
</head>

<body>
	<div id="myPage_main">
		<!-- 프로필 div 시작 -->
		<div id="user_profile">
		</div>
		
		aaaaaaa
		<!-- 프로필 div 끝 -->

		<!-- 유저 정보 div 시작 -->
		<div id="user_info">
<%-- 			<dl>
				<dt>이 름</dt>
				<dd>: ${user.name}</dd>
			</dl>
			<hr>
			<dl>
				<dt>아이디</dt>
				<dd>: ${user.lgnId}</dd>
			</dl>
			<hr>
			<dl>
				<dt>이메일</dt>
				<dd>: ${user.email}</dd>
			</dl>
			<hr>
			<dl>
				<dt>가입일</dt>
				<dd>: ${user.regDt}</dd>
			</dl> --%>
		</div>
		<!-- 유저 정보 div 끝 -->

		<!-- 마이페이지 메뉴 div 시작 -->
		<div id="user_meun"></div>
		<!-- 마이페이지 메뉴 div 끝 -->
	</div>
	<%@include file="../main/footer.jsp"%>
</body>
</html>
