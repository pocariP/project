<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" pageEncoding="UTF-8" %>

<html>
<head>
 <c:import url="/WEB-INF/views/inc/head.jsp"/>
<%@ include file="header2.jsp" %>
<script>
$(function() {
	$("#modal_close").click(function(e) {
		//링크 기본동작은 작동하지 않도록 한다.
		e.preventDefault();
		$("#mask, #modalWrite").hide();
	});
});

function wrapWindowByMask() { // 모달창
	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();
		
	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$('#mask').css({
		'width' : maskWidth,
		'height' : maskHeight
	});
	
	$("#mask").fadeTo("slow", 0.8);
	$("#modalWrite").fadeTo("slow", 1.0);
}
</script>
</head>
<body>
	<div>
		<div id="main_wrap">
			<div class="main_wrap_info"></div>
		</div>
	</div>
<%@ include file="footer.jsp" %>

<!-- 글쓰기 모달창 시작 -->
	<div id="mask"></div>
	<div id="modalWrite">
		<div id="modal_close"><img src="${_ctx}/res/img/modalClose.png"/></div>
		글쓰기
	</div>
<!-- 글쓰기 모달창 끝 -->

</body>
</html>
