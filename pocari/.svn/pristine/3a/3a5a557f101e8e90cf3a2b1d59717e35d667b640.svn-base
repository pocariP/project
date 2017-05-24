<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <c:import url="/WEB-INF/views/inc/head.jsp"/>
<script>
	$(function() {
		
		/* index 이동 */
		var url = "/pocari/main/index";
		$("#member_logo").css("cursor","pointer").click(function() {
			$(location).attr('href',url);
		});
		
		/* 폼 animate */
		$("#join_main").animate({
			top : '18%',
			opacity : '0.9'
		});

		/* email selectbox */
		$("select[name=select_email]").change(function() {
			if ($(this).val() == "2") {
				$("#email2").val("");
				$("#email2").focus();
			} else if($(this).val() == "1") {
				$("#email2").val("");
				$("#select_email").focus();
			} else {
				$("#email2").val($(this).val());
			}
		});
		
		/* 이메일 유효성 검사 */
		$("#email").blur(function() {
			var email = $("#email").val();
			var email2 = $("#email2").val();
			if (email == "") {
				$("#emailChk").text("이메일을 입력해주세요.").css("color", "red")
			} else if (email2 == "") {
				$("#emailChk").text("이메일을 입력해주세요.").css("color", "red");
			} else {
				$("#emailChk").text("");
			}
		});
		$("#email2").blur(function() {
			var email = $("#email").val();
			var email2 = $("#email2").val();
			if (email2 == "") {
				$("#emailChk").text("이메일을 입력해주세요.").css("color", "red").css();
			} else if (email == "") {
				$("#emailChk").text("이메일을 입력해주세요.").css("color", "red");
			} else {
				$("#emailChk").text("");
			}
		});
		$("#select_email").blur(function() {
			var email = $("#email").val();
			var email2 = $("#email2").val();
			if (email2 == "") {
				$("#emailChk").text("이메일을 입력해주세요.").css("color", "red");
			} else if (email == "") {
				$("#emailChk").text("이메일을 입력해주세요.").css("color", "red");
			} else {
				$("#emailChk").text("");
			}
		});
		
		/* 유효성 체크 */
		$("#join_frm").validate();
		
		$("#lgnId").blur(function(){
			var lgnId = $("#lgnId").val();
			if(lgnId == "" || lgnId == " "){
				alert("아이디를 입력해주세요.");
			} else {
			var url = "${_ctx}/user/id/available";
				$.post(url, {lgnId : lgnId}, function(json){
					// ID를 사용할 수 있으면 isCheckID : Y
					if(json.code == 99){
						$("#isCheckId").val("Y");
						$("#idChk").text("사용할 수 있는 아이디입니다.").css("color", "green");
					} else {
						$("#idChk").text("사용할 수 없는 아이디입니다.").css("color", "red");
					}
				});
			}
		});
	});
		function joinChk() {
			if($("#join_frm").valid()){
					var url = "${_ctx}/user/join";
					$.post(url, $("#join_frm").serialize(), function(data){
						//alert(data);
							if(data == 1) {
								alert("회원가입에 성공하셨습니다.");
								document.location.href="${_ctx}/user/joinSuccess";
							} else {
								alert("회원가입에 실패하셨습니다. 관리자에게 문의하세요.");
								$("form").each(function(){
										this.reset();
								});
							}
					});
					
			}
			
		}

</script>
</head>
<body>

	<div class="home">
		<div id="member_logo"></div>
		<div id="join_main">
			<h1>회원가입</h1>
			<form action="#" method="post" name="join_frm" id="join_frm">
				<div>
					<input class="join_info" type="text" name="lgnId" id="lgnId" size="40" placeholder="아이디" maxlength="20" title="아이디를 입력해주세요." required="required">
					<input type="hidden" id="isCheckId" value="N"/><p id="idChk"></p>
				</div>
				<div>
					<input class="join_info" type="password" name="lgnPw" id="lgnPw" size="40" placeholder="비밀번호" minlength="4" maxlength="20" title="비밀번호를 입력해주세요." required="required">
				</div>
				<div>
					<input class="join_info" type="password" name="lgnPwChk" size="40" placeholder="비밀번호 확인" minlength="4" maxlength="20" equalTo="#lgnPw" data-msg-equalTo="비밀번호가 일치하지 않습니다." required="required">
				</div>
				<div>
					<input class="join_info" type="text" name="name" size="40" placeholder="이름" maxlength="20" title="이름을 입력해주세요." required="required">
				</div>
				<div id="join_email">
					<input class="join_info_email" type="text" name="email" size="8" placeholder="이메일" id="email"> @
					<input type="hidden" value="@" name="email">
					<input class="join_info_email" type="text" name="email" size="8" placeholder="이메일" id="email2">
					<select id="select_email" name="select_email">
						<option value="1">선택해주세요.</option>
						<option value="2">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="google.com">google.com</option>
						<option value="daum.com">daum.com</option>
						<option value="nate.com">nate.com</option>
					</select>
					<p id="emailChk"></p> 
				</div>
				<div id="join_btn">
					<input type="button" value="회원가입" size="40" onclick="joinChk();">
				</div>
			</form>
		</div>
	</div>

</body>
</html>