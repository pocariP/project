<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/views/inc/head.jsp"/>
<style>
#mask {
	position: absolute;
	z-index: 9000;
	background-color: #000;
	display: none;
	left: 0;
	top: 0;
}

.window {
	display: none;
	position: absolute;
	left: 35%;
	top: 30%;
	z-index: 10000;
}

div#pw_modal {
	width: 600px;
	height: 350px;
	border-radius: 40px;
	background-color: #fff;
	padding: 30px;
}

div#pw_modal h2 {
	margin-top: 40px;
	margin-left: 50px;
	color: #538CB8;
}

div#result_main_btn{
	text-align: center;
}

div#result_main_btn input{
	background-color: #F0DDA0;
	border: none;
	width: 120px;
	height: 30px;
	color: #CC8755;
	font-size: 14px;
	border-radius: 5px;
}
 p#pw_msg {
	color: red;
	margin-left: 120px;
	font-weight: normal;
}
	
div#result_main_btn input{
	padding: 0 10px;
	background-color: #F0DDA0;
	color: #CC8755;
	border: none;
	border-radius: 5px;
}

div#pw_modal_info {
	border: 1px solid #999;
	margin: 30px 30px;
	padding: 40px 60px;
}

div#pw_modal_info_1 {
	display: inline-block;
	line-height: 30px;
	margin-top: 10px;
}

div#pw_modal_info_2 {
	display: inline-block;
	width: 300px;
	line-height: 30px;
	margin-top: 10px;
}

div#pw_modal_info_2 input {
margin: 5px;
}
</style>

<script>
	$(function() {
		
		/* findInfo meun div action */
		$("#info_meun1").click(function() {
			$("#info_meun1").css("border-bottom", "0px solid");
			$("#info_meun2").css("border-bottom", "1px solid #E6B54B");
			$("#id_info").show();
			$("#pw_info").hide();
			$("form").each(function() {
				this.reset();
			});
		});
		$("#info_meun2").click(function() {
			$("#info_meun1").css("border-bottom", "1px solid #E6B54B");
			$("#info_meun2").css("border-bottom", "0px solid");
			$("#pw_info").show();
			$("#id_info").hide();
			$("form").each(function() {
				this.reset();
			});
		});

		/* email selectbox */
		$("select[name=emailSelect]").change(function() {
			if ($(this).val() == "2") {
				$(".email2").val("");
				$(".email2").focus();
			} else if($(this).val() == "1") {
				$(".email2").val("");
				$("#emailSelect").focus();
			} else {
				$(".email2").val($(this).val());
			}
		});
		
		/* 폼 animate */
		$("#info_main").animate({
			top : '18%',
			opacity : '0.9'
		});
		
		/* index 이동 */
		var url = "/pocari/main/index";
		$("#member_logo").css("cursor", "pointer").click(function() {
			$(location).attr('href', url);
		});
		
		/* ----------------------------모달창---------------------------- */
		
		//닫기 버튼을 눌렀을 때
		$('.window .close').click(function(e) {
			//링크 기본동작은 작동하지 않도록 한다.
			e.preventDefault();
			$('#mask, .window').hide();
		});
			
		/* 비밀번호 일치 검사 */
		$("#pwd").blur(function() {
			var pw = $("#pwd").val();
			var pwChk = $("#pwdChk").val();
			if (pw != pwChk) {
				$("#pw_msg").html("비밀번호 불일치");
			} else if (pw == pwChk) {
				$("#pw_msg").html("");
			}
		});
		$("#pwdChk").blur(function() {
			var pw = $("#pwd").val();
			var pwChk = $("#pwdChk").val();
			if (pw != pwChk) {
				$("#pw_msg").html("비밀번호 불일치");
			} else if (pw == pwChk) {
				$("#pw_msg").html("");
			}
		});
	});

function infoIdChk() {
 	var form = document.id_frm;
	
	if (form.name.value == "") {
		alert("이름을 입력해주세요.");
		form.name.focus();
		return;
	} else if (form.email1.value == "") {
		alert("이메일을 입력해주세요.");
		form.email1.focus();
		return;
	} else if(form.email2.value == "")	{
		alert("메일을 입력해주세요.")
		form.emailSelect.focus();
		return;
	}
 	form.submit();
}

function infoPwChk() {
  	var form = document.pw_frm;
	// 유효성 검사
	if (form.id.value == "") {
		alert("아이디를 입력해주세요.");
		form.id.focus();
		return;
	} else if (form.name.value == "") {
		alert("이름을 입력해주세요.");
		form.name.focus();
		return;
	} else if (form.email1.value == "") {
		alert("이메일을 입력해주세요.");
		form.email1.focus();
		return;
	} else if(form.email2.value == "")	{
		alert("이메일을 입력해주세요.")
		form.email2.focus();
		return;
	}
	
 	// 비동기 방식으로 정보가 일치하는지 확인
 	var url = "${_ctx}/user/pw/check";
 	var lgnId = $("#lgnId").val();
 	var name = $("#name").val();
 	var email = $("#pwEmail1").val() + "@" + $("#pwEmail2").val();
 	alert(email);
 	$.post(url, {
 		lgnId : lgnId,
 		name : name,
 		email : email
 	}, function (data) {
 		alert(data);
 		if (data == 0) {
			// 일치하는 정보가 없습니다.
			alert("일치하는 정보가 없습니다.");
		} else {
			// 일치하는 정보가 있습니다.
			wrapWindowByMask();
		}
	});
}

