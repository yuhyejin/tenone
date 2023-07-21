<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>십일</title>
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
    padding: 10px 110px;
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
  </style>
</head>
<body>

    <div id="main_contents">      
        <div style="text-align : center;">
            <img src="/resources/img/index_logo.png">       
       </div>

       <h2 class="index-title">공동 선물 구매, 십일 &#127873;</h2>
       <div>
        <p class="index-text">세상 쉬운 함께 선물하는 방법 <br> &#128071; 십일에서 함께해요. &#128071;</p>
       </div>
       <a class="w-btn w-btn-indigo" href="/user/login">
            &#128400; 로그인 하기
       </a>
       <a class="w-btn w-btn-indigo" href="/user/register">
        &#127881; 회원가입 하기
   	   </a>



    </div>
  </body>
  </html>