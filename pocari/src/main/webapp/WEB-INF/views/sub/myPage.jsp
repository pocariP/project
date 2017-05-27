<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" pageEncoding="UTF-8" %>

<html>
<head>
 <c:import url="/WEB-INF/views/inc/head.jsp"/>
<%@ include file="../main/header2.jsp" %>

<style>
#user_page {
	width:100%;
	height:700px;
	display: inline-block;
	text-align: center;
	margin-top: 20px;
}

#user_img img {
	width:200px;
	height:200px;
	border-radius: 20%;
}

#user_profile {
	display:inline-block;
	padding : 27px;
}

#menu_head {
	display: inline-block;
	width : 260px;
}

#menu_list {
	width:250px;
}
 #menu_head h3 {
	display: block;
    padding: 8px 10px;
    margin-top: 0;
    margin-bottom: 0;
    font-size: 13px;
    font-weight: 600;
    line-height: 20px;
    color: #586069;
    background-color: #f3f5f8;
    border-bottom: 1px solid #e1e4e8;
} 


#menu_list li {
		width:230px;
		position: relative;
    display: block;
    padding: 8px 10px;
    text-align:center;
    border-bottom: 1px solid #e1e4e8;
}

#menu_list a{
	text-decoration: none;
}

#left_wrap {
	display: inline-block;
	width:27%;
	margin-right:70px;
}



#mid_wrap{
	display: inline-block;
	width:20%;
}

#mid_wrap h2 {
	border-bottom: 1px solid #e1e4e8;
}

#data_list li {
	border-bottom:1px solid #e1e4e8;
	display: inline-block;
}

</style>
</head>

<body>
	<div id="user_page">
	
	
		<div id="left_wrap">
		<div id="user_profile">
			<div id="user_img">
				<img src="${_ctx}/res/img/main_img1.png"/>
		</div>
			<h2>${user.lgnId}</h2>
			<hr>
			<h2>${user.name} 님!</h2>
		</div>
			<div id="user_menu">
				<nav id="menu_head">
					<ul id="menu_list">
						<h3>메뉴</h3>
					<li><a href="#">회원정보 수정</a></li>
					<li><a href="#">내가 쓴 글</a></li>
					</ul>
				</nav>
			</div>
			</div>
			
			<div id="mid_wrap">
				<h2>회원 정보</h2>
				<div id="user_data">
					<ul id="data_list">
					<li>아이디 : ${user.lgnId}</li>
					<li>이름 : ${user.name}</li>
					<li>이메일 : ${user.email}</li>
					<li>가입일 : ${user.regDt}</li>
					</ul>
				</div>
			</div>

			
	</div>
	<%@include file="../main/footer.jsp" %>
</body>
</html>
