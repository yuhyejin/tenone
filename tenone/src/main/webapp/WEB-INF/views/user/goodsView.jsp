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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="main_top">
		<div class="">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
				fill="#707070" class="bi bi-chevron-left" viewBox="0 0 16 16">
            <path fill-rule="evenodd"
					d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
        </svg>
		</div>
		<div class="">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
				fill="#707070" class="bi bi-cart4 icon" viewBox="0 0 16 16">
            <path
					d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l.5 2H5V5zM6 5v2h2V5zm3 0v2h2V5zm3 0v2h1.36l.5-2zm1.11 3H12v2h.61zM11 8H9v2h2zM8 8H6v2h2zM5 8H3.89l.5 2H5zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0" />
        </svg>
		</div>
	</div>
	
	<div>
		<img src="/resources/img/company_cate.jpg" class="viewImg">
		<div class="modal">
			<span class="close">&times;</span> 
			<img class="modal_content" id="img01">
		</div>
	</div>
	<div>
		<div class="goodsTitle">
			<span>${goodsView.shop_name}<br></span> 
			<span class="goodsNameTxt">${goodsView.goodsName}<br></span>
			<div class="mt-2">
				<span class="goodsPriceTxt">${goodsView.goodsPrice}</span>
			</div>
		</div>
		<div class="goodsInner">
			<span class="goodsInfoTxt">상품 정보 </span>
			<div class="align-self-center">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-truck icon" viewBox="0 0 16 16">
	                   <path
						d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456M12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2" />
	               </svg>
				배송비 포함
			</div>
			<div>
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16">
	                  <path
						d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z" />
	                  <path
						d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708" />
	            </svg>
				${goodsView.goodsDeli}
			</div>
		</div>
	</div>

	<div>
		<div class="tab-container">
			<div class="tab active" data-tab="description">상품 설명</div>
			<div class="tab" data-tab="reviews">상품 후기</div>
			<div class="tab" data-tab="details">상세 정보</div>
		</div>

		<div class="tab-content active" id="description">
			<p>${goodsView.goodsContents}</p>
		</div>
		<div class="tab-content" id="reviews">
			<p>상품 후기 내용입니다.</p>
		</div>
		<div class="tab-content" id="details">
			<p>상세 정보 내용입니다.</p>
		</div>
	</div>
	
	<div class="goodsFooter" >
		<div class="d-flex">
			<span id="likeId" style="display:none;">${likeVal.likeId}</span>
			<c:choose>
				<%-- tb_like 테이블을 가져와 비교후 예전에 찜하기를 했었다면 찜취소로 활성화가 된다 --%>
				<c:when test="${(likeVal.lgoodsId eq goodsView.goodsId) and (likeVal.luserId eq userId)}">
					<div class="heart" id="likeShow">
						<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="red" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
		                    <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1" />
		                </svg>
					</div>
				</c:when>
				<%-- prdct_like 테이블을 가져와 비교후 예전에 찜하기를 안했다면(혹은 찜취소를 했었다면) 찜하기로 활성화가 된다 --%>
				<c:otherwise>
					<div class="heart" id="likeHide">
						<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#707070" id="heartBtnColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
		                    <path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
		                </svg>
					</div>
				</c:otherwise>
			</c:choose>
							
			<div class="buyBtn_wrap">
				<button type="button" class="buyBtn">공구하기</button>
			</div>
		</div>
	</div>
	<div class="goodsFooter" style="display: none;">
		<div class="wrap">
			<div>
				<h4 class="fw-bold mt-2">옵션 선택</h4>
			</div>
			<div class="selectWrap">
				<select class="form-select optionSelect" aria-label="Default select example">
					<option selected>Open this select menu</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
				</select>
			</div>
			<div>
				<h4 class="fw-bold mt-4 mb-3">수량 선택</h4>
				<div class="input-group mb-3">
					<button class="minus_btn" type="button">-</button>
					<input type="text" class="form-control quantity_input" value="1" readonly style="text-align: center;">
					<button class="plus_btn" type="button">+</button>
				</div>
			</div>
			<div class="add_btn">
				<button type="button" class="cartBtn">장바구니</button>
				<button type="button" class="buyGoBtn">공구 진행하기</button>
			</div>
		</div>
	
	</div>	


	<script>
        const modal = document.querySelector(".modal");
        const img = document.querySelector(".viewImg");
        const modal_img = document.querySelector(".modal_content");
        const span = document.querySelector(".close");

        img.addEventListener('click', ()=>{
	        modalDisplay("block");
	        modal_img.src = img.src;
        });
        span.addEventListener('click', ()=>{
        	modalDisplay("none");
        });
        modal.addEventListener('click', ()=>{
        	modalDisplay("none");
        });
        function modalDisplay(text){
        	modal.style.display = text;
        }

    // 탭메뉴
    const tabs = document.querySelectorAll('.tab');
    const tabContents = document.querySelectorAll('.tab-content');

    function showTab(tabId) {
      tabs.forEach(tab => {
        tab.classList.toggle('active', tab.dataset.tab === tabId);
      });

      tabContents.forEach(tabContent => {
        tabContent.classList.toggle('active', tabContent.id === tabId);
      });
    }

    tabs.forEach(tab => {
      tab.addEventListener('click', () => {
        showTab(tab.dataset.tab);
      });
    });

    showTab(tabs[0].dataset.tab);

    // 수량 버튼 조작
    let quantity = $(".quantity_input").val();
    $(".plus_btn").on("click", function(){
        $(".quantity_input").val(++quantity);
    });
    $(".minus_btn").on("click", function(){
        if(quantity > 1) {
            $(".quantity_input").val(--quantity);
        }
    });

    </script>
    
    <!-- 찜하기 버튼 -->
    <script type="text/javascript">
	    $(document).ready(function() {
	    	$('#likeHide').click(function(event){
	    		event.preventDefault();
	    		
	    		if("${userId}" == "") {
	    			if(confirm("로그인 한 회원만 이용 가능합니다. 로그인 하시겠습니까?")) {
	    				location.href='${pageContext.request.contextPath}/user/login';
	    			}else {
	    				location.reload();
	    			}
	    		}else {
	    			var luserId = "${userId}";
	    			var lgoodsId = parseInt("${goodsView.goodsId}");
	    			
	    			console.log("luserId: " + luserId);
	    			console.log("luserId type: " + (typeof luserId));
	    			console.log("lgoodsId: " + lgoodsId);
	    			console.log("lgoodsId type: " + (typeof lgoodsId));
	    			
	    			var form={
	    					luserId:luserId,
	    					lgoodsId:lgoodsId
	    			};
	    			
	    			$.ajax({
	    				type:"POST",
	    				url:"${pageContext.request.contextPath}/goods/{goodsId}",
	    				cache:false,
	    				contentType:'application/json; charset=utf-8',
	    				data:JSON.stringify(form),
	    				success:function(result){
	    					if(result=="SUCCESS") {
	    						console.log("찜 성공!");
		    					if(confirm("해당 상품을 찜하셨습니다. 목록 페이지로 이동하시겠습니까?")){
		    						location.href='${pageContext.request.contextPath}/user/like';
		    					}else{
		    						location.reload();
		    					}
	    					}
	    				},
	    				error:function(e){
		    				console.log(e);
		    				alert('찜할 수 없습니다.');
		    				location.reload();
		    			}
	    			})
	    		}
	    	});
	    });
    </script>
    
    <!-- 찜취소 버튼 -->
    <script type="text/javascript">
	    $(document).ready(function() {
	    	$('#likeShow').click(function(event){
	    		event.preventDefault();
	    		
	    		var formData = new FormData();
	    		var likeId = parseInt($('#likeId').text());
	    		
	    		console.log("likeId: " + likeId);
	    		console.log("likeId type: " + (typeof likeId));
	    		
	    		formData.append("likeId", likeId);
	    		
	    		console.log("formData: " + formData.get('likeId'));
	    		
	    		$.ajax({
	    			type:'DELETE',
	    			url:"${pageContext.request.contextPath}/goods/${goodsView.goodsId}",
	    			cache:false,
	    			processData:false,
	    			contentType:false,
	    			data:formData.get('likeId'),
	    			success:function(result){
	    				console.log(result);
	    				if(result=="SUCCESS"){
	    					console.log("찜 취소 성공!");
	    					alert("해당 상품을 찜 취소하셨습니다.")
	    					location.href='${pageContext.request.contextPath}/goods/${goodsView.goodsId}';
	    				}
	    			},
	    			error:function(e) {
	    				console.log(e);
	    				alert("찜 취소할 수 없습니다.");
	    				location.reload();
	    			}
	    		})
	    	});
	    });
	</script>
    
</body>
</html>