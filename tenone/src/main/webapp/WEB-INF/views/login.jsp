<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/resources/css/login.css" rel="stylesheet">
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
<!-- jQuery 스크립트 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="main_contents">
		<h1 class="login-title">로그인</h1>
		<form name="form" action="/user/login" method="post">
			<c:if test="${msg == false}">
				<p style="color: #f00;">로그인에 실패했습니다.</p>
			</c:if>
			<div class="input-group">
				<p>
					<i class='bx bx-envelope'></i> <input type="email" id="user_id"
						name="user_id" placeholder="이메일" required="required">
				</p>
			</div>
			<div class="input-group">
				<p>
					<i class='bx bx-lock-alt'></i> <input type="password" id="user_pwd"
						name="user_pwd" required="required" placeholder="비밀번호"> <i
						class='bx bx-hide' id="keyShow"></i>
				</p>
			</div>
			<div class="line">
				<div class="line-re">
					<input type="checkbox" id="remem_info" name="remem_info" value="0"></input>
					<label for="remem_info" class="remtxt">정보 기억하기</label>
				</div>
				<div>
					<a href="#" class="pwtext">비밀번호를 까먹으셨나요?</a>
				</div>
			</div>
			<button href="#" class="btn-login">로그인</button>
		</form>



		<br>
		<div class="bottom">
			<span class="registext">아직 회원이 아니신가요?</span> <a href="/user/register"
				class="btn-signup">회원가입</a>
		</div>

	</div>

	<script>
		$(document).ready(function() {
			$("#keyShow").on("click", function() {
				if ($("#user_pwd").attr("type") == "password") {
					$("#user_pwd").attr("type", "text");
					$($(this)).attr("class", "bx bx-show");
				} else {
					$("#user_pwd").attr("type", "password");
					$($(this)).attr("class", "bx bx-hide");
				}
			});
		});
	</script>
</body>
</html>

