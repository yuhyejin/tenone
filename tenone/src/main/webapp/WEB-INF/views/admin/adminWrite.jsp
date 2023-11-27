<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--CSS-->
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
  </head>
<body>
	<form role="form" method="post" action="/admin/postWrite" autocomplete="off">
		<div class="adminSidebar">
	        <div>
	          <div class="side_head d-flex flex-row mb-2">
	            <a class="exit p-2" href="/admin/list" style="cursor: pointer;"><i class='fs-4 text-secondary bx bx-log-out'></i></a>
	            <span class="title p-2">상품 설정</span>
	          </div>
	
	          <div class="left_scrollbar p-4">
	            <div class="mb-3">
	              <label for="basic-url" class="form-label">상품명</label>
	              <div class="input-group mb-3">
	                <input type="text" class="form-control border" name="goodsName">
	              </div>
	            </div>
	
	            <div class="mt-3">
	              <label for="basic-url" class="form-label">가격</label>
	              <div class="input-group">
	                <input type="text" class="form-control right_border_none" name="goodsPrice" placeholder="0" maxlength="10" onkeyup="checkNumber(this);">
	                <span class="input_box_text">원</span>
	              </div>
	            </div>
	
	            <div class="mt-3">
	              <div class="d-flex">
	                <label for="basic-url" class="form-label">대표 이미지</label>
	                <span class="label_text">(메인에 노출될 썸네일, 가로 900px 이상, 최대 5장)</span>
	              </div>
	              <div class="d-flex">
	                <div class="preview_container" id="previewContainer"></div>
	              </div>
	              <div id="addProductImgBtn">
	                <div class="add_img_uploader">
	                  <i class='bx bx-plus add_img_icon'></i>
	                  <label class="fileUploade" for="gds"></label>
	                  <input type="file" id="gds" name="goodsImg" multiple onchange="previewImage()" accept=".png,.jpg,.jpge" style="display: none;">
	                  
	                </div>
	                
	              </div>
	            </div>
	
	            <div class="mt-3">
	              <label for="basic-url" class="form-label">남은 재고</label>
	              <div class="input-group">
	                <input type="text" class="form-control right_border_none" name="goodsStock" placeholder="0" maxlength="10" oninput="checkNumber(this);">
	                <span class="input_box_text">개</span>
	              </div>
	            </div>
	
	            <div class="mt-3">
	              <label for="basic-url" class="form-label">옵션 추가</label>
	              <div class="input-group mb-3">
	                <input type="text" class="form-control border" name="goodsOtp">
	              </div>
	            </div>
	
	            <div class="mt-3">
	              <label for="basic-url" class="form-label">배송 정책</label>
	              <select class="form-select" id="inputGroupSelect" name="goodsDeli">
	                <option selected value="무료배송">무료배송</option>
	                <option value="선불결제">선불결제</option>
	                <option value="후불결제">후불결제</option>
	                <option value="무료배송. 단, 제주 산간지역 4000원">무료배송. 단, 제주 산간지역 4000원</option>
	                <option value="무료배송. 단, 제주 산간지역 배달 불가">무료배송. 단, 제주 산간지역 배달 불가</option>
	              </select>
	            </div>
	
	            <div class="mt-3">
	              <label for="basic-url" class="form-label">판매 상태</label>
	              <div class="sellstate">
	                <div>
	                    <input type="radio" name="goodsStatu" value="판매중" checked="checked"><span>판매 중</span>
	                </div>
	                <div>
	                    <input type="radio" name="goodsStatu" value="판매중지"><span>판매 중지</span>
	                </div>
	                <div>
	                    <input type="radio" name="goodsStatu" value="품절"><span>품절</span>
	                </div>
	               </div>
	             </div>
	
	            <div class="mt-3">
	              <label for="basic-url" class="form-label">카테고리</label>
	              <select class="form-select" id="inputGroupSelect01" name="cateCode">
	                <option selected value="집들이 선물">집들이 선물</option>
	                <option value="생일 선물">생일 선물</option>
	                <option value="취업 선물">취업 선물</option>
	                <option value="응원 선물">응원 선물</option>
	              </select>
	            </div>
	          </div>
	          <div class="btn_footer mt-3" style="position: fixed; bottom: 10px; transform: translateX(170%);">
				  <button type="button" id="back_btn" class="btn btn-outline-secondary me-1" >나가기</button>
				  <button type="submit" class="btn btn-outline-secondary">저장하기</button>
			  </div>
	        </div>
	        
	      </div>
	
	      <div class="rightSidebar">
	        <div class="wrapper">
	          <div class="right_head">
	            <span class="right_title">상품 설명</span>
	          </div>
	
	          <div class="admin_content">
	            <textarea class="textarea" name="goodsContents"></textarea>
	            <!-- <textarea name="goodsContent" id="goods_textarea"></textarea> -->
	          </div>
	        </div>
	      </div>
	</form>
	

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
	   /*  $("#back_btn").click(function(){
	    	location.href="/admin/list";
    	}); */
    
      // 숫자 3자리에서 콤마
      function comma(str) {
        str = String(str);
        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
      }
      function uncomma(str) {
        str = String(str);
        return str.replace(/[^\d]+/g, '');
      } 
    
      function checkNumber(obj) {
        obj.value = comma(uncomma(obj.value));
      }

      // 이미지 썸네일 업로드
      function previewImage() {
        var input = document.getElementById('gds');
        var previewContainer = document.getElementById('previewContainer');
        var maxImages = 5;

        // 이미지 개수가 최대 허용 개수보다 많으면 추가 업로드 막기
        if (previewContainer.children.length + input.files.length > maxImages) {
          alert('이미지는 최대 5개까지만 업로드 가능합니다.');
          input.value = ''; // 파일 선택 초기화
          return;
        }

        for (var i = 0; i < input.files.length; i++) {
          var file = input.files[i];
          var reader = new FileReader();

          reader.onload = (function(file) {
            return function(e) {
              var image = new Image();
              image.src = e.target.result;

              image.onload = function() {
                if (image.width >= 900) {
                  var preview = document.createElement('img');
                  preview.src = e.target.result;
                  preview.classList.add('preview');
                  preview.classList.add('rounded');
                  previewContainer.appendChild(preview);
                } else {
                  alert('가로 크기가 900px 이상인 이미지만 업로드 가능합니다.');
                  input.value = ''; // 파일 선택 초기화
                }
              };
            };
          })(file);

          if (file) {
            reader.readAsDataURL(file);
          }
        }
      }
      
      // 이지윅 적용
      // ClassicEditor
      //   .create(document.querySelector('#goods_textarea'))
      //   .catch(error=>{
      //     console.error(error);
      //   });

    </script>
  </body>
</html>