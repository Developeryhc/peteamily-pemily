<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="/css/product/baguni.css">
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
	 <div class="baguni">
        <%@include file="/WEB-INF/views/shop/baguniList.jsp" %>
        
        <div class="btn">
            <div><a href="/buy">주문하기</a></div>
            <div><a href="#">계속쇼핑하기</a></div>
            <div><a href="#">장바구니비우기</a></div>
        </div>
    </div>

</body>
</html>