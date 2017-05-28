<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="UTF-8"%>
<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp" />
<%@ include file="header.jsp"%>
<script>
	/* 로그인이 되있으면 못들어가게 막는 스크립트 */
	var lgnId = '${user.lgnId}';
	if (lgnId != '' && lgnId != null) {
		alert("이미 로그인이 되있습니다.");
		location.href = "${_ctx}/main/index2";
	}
</script>
</head>
<body>
	<div class="home">
		<div class="main" id="main">
			<div class="contents">
				<div class="inner">
					<h1>POCARI HOMEPAGE</h1>
					<a class="start" href="/pocari/main/index2">시작하기</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
