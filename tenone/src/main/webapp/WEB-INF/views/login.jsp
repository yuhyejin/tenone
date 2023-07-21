<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/resources/css/style.css" rel="stylesheet">
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet">
<!-- jQuery 스크립트 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="main_contents">
		<h1 class="login-title">로그인</h1>
		<form name="form" id="form" action="/user/login" method="post">
			
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
					<input type="checkbox" id="save_info" name="save_info"></input> <label
						for="remem_info" class="remtxt">정보 기억하기</label>
				</div>
				<div>
					<a href="#" class="pwtext">비밀번호를 까먹으셨나요?</a>
				</div>
			</div>
			<button type="submit" class="btn-login" id="loginbtn">로그인</button>
			<c:if test="${msg == false}">
				<p style="color: #f00;">로그인에 실패했습니다.</p>
			</c:if>
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

		$(document).ready(function() {
		    var userInputId = getCookie("userInputId");
		    var setCookieYN = getCookie("setCookieYN");
		    
		    if(setCookieYN == 'Y') {
		        $("#save_info").prop("checked", true);
		    } else {
		        $("#save_info").prop("checked", false);
		    }
		    
		    $("#user_id").val(userInputId); 
		    
		    //로그인 버튼 클릭
		    $('#loginbtn').click(function() {
		        if($("#save_info").is(":checked")){ 
		            var userInputId = $("#user_id").val();
		            setCookie("userInputId", userInputId, 60); 
		            setCookie("setCookieYN", "Y", 60);
		        } else {
		            deleteCookie("userInputId");
		            deleteCookie("setCookieYN");
		        }
		        
		        document.fform.submit();
		    });
		});

		//쿠키값 Set
		function setCookie(cookieName, value, exdays){
		    var exdate = new Date();
		    exdate.setDate(exdate.getDate() + exdays);
		    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + 
		    exdate.toGMTString());
		    document.cookie = cookieName + "=" + cookieValue;
		}

		//쿠키값 Delete
		function deleteCookie(cookieName){
		    var expireDate = new Date();
		    expireDate.setDate(expireDate.getDate() - 1);
		    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
		}

		//쿠키값 가져오기
		function getCookie(cookie_name) {
		    var x, y;
		    var val = document.cookie.split(';');
		    
		    for (var i = 0; i < val.length; i++) {
		        x = val[i].substr(0, val[i].indexOf('='));
		        y = val[i].substr(val[i].indexOf('=') + 1);
		        x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
		        
		        if (x == cookie_name) {
		          return unescape(y); // unescape로 디코딩 후 값 리턴
		        }
		    }
		}
	</script>
</body>
</html>

