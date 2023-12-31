<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!--CSS-->
    <link href="/resources/css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <section class="sidebar">
        <header>
            <div class="image-text">
                <span class="image">
                    <!-- <img src="profile.png" alt="profile"> -->
                </span>

                <div class="text header-text">
                    <span class="admin">admin</span>
                    <span class="name">${sellerShop}</span>
                </div>
            </div>
        </header>

        <div class="menu-bar">
            <div class="menu">
                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-bell icon'></i>
                            <span class="text nav-text">알림</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-cart icon'></i>
                            <span class="text nav-text">주문내역</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-buildings icon'></i>
                            <span class="text nav-text">재고관리</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="#">
                            <i class='bx bx-cog icon'></i>
                            <span class="text nav-text">설정</span>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="bottom-content">
                <li class="nav-link">
                    <a href="#">
                        <i class='bx bx-log-out icon'></i>
                        <span class="text nav-text">로그아웃</span>
                    </a>
                </li>

                <li class="mode">
                    <div class="moon-sun">
                        <i class='bx bx-moon icon mood'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                    <span class="mode-text text">다크모드</span>

                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
            </div>

        </div>
    </section>

    <section class="interface">
        <div class="navigation">
            <i class='bx bx-menu icon'></i>
        </div>

        <h3 class="i-name text">
            재고관리
        </h3>

        <div class="board">
            <table width="100%">
               <thead>
                <tr>
                    <td><h2>재고관리</h2></td>
                    <td></td>
                    <td></td>
                    <td class="goods-add"><a href="/admin/write" class="modal-goods">상품 추가하기</a></td>
                    <td>
	                    <select class="form-select" name="searchType">
			                <option value="goodsName" <c:if test="${page.searchType eq 'goodsName'}">selected</c:if>>상품명</option>
			                <option value="goodsStatu" <c:if test="${page.searchType eq 'goodsStatu'}">selected</c:if>>판매 상태</option>
		              </select>
	              </td>
                    <td class="search">
                        <p>
                            <i class='bx bx-search icon'></i>
                            <input type="text" name="keyword" value="${page.keyword}" placeholder="검색어를 입력해주세요.">
                        </p>
                        
                    </td>
                    <td>
                    	<button type="button" id="searchBtn">검색</button>
                    </td>
                </tr>
               </thead> 
               <thead>
                <tr>
                    <td>상품명</td>
                    <td>가격</td>
                    <td>남은 재고</td>
                    <td>상태</td>
                    <td>편집</td>
                </tr>
               </thead> 
               <tbody>
               <c:forEach items="${list}" var="list">
               		<tr>
	                    <td class="goods">
	                        <img src="img/1.jpg" alt="">
	                        <div class="goods-de">
	                            <p>${list.goodsName }</p>
	                        </div>
	                    </td>
	
	                    <td class="price">
	                        <p>${list.goodsPrice }</p>
	                    </td>
	
	                    <td class="stock">
	                        <p>${list.goodsStock }</p>
	                    </td>
	                    <td class="state">
	                        <p>${list.goodsStatu }</p>
	                    </td>
	                    <td class="edit">
	                        <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
							  <a type="button" href="/admin/update/${list.goodsId}" class="btn btn-primary" style="margin-right: 3px;">편집하기</a>
							
							  <div class="btn-group" role="group">
							    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
							    </button>
							    <ul class="dropdown-menu">
							      <li><a class="dropdown-item" href="#">복제하기</a></li>
							      <li><a class="dropdown-item delete_link" href="/admin/delete/${list.goodsId}">삭제하기</a></li>
							    </ul>
							  </div>
							</div>
	                    </td>
	                </tr>
               </c:forEach>
                
               </tbody>
            </table>
        </div>
        
        <nav aria-label="Page navigation example">
		  <ul class="pagination mt-4 ms-4">
			<c:if test="${page.prev}">
				<li class="page-item">
			      <a class="page-link" href="/admin/list?num=${page.startPageNum -1}${page.searchTypeKeyword}" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			  </c:if>
		  
			  <c:forEach begin="${page.startPageNum }" end="${page.endPageNum}" var="num">
			  	<c:if test="${select != num}">
			  		<li class="page-item">
			  			<a class="page-link" href="/admin/list?num=${num}${page.searchTypeKeyword}">${num}</a>
			  		</li>
			  	</c:if>
			  	<c:if test="${select == num}">
			  		<li class="page-item active" aria-current="page">
			  			<a class="page-link" href="/admin/list?num=${num}">${num}</a>
			  		</li>
			  	</c:if>
			  </c:forEach>
		  
		    <c:if test="${page.next}">
		    	<li class="page-item">
			      <a class="page-link" href="/admin/list?num=${page.endPageNum + 1}${page.searchTypeKeyword}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
		    </c:if>
		  </ul>
		</nav>
        
        <!-- 모달 -->
        <div class="modal" id="modal">
            <div class="modal_body">
                <div class="m_head">
                    <div class="modal_title">Add label name</div>
                    <div class="close_btn" id="close_btn">X</div>
                </div>
                <div class="m_body">
                    <div class="modal_label">Name</div>
                    <input type="text" class="input_box" id="name_box" />
                    <div class="modal_label">Description</div>
                    <input type="text" class="input_box" id="des_box" />
                </div>
                <div class="m_footer">
                    <div class="modal_btn cancle" id="close_btn">CANCLE</div>
                    <div class="modal_btn save" id="save_btn">SAVE</div>
                </div>
            </div>
        </div>
        <!-- 모달 끝 -->
    </section>


<script>
	$(document).on('click', '.delete_link', function(event){
	    event.preventDefault();
	    var deleteUrl = $(this).attr('href');
	    	
	    $.ajax({
	    	url: deleteUrl,
	    	type: 'DELETE',
	    	success: function(data) {
	    		alert('상품이 삭제되었습니다.');
	    		window.location.href = '/admin/list';
	    	},
	    	error: function() {
	    		alert('상품 삭제에 실패했습니다.');
	    	}
	    });
    });
	
	$(document).on('click', '#searchBtn', function(event){
		var searchType = $('[name=searchType]').val();
		var keyword = $('input[name=keyword]').val();
		
		location.href = "/admin/list?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
	});
    
</script>
    
</body>
</html>