<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="UTF-8"%>

<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp" />
<%@ include file="../main/header2.jsp"%>
<script>
	
</script>
<style>
#sub_nav {
	border:1px solid black;
}

</style>
</head>
<body>
	<nav id="sub_nav">
		<ul class="sub_main">
			<li class="sub_menu">
				<a href="#">메뉴</a>
				<ul class="sub_menuList">
					<li><a href="#">회원정보 수정</a></li>
					<li><a href="#">내가 쓴 글</a></li>
				</ul>
			</li> 
		</ul> 
	</nav>

</body>
</html>


</html>
