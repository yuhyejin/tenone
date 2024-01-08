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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="main_top">
        <div class="icon">
            <a href="/goods/">
            	<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#707070" class="bi bi-chevron-left" viewBox="0 0 16 16">
                	<path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
            	</svg>
            </a>
        </div>
        <div class="icon">
            <button type="button" class="cartBtn position-relative">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#707070" class="bi bi-cart4" viewBox="0 0 16 16">
                    <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l.5 2H5V5zM6 5v2h2V5zm3 0v2h2V5zm3 0v2h1.36l.5-2zm1.11 3H12v2h.61zM11 8H9v2h2zM8 8H6v2h2zM5 8H3.89l.5 2H5zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0"/>
                </svg>
                <span class="position-absolute top-0 start-50 translate-small badge rounded-pill color">3
                    <span class="visually-hidden">unread messages</span>
                </span>
            </button>
        </div>
    </div>
    
    <div class="mt-2">
        <span class="fw-medium text-secondary fontSizeWish">찜한 아이템 <span> ${likeCount}</span> </span>
    </div>
    <div class="overflow-y-auto">
	    <div class="content_wrap justify-content-between">
	    	<c:forEach items="${likeList}" var="like">
		        <div class="goodsSize">
		        	<a href="/goods/goodsView/${like.goodsId}">
			            <div class="imgWrapper">
			               <img src="/resources/img/company_cate.jpg" class="img">
			                <div class="posWrap">
			                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
			                        <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1"/>
			                    </svg>
			                </div>
			            </div>
			            <span class="shop_txt">${like.shop_name}<br></span>
			            <span>${like.goodsName}<br></span>
			            <span class="price_txt">${like.goodsPrice}</span><span>원</span>
		        	</a>
		        </div>
			</c:forEach>
	    </div>
	</div>


</body>
</html>