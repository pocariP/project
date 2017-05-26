<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="UTF-8"%>

<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp" />
<%@ include file="../main/header2.jsp"%>
<script>
	$(function() {
		$(".sub_menu>a").click(function() {
			$(this).next("ul").toggleClass("sub_menuList");
		})
	})
</script>
<style>

.user_menu {
	list-style-type: none;
	margin: 0;
	padding-left: 0;
}

h1, h2, p, a, span {
	color: #fff;
}


.user_picture_big {
	margin: 80px auto;
	border: 5px solid #50597b;
	width: 150px;
	height: 150px;
	border-radius: 100%;
	overflow: hidden;
}

.user_picture_small {
	border: 2px solid #50597b;
	width: 40px;
	height: 40px;
	border-radius: 100%;
}

.main_container {
	width: 100%;
	height: 100%;
	margin: 20px auto;
}

.menu_list {
	padding: 0 27px;
	display: block;
	line-height: 74px;
	font-size: 17px;

}

.menu_list:hover {

	text-decoration: none;
}

.menu_list .icon {
	padding-right: 15px;
}

.user_profile {
	float: right;
	height: 80px;
	padding-right: 20px;
}

.user_profile p {
	font-size: 17px;
	display: inline-block;
	line-height: 76px;
	margin: 0;
	padding-right: 10px;
}

.user_profile a {
	padding-left: 5px;
}

.user_profile a:hover {
	text-decoration: none;
}

.user_picture_small {
	display: inline-block;
	vertical-align: middle;
}

.container {
	float: left;
	width: 300px;
}

.user_data {
	margin-left:100px;
	background: #394264;
	border-radius: 5px;
	width:300px;
	height:400px;
}


.main_block {
	margin-bottom: 25px;
	background: #A9A9A9;
	border-radius: 5px;
	height:80px;
}


.middle_container {
	margin: 0 25px;
}


.user_name {
	margin: 25px 0 16px;
	text-align: center;
}


.user_description {
	width: 210px;
	margin: 0 auto;
	text-align: center;
	font-size: 20px;
}


</style>
</head>
<body>
</head>

<body>

	<div class="main_container">
		<div class="main_block">
			<ul class="user_menu">
				<li><a class="menu_list" href="#"><span></span>설정</a></li>
				<li><a class="menu_list" href="#"><span></span>내가쓴글</a></li>
			</ul>
			<div class="user_profile">
				<p>Me</p>
				<div class="user_picture_small">
					<img width="40px" alt="user" src="${_ctx}/res/img/logo.png">
				</div>
			</div>
		</div>

 		<div class="middle-container container">
			<div class="user_data">
				<div class="user_picture_big">
					<img width="150px" alt="user" src="${_ctx}/res/img/logo.png">
				</div>
				<h1 class="user_name">test</h1>
				<h1 class="user_description">안녕하세요.</h1>
				</div>
			</div> 
		</div>

	<%@ include file="../main/footer.jsp"%>
</body>
</html>


</html>
