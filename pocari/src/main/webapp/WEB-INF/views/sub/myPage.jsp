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
	border:0px solid black;
	height:400px;
	margin:0 auto;
	width:400px;
}

</style>
</head>
<body>
	<div id="sub_wrap">
		<div id="sub_contatin">
		</div>
</div>
<%@ include file="../main/footer.jsp" %>
</body>
</html>


</html>