function wrapWindowByMask() { // 모달창
	//화면의 높이와 너비를 구한다.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();
		
	//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	$('#mask').css({
		'width' : maskWidth,
		'height' : maskHeight
	});
	
	$('#mask').fadeTo("slow", 0.8);
	
	$('.window').show();
}
function modalSubmit() { // 모달창에서 변경할 비밀번호 가져오는 메소드
	
	var form = document.pw_frm;
	var pwd = $("#pw_modal_info_2 #pwd").val();
	var pwdChk = $("#pw_modal_info_2 #pwdChk").val();
	
	// 유효성 검사
	if (pwd == "") {
		alert("비밀번호를 입력해주세요.");
		form.pwd.focus();
		return;
	} else if (pwdChk == "") {
		alert("비밀번호를 입력해주세요.");
		form.pwdChk.focus();
		return;
	} else if (pwd != pwdChk) {
		alert("비밀번호를 동일하게 입력해주세요.");
		form.pwd.focus();
		return;
	}
	
	//비밀번호를 가져와 폼안에 있는 히든 input에 넣기
	var editPw = $("#pw_modal_info_2 #pwd").val()
	$("#editPw").val(editPw);
	
	//이메일 하나로 합쳐준후 controller에 전송
	var eamil1 = $("#pwEmail1").val();
	var eamil2 = $("#pwEmail2").val();
	$("#editEmail").val(eamil1 + "@" + eamil2);
	
	form.submit(); // pw변경 서브밋
}

</script>

</head>
<body>
	<div class="home">
		<div id="member_logo"></div>
		<div id="info_main">
			<div id="info_main_meun">
				<div id="info_meun1"><a href="#" class="info_meun">아이디 찾기</a></div><div id="info_meun2"><a href="#" class="info_meun">비밀번호 찾기</a></div>
			</div>
			<div id="id_info">
				<form action="${_ctx}/user/idResult" method="post" name="id_frm" id="id_frm">
					<span style="font-size: 17px">가입 당시 입력한 이메일 주소를 통해 아이디를 찾을 수 있습니다.</span>
					<br><br><br>
					이&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" size="38" placeholder="Name" maxlength="20" id="id_go" required="required">
					<br><br>
					<div>
					이&nbsp;메&nbsp;일&nbsp;:&nbsp;&nbsp;&nbsp;
						<input id="email1" name="email1" type="text" class="box" size="6" placeholder="Email" maxlength="30"> @ 
						<input class="email2" name="email2" id="email2" type="text" class="box" size="6"> 
						<select id="emailSelect" name="emailSelect">
							<option value="1" selected="selected">선택해주세요.</option>
							<option value="2">직접입력</option>
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="nate.com">nate.com</option>
						</select>
					</div>
					<br><br>
					<input type="button" id="info_btn" onclick="infoIdChk()" value="아이디 찾기">
					<input type="reset" id="resetId" style="display: none;">
				</form>
			</div>
			<div id="pw_info">
				<form action="${_ctx}/user/pwResult" method="post" name="pw_frm">
					<span style="font-size: 17px">가입 당시 입력한 이메일 주소를 통해 비밀번호를 찾을 수 있습니다.</span>
					<br><br>
					아&nbsp;이&nbsp;디&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="lgnId" name="lgnId" class="pw_go" size="38" placeholder="Enter your email">
					<br><br>
					이&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="name" name="name" class="pw_go" size="38" placeholder="Name" maxlength="20">
					<br><br>
					<div>
					이&nbsp;메&nbsp;일&nbsp;:&nbsp;&nbsp;&nbsp;
						<input id="pwEmail1" name="email1" type="text" class="box" size="6" placeholder="Email" maxlength="30"> @ 
						<input class="email2" name="email2" id="pwEmail2" type="text" class="box" size="6"> 
						<select id="emailSelect" name="emailSelect" class="pw_go">
							<option value="1" selected="selected">선택해주세요.</option>
							<option value="2">직접입력</option>
							<option value="gmail.com">gmail.com</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="nate.com">nate.com</option>
						</select>
					</div>
					<br>
<!-- 					변경 할 비밀번호 담기 -->
					<input type="hidden" value="" name="lgnPw" id="editPw">
<!-- 					이메일 하나로 합친후 담기 -->
					<input type="hidden" value="" name="email" id="editEmail">
					<input type="button" id="info_btn" onclick="infoPwChk()" class="openMask" value="비밀번호 찾기">
					<input type="reset" id="resetPw" style="display: none;">
				</form>
			</div>
		</div>
	</div>
	
<!-- 	모달창 시작 -->
	<div id="mask"></div>
	<div class="window">
		<div id="pw_modal">
			<h2>비밀번호 변경</h2>
			<div id="pw_modal_info">
				<div id="pw_modal_info_1">
					<span>비밀번호</span><br>
					<span>비밀번호확인</span>
				</div>
				<div id="pw_modal_info_2">
					<input type="password" id="pwd" name="lgnPw" size="37" maxlength="20">
					<input type="password" id="pwdChk" name="lgnPwChk" size="37" maxlength="20">
				</div>
				<p id="pw_msg"></p>
			</div>
			<div id="result_main_btn">
				<input id="pwBtn" type="button" value="변경하기" onclick="modalSubmit()">
				<input id="pwBtn" class="close" type="button" value="취소">
				<p></p>
			</div>
		</div>
	</div>
<!-- 	모달창 끝 -->
	
</body>
</html>