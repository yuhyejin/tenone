<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>회원가입</title>
</head>
<body>
	 <section id="content">
	   <form role="form" method="post" autocomplete="off">
	  	 <div class="input_area">
	     <label for="shop_name">쇼핑몰 이름</label>
	     <input type="text" id="shop_name" name="shop_name" placeholder="쇼핑몰 이름을 입력해주세요" required="required" />        
	    </div>
	    <div class="input_area">
	     <label for="user_name">이름</label>
	     <input type="text" id="user_name" name="user_name" placeholder="이름을 입력해주세요" required="required" />        
	    </div>
	    <div class="input_area">
	     <label for="user_id">이메일</label>
	     <input type="email" id="user_id" name="user_id" placeholder="example@email.com" required="required" />        
	    </div>
	    
	    <div class="input_area">
	     <label for="user_pwd">패스워드</label>
	     <input type="password" id="user_pwd" name="user_pwd" required="required" />        
	    </div>
	    <button type="submit" id="signup_btn" name="signup_btn">회원가입</button>
	    
	   </form>     
	</section>
</body>
</html>