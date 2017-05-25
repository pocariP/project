<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" pageEncoding="UTF-8"%>

<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp" />
<%@ include file="../main/header2.jsp"%>
<script>
	$(function(){
		$(".sub_menu>a").click(function(){
			$(this).next("ul").toggleClass("sub_menuList");
		})
	})
</script>
<style>

#sub_contatin {
	border:1px solid black;
	height:400px;
	margin:0 auto;
	width:auto;
}

#sub_menu {
	border:1px solid black;
	width:20%;
	height:30%;
	position: relative;
}

table, tr, th, td{
 border:1px solid black;
 border-collapse: collapse;
 text-align: center;
 padding : 20px 10px;
}

td {
	width:200px;

}
#sub_user_data {
	float: right;
}
</style>
</head>
<body>
<!-- mypage -->
	<div id="sub_wrap">
		<div id="sub_contatin">
			<div id="sub_user_data">
				<table>
					<tr>
						<th>아이디</th>
						<td>id</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>name</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>email</td>
					</tr>
					<tr>
						<th>가입일</th>
						<td>date</td>
					</tr>
					
				</table>
				<!-- <div id="sub_menu">
					<ul>
						<li><a>회원정보 수정</a></li>
						<li><a>내가 쓴 글</a></li>
					</ul>
				</div> -->
			</div>
		</div>
</div>
<%@ include file="../main/footer.jsp" %>
</body>
</html>


</html>
