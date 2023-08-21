<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>상품조회</title>
</head>
<body>

<section id="content">
   <form role="form" method="post" action="/user/register" autocomplete="off">
    <div class="input_area">
     <label for="goodsName">상품명</label>
     <input type="text" id="goodsName" name="goodsName" value="" />        
    </div>
    
    <div class="input_area">
     <label for="goodsPrice">상품가격</label>
     <input type="text" id="goodsPrice" name="goodsPrice" value="" />        
    </div>
    
    <div class="input_area">
     <label for="goodsStock">상품수량</label>
     <input type="text" id="goodsStock" name="goodsStock" value="" />        
    </div>
    
    <div class="input_area">
     <label for="goodsContents">상품소개</label>
     <textarea rows="5" cols="50" id="goodsContents" name="goodsContents"></textarea>        
    </div>
    
    <button type="submit" id="signup_btn" name="signup_btn">등</button>
    
   </form>     
</section>

</body>
</html>