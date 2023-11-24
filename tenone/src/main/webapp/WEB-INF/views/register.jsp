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
    <form name="register_form" id="register_form" action="/user/register" method="post">
        <label class="titleTxt">회원 상태</label>
        <div class="user-state">
            <input type="button" class="btn-person" value="개인" onclick="getHide()">
            <input type="button" class="btn-seller" value="판매자" onclick="getShow()">
        </div>

        <div class="input-group" id="userState" style="display: none;">
            <label class="titleTxt" id="shopTxt" for="shop_name">쇼핑몰 이름</label>
            <p class="register_input">
                <input type="text" id="shop_name" name="shop_name" placeholder="고객에게 노출될 쇼핑몰 이름을 등록해 주세요."/>        
            </p>
        </div>
        <div class="input-group">
            <label class="titleTxt" for="user_name">이름</label>
            <p class="register_input">
                <input type="text" id="user_name" name="user_name" placeholder="실명을 등록해 주세요." />        
            </p>
            
        </div>

      <div class="input-group">
        <label class="titleTxt" for="user_id">이메일</label>
        <p class="register_input">
            <i class='bx bx-envelope'></i>
            <input type="email" id="user_id"  name="user_id" placeholder="이메일 형태로 등록해주세요.">
        </p>
        <div class="d-flex mt5">
        	<p class="email_check" id="mail_check_input_false">
	            <input class="mail_check_input" type="text" id="idouth" name="idouth" placeholder="인증번호 입력" disabled="disabled">
	        </p>
	        <div class="btn ml5"><span>인증번호 전송</span></div>
	        
	        
        </div>
      </div>
      	
      <div class="input-group">
      	<span id="mail_check_input_box_warn"></span>
      </div>
      
      <div class="input-group">
        <label class="titleTxt" for="user_pwd">비밀번호</label>
        <p class="register_input">
          <i class='bx bx-lock-alt'></i>
          <input type="password" id="user_pwd" name="user_pwd" placeholder="8-16자의 영문, 숫자, 특수기호">
          <i class='bx bx-hide' id="keyShow"></i>
        </p>
      </div>
      <button type="submit" class="btn-login" id="submit">회원가입</button>
    </form>
    <br>
    <div class="bottom">
      <span class="registext">이미 회원이신가요?</span>
      <a href="/user/login" class="btn-signup">로그인</a>
    </div>
    
  </div>

  <script>
  var code = "";
  
  /* 유효성 검사 통과유무 변수 */
  var mailnumCheck = false;
  
  //개인/판매자 쇼핑몰 부분 숨기기
  function getHide() {
      document.getElementById("userState").style.display = "none";
  }

  function getShow() {
      document.getElementById("userState").style.display = "";
  }
  
  function isEmail(asValue) {
	  var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	  
	  return regExp.test(asValue);
  }
  
  function isPassword(asValue) {
		var regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
	 
		return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
  }
  
  $('#submit').on('click', function(e){
	  /* if($('#shop_name').val() == "") {
		  e.preventDefault();
		  alert("쇼핑몰 이름을 입력해주세요.");
	  } */
	  if($('#user_name').val() == "") {
		  e.preventDefault();
		  alert("이름을 입력해주세요.");
	  }
	  if($('#user_id').val() == "") {
		  e.preventDefault();
		  alert("이메일을 입력해주세요.");
	  }else if(!isEmail($('#user_id').val())) {
		  e.preventDefault();
		  alert("이메일 형식의 아이디가 아닙니다.");
	  }
	  if(!mailnumCheck) {
		  e.preventDefault();
		  alert("이메일 인증을 해주세요.");
	  }
	  if($('#user_pwd').val() == "") {
		  e.preventDefault();
		  alert("비밀번호를 입력해주세요.");
	  } else if($('#user_pwd').val().length < 8 || $('#user_pwd').val().length > 16) {
		  e.preventDefault();
		  alert("비밀번호는 8~16자리여야 합니다.");
	  } else if (!isPassword($('#user_pwd').val())) {
		  e.preventDefault();
		  alert("영문, 숫자, 특수문자를 최소 한 가지씩 조합하여 8~16자리 비밀번호를 입력하세요.");
	  }
  });
  
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
    
    
    /* 인증번호 전송 */
    $(".btn").click(function() {
    	var email = $("#user_id").val();
    	var checkBox = $(".mail_check_input");
    	var boxWrap = $(".email_check");
    	
    	$.ajax({
    		type: "GET",
    		url: "mailCheck?email=" + email,
    		success:function(data){
    			//console.log("data : " + data);
    			checkBox.attr("disabled",false);
    			boxWrap.attr("id", "mail_check_input_true");
    			code = data;
    		}
    	});
    });
    
    /* 인증번호 비교 */
   $(".mail_check_input").blur(function(){
	   var inputCode = $(".mail_check_input").val();	// 입력코드
	   var checkResult = $("#mail_check_input_box_warn");	// 비교결과
	   
	   if(inputCode == code) {
		   checkResult.html("인증번호가 일치합니다.");
		   checkResult.attr("class", "correct");
		   mailnumCheck = true;
	   } else {
		   checkResult.html("인증번호를 다시 확인해주세요.");
		   checkResult.attr("class", "incorrect");
		   mailnumCheck = false;
	   }
   });
  </script>
</body>
</html>
