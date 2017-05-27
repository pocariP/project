<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp"/>
<title>로그인</title>
 <script>
	function loginChk() {
		var form = document.frm;
		
		if (form.lgnId.value == "") {
			alert("아이디를 입력해주세요.");
			form.lgnId.focus();
			return;
		} else if (form.lgnPw.value == "") {
			alert("비밀번호를 입력해주세요.");
			form.lgnPw.focus();
			return;
		}
		
		form.submit();
	}
</script>
<script>
	$(function() {
		$("#lgnId").focus();
		$("#login_main").animate({
			top: '18%',
			opacity: '0.9'
		});
		
		var url = "/pocari/main/index";
		$("#member_logo").css("cursor","pointer").click(function() {
			$(location).attr('href',url);
		});		
		
		// 로그인 엔터누르면 로그인 버튼 활성화
		$("#lgnPw").keydown(function (key) {
	        if(key.keyCode == 13){ // 키가 13이면 실행 (엔터는 13) 
	        	loginChk();
	        }
	    });
	});	
	<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
		alert("${SPRING_SECURITY_LAST_EXCEPTION.message}");
		history.pushState(null, null, location.origin + location.pathname);
		<c:remove var = "SPRING_SECURITY_LAST_EXCEPTION" scope = "session" />
	</c:if>

</script>

</head>
<body>
	<div class="home">
	<div id="member_logo"></div>
	<div id="login_main">
		<form action="${_ctx}/security/login" method="post" name="frm" id="frm">
			<div id="login_title">로그인</div>
			<div id="login_id">
				<input type="text" name="lgnId" id="lgnId" size="40" placeholder="Enter your ID">
			</div>
			<br>
			<div>
				<input type="password" id="lgnPw" name="lgnPw" size="40" placeholder="Password">
			</div>
			<br><br>
			<input id="login_button" type="button" value="l o g i n" onclick="loginChk();">
			<br>
			<div id="login_join">
				<a href="findInfo" id="login_join_info1">아이디나 비밀번호가 기억나지 않습니까?</a>
				<br>
				<a href="join" id="login_join_info2">회원이 아니신가요?</a>
			</div>
		</form>
	</div>
	</div>
</body>
</html>