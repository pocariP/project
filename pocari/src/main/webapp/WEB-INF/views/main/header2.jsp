<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="_ctx" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application" />
<sec:authorize access="hasRole('ROLE_USER')">
 <sec:authentication property="principal.user" var="user" scope="session"/>
</sec:authorize>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pocari</title>
<link href="/pocari/res/css/header.css" rel="stylesheet">
</head>
<body style="margin: 0;">
<!-- 해더 부분 시작1 -->
<header>
	<div class="header">
		<div id="header_logo">
			<a href="${_ctx}/main/index2"><img src="/pocari/res/img/logo.png" alt="logo"></a>
		</div>
		<nav id="main_meun">
						<ul>
						<li>
							<a href="${_ctx}/sub/myPage">마이페이지</a>
						</li>
						<li>|</li>
						<li>
							<a href="/pocari/logout">로그아웃 </a>
						</li>
						<li>|</li>
						<li>
							${user.name}
							님 안녕하세요.
						</li>
			</ul>
			</nav>
					<div id="main_tool">
			<p>새로운 이야기를 전해주세요.</p><a onclick="wrapWindowByMask()">글쓰기</a>
		</div>
		<div id="main_search">
			<input type="text" placeholder="검색" size="25">
			 <input type="button" value="">
		</div>
	</div>
</header>
</body>
</html>