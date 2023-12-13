<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${goodsList}" var="goods">
    <!-- 상품 정보 출력 -->
    ${goods.goodsName}, ${goods.goodsPrice}, ${goods.cateCode}
</c:forEach>