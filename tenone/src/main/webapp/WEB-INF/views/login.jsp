<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>로그인</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
    * {
      box-sizing: border-box;
    }
    :root {
    /* ===== Colors ===== */
    --body-color: #E5E7EB;
    --sidebar-color: #FFF;
    --primary-color: #FF984E;
    --primary-color-light: #F6F5FF;
    --toggle-color: #DDD;
    --text-color: #707070;
    --text-color2: #18191A;
    --text-color3: #9CA3AF;
    --table-color: #F3F4F6;

    /* ==== Transition ==== */
    --tran-02: all 0.2s ease;
    --tran-03: all 0.3s ease;
    --tran-04: all 0.4s ease;
    --tran-05: all 0.5s ease;
    }

    html {
      height: 100%;
      width: 100%;
      word-break: keep-all;
    }

    body {
      background-color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
      width: 100%;
      margin: 0;
    }

    #main_contents {
      width: 360px;
      max-width: 600px;
      padding: 20px;
    }

    .login-title {
      font-size: 30px;
      color: #000000;
      margin-bottom: 20px;
      margin-top: 10px;
    }

    .input-group {
      width: 330px;
      margin: 0 auto;
      margin-bottom: 15px;
    }

    .input-group p{
      display: flex;
      align-items: center;
      width: 320px;
      font-size: 14px;
      padding: 10px 10px;
      border: 1px solid #A2A2A6;
      border-radius: 3px;
      box-sizing: border-box;
      transition: .3s;
    }

    .input-group i {
      display: flex;
      align-items: center;
      font-size: 17px;
      margin-right: 7px;
      color: #667085;
    }

    input[type=email],
    input[type=password],
    input[type=text] {
      display: flex;
      align-items: center;
      width: 250px;
      border: none;
      outline: none;
      font-size: 14px;
    }

    p:focus{
      border-color: var(--primary-color);
    }

    #keyShow{
      position: absolute;
      cursor: pointer;
      margin-left: 280px;
    }

    .line{
      display: flex;
      align-items: center;
      justify-content: space-around;
    }

    .line-re{
      margin-right: 32px;
      display: flex;
      align-items: center;
      justify-content: space-around;
    }

    .remtxt{
      margin-left: 3px;
      font-size: 12px;
      color: #747980;
    }

    .pwtext{
      font-size: 12px;
      margin-left: 72px;
      color: #000000;
    }

    .btn-login {
      display: inline-block;
      width: 320px;
      padding: 10px 50px;
      border: none;
      border-radius: 8px;
      background-color: #FF984E;
      color: #FFFFFF;
      font-size: 16px;
      margin-top: 120px;
      margin-bottom: 50px;
    }

    .btn-login:hover {
      background-color: #E57238;
    }

    #main_contents .bottom{
      position: fixed;
      bottom: 55px;
      margin-left: 50px;
    }

    .registext{
      font-size: 13px;
      color: #747980;
    }

    .btn-signup {
      font-size: 12px;
      color: #000000;
      text-decoration: underline;
      transition: color 0.3s;
      margin-top: 5px;
      margin-bottom: 100px;
    }

    .btn-signup:hover {
      color: #FF984E;
    }
  </style>
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet">
<!-- jQuery 스크립트 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="main_contents">
		<a href="/">
	        <i class='bx bx-arrow-back icons'></i>
	    </a>
		<h1 class="login-title">로그인</h1>
		<form name="login_form" id="form" action="/user/login" method="post">
			
			<div class="input-group">
				<p>
					<i class='bx bx-envelope'></i> 
					<input type="email" id="user_id" name="user_id" placeholder="이메일" required="required">
				</p>
			</div>
			<div class="input-group">
				<p>
					<i class='bx bx-lock-alt'></i> 
					<input type="password" id="user_pwd" name="user_pwd" required="required" placeholder="비밀번호"> 
					<i class='bx bx-hide' id="keyShow"></i>
				</p>
			</div>
			<div class="line">
				<div class="line-re">
					<input type="checkbox" id="save_info" name="save_info"></input> 
					<label for="remem_info" class="remtxt">정보 기억하기</label>
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
			<span class="registext">아직 회원이 아니신가요?</span> 
			<a href="/user/register" class="btn-signup">회원가입</a>
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

