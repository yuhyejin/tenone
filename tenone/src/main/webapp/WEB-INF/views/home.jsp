<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>십일</title>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    * {
      box-sizing: border-box;
    }

    html {
      height: 100%;
      width: 100%;
      word-break: keep-all;
    }

    body {
        background-image: linear-gradient(rgba(0, 0, 0, 0.527), rgba(0, 0, 0, 0.5)),
        url("/resources/img/indexBg.png" );
        background-repeat:no-repeat;
        background-position:center center;
        background-size: 390px 845px;
        position: relative; 
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
      padding: 10px;
      text-align: center;
    }

    .index-title {
        color: #FFFFFF;
        font-weight: 500;
    }

    .index-text {
        color: #FFFFFF;
        font-weight: 300;
    }

    a {
    margin-bottom: 10px;
    }

    .w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 110px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    }

    .w-btn-indigo {
        background-color: rgb(255, 255, 255);
        color: #000000;
    }

    .w-btn-orange {
        background-color: #FF984E;
        color: #ffffff;
    }


    .login-title {
      font-size: 30px;
      color: #505050;
      margin-bottom: 100px;
      margin-top: 10px;
    }

    .input-group {
      width: 330px;
      margin: 0 auto;
      margin-bottom: 35px;
    }

    .input-group input[type="email"],
    .input-group input[type="password"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-bottom: 1px solid #838383;
      background-color: #fffbf9;
    }

    .btn-login {
      display: inline-block;
      padding: 10px 50px;
      border-radius: 20px;
      background-color: #FF984E;
      color: #FFFFFF;
      font-size: 16px;
      text-decoration: none;
      transition: background-color 0.3s;
      margin-top: 20px;
      margin-bottom: 5px;
    }

    .btn-login:hover {
      background-color: #E57238;
    }

    .btn-signup {
      font-size: 14px;
      color: #505050;
      text-decoration: underline;
      transition: color 0.3s;
      margin-top: 5px;
      margin-bottom: 100px;
    }

    .btn-signup:hover {
      color: #FF984E;
    }
  </style>
</head>
<body>

    <div id="main_contents">      
        <div style="text-align : center;">
            <img src="/resources/img/index_logo.png">       
       </div>

       <h2 class="index-title">반가워요. ${user.user_name} &#128400;</h2>
       <div>
        <p class="index-text">세상 쉬운 함께 선물하는 방법 <br> &#128071; 십일에서 함께해요. &#128071;</p>
       </div>
       <a class="w-btn w-btn-orange" type="submit">
                  쇼핑몰    
       </a>
       <c:if test="${user.adminCk == 1 }">
       	<a class="w-btn w-btn-orange" href="/admin">관리자 화면</a>
       </c:if>
       <a class="w-btn w-btn-indigo" href="/user/login">
            ooo 진행 현황
       </a>
       <a class="w-btn w-btn-indigo" href="/user/logout">
            로그아웃
       </a>



    </div>
  </body>
  </html>