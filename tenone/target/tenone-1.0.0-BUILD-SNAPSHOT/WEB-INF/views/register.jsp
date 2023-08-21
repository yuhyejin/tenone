<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>회원가입</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--CSS-->
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!-- jQuery 스크립트 -->
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
  <div id="main_contents">
    <a href="/">
        <i class='bx bx-arrow-back icons'></i>
    </a>
    <h1 class="login-title">회원가입</h1>
    <form name="form" id="form" action="/user/register" method="post">
        <label class="titleTxt">회원 상태</label>
        <div class="user-state">
            <input type="button" class="btn-person" value="개인" onclick="getHide()">
            <input type="button" class="btn-seller" value="판매자" onclick="getShow()">
        </div>

        <div class="input-group" id="userState" style="display: none;">
            <label class="titleTxt" id="shopTxt" for="shop_name">쇼핑몰 이름</label>
            <p >
                <input type="text" id="shop_name" name="shop_name" placeholder="고객에게 노출될 쇼핑몰 이름을 등록해 주세요."/>        
            </p>
        </div>
        <div class="input-group">
            <label class="titleTxt" for="user_name">이름</label>
            <p>
                <input type="text" id="user_name" name="user_name" placeholder="실명을 등록해 주세요." />        
            </p>
            
        </div>

      <div class="input-group">
        <label class="titleTxt" for="user_id">이메일</label>
        <p id="ee">
            <i class='bx bx-envelope'></i>
            <input type="email" id="user_id"  name="user_id" placeholder="이메일 형태로 등록해주세요.">
        </p>
      </div>
      <div class="input-group">
        <label class="titleTxt" for="user_pwd">비밀번호</label>
        <p>
          <i class='bx bx-lock-alt'></i>
          <input type="password" id="user_pwd" name="user_pwd"  placeholder="8-16자의 영문, 숫자, 특수기호">
          <i class='bx bx-hide' id="keyShow"></i>
        </p>
      </div>
      <button href="/user/register" class="btn-login">본인인증</button>
    </form>
    <br>
    <div class="bottom">
      <span class="registext">이미 회원이신가요?</span>
      <a href="/user/login" class="btn-signup">로그인</a>
    </div>
    
  </div>

  <script>
    // 패스워드 숨기기/보이기
    $(document).ready(function () {
      $("#keyShow").on("click", function () {
        if ($("#user_pwd").attr("type") == "password") {
          $("#user_pwd").attr("type", "text");
          $($(this)).attr("class", "bx bx-show");
        } else {
          $("#user_pwd").attr("type", "password");
          $($(this)).attr("class", "bx bx-hide");
        }
      });
    });

    // 개인/판매자 쇼핑몰 부분 숨기기
    function getHide() {
        document.getElementById("userState").style.display = "none";
    }

    function getShow() {
        document.getElementById("userState").style.display = "";
    }
  </script>
</body>
</html>
