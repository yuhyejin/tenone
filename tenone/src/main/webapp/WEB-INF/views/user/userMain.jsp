<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tenone</title>

    <!--CSS-->
    <link href="/resources/css/goods.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</head>
<body>
	
<div class="main_top">
	<div class="">
		<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#707070" class="bi bi-chevron-left" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
        </svg>
    </div>
    <div class="">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#707070" class="bi bi-cart4 icon" viewBox="0 0 16 16">
            <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l.5 2H5V5zM6 5v2h2V5zm3 0v2h2V5zm3 0v2h1.36l.5-2zm1.11 3H12v2h.61zM11 8H9v2h2zM8 8H6v2h2zM5 8H3.89l.5 2H5zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0"/>
        </svg>
    </div>
</div>
    
<div class="text-center">
	<img src="/resources/img/share_img.jpg" class="share_img" alt="...">
    <span class="align-self-center share_txt">000 선물 공구 참여하기</span>
</div>

<div class="txt">
    <span>어떤 선물인가요?</span>
</div>

<div class="category text-center">
    <a href="/goods/category/생일 선물">
    	<img src="/resources/img/birth_cate.jpg" class="cate_img">
    	<span class="cate_txt">생일 선물</span>
    </a>
    <a href="/goods/category/취업 선물">
    	<img src="/resources/img/company_cate.jpg" class="cate_img">
    	<span class="cate_txt">취업 선물</span>
    </a>
    <a href="/goods/category/응원 선물">
    	<img src="/resources/img/fighting_cate.png" class="cate_img">
    	<span class="cate_txt">응원 선물</span>
    </a>
    <a href="/goods/category/집들이 선물">
    	<img src="/resources/img/home_cate.jpg" class="cate_img">
    	<span class="cate_txt">집들이</span>
    </a>
</div>

<div class="txt">
    <span>요즘 인기있는 공구 선물</span>
</div>

<div class="slider">
    <div class="inner">
        <ul class="swiper-wrapper slide_list">
            <li class="swiper-slide"><img src="img/Images_ Ratio.png"></li>
            <li class="swiper-slide"><img src="img/Images_ Ratio.png"></li>
            <li class="swiper-slide"><img src="img/Images_ Ratio.png"></li>
            <li class="swiper-slide"><img src="img/Images_ Ratio.png"></li>
        </ul>
    </div>
</div>

<script>
$(document).ready(function () {
    slider();
})

function slider() {
    var winW = window.innerWidth; //화면 가로사이즈
    var swiper = undefined;
    var viewNum = ''; //슬라이드 개수 (옵션)
    var loopChk = ''; //무한반복 체크
    var slideNum = $('.slider .swiper-slide').length //슬라이드 총 개수
    var slideInx = 0; //현재 슬라이드 index

    //디바이스 체크
    var winWChk = ''; 
    $(window).on('load resize', function () {
        winW = window.innerWidth;
        sliderAct();
    })

    function sliderAct(){
        //슬라이드 초기화 
        if (swiper != undefined){ 
            swiper.destroy();
            swiper = undefined;
        }

        //slidesPerView 옵션 설정
        if (winW > 768){ //PC 버전
            viewNum = 4;
        }else{ //mobile 버전
            viewNum = 2;
        }

        //loop 옵션 체크
        if (slideNum > viewNum){
            loopChk = true;
        }else{ 
            loopChk = false;
        }

        swiper = new Swiper(".slider .inner", {
            slidesPerView: "auto",
            initialSlide :slideInx,
            loop: loopChk,
            centeredSlides: true,
            navigation: {
                nextEl: $('.slider .swiper-next'),
                prevEl: $('.slider .swiper-prev'),
            },
            on: {
                activeIndexChange: function () {
                    slideInx = this.realIndex; //현재 슬라이드 index 갱신
                }
            },
        });
    }
}
  </script>

</body>
</html>
