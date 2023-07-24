<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<title>십일</title>
<meta charset="UTF-8">
  
</head>
<body>

  <table>
   <thead>
    <tr>
     <th>번호</th>
     <th>이름</th>
     <th>카테고리</th>
     <th>가격</th>
     <th>수량</th>
     <th>등록날짜</th>
    </tr>
   </thead>
   <tbody>
    <c:forEach items="${list}" var="list">
    <tr>
     <td>${list.goodsStatu}</td>
     <td>${list.goodsName}</td>
     <td>${list.cateCode}</td>
     <td>${list.goodsPrice}</td>
     <td>${list.goodsStock}</td>
     <td>${list.goodsDeli}</td>
    </tr>     
    </c:forEach>
   </tbody>
</table>
  </body>
  </html>