<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" pageEncoding="UTF-8" %>

<html>
<head>
 <c:import url="/WEB-INF/views/inc/head.jsp"/>
<%@ include file="header2.jsp" %>
<script>
</script>
</head>
<body>
	<div>
		<div id="main_tool">
			<p>새로운 이야기를 전해주세요.</p><a href="${_ctx}/sub/write">글쓰기</a>
		</div>
		<div id="main_search">
			<input type="text" placeholder="검색" size="30">
			<input type="button" value="검색">
		</div>
		<div id="main_wrap">
			<div class="main_wrap_info"></div>
		</div>
	</div>
<%@ include file="footer.jsp" %>
</body>
</html>
