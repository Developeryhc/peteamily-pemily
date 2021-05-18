<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/css/product/detail.css"> 
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="order_top">
	      <  <a href="javascript:history.back();">이전페이지</a>                          <span class="span_r">  home > 테이블명 > 상품이름 </span>
	    </div>
	    <div class="order">
	        <div class="red">
	            <img src="/img/snack_2.PNG">
	        </div>
	        <div class="blue">
	        <table class="tb">
	            <tr><td><p class="tb_p">오리고기육포(70g)</p></td></tr>
	                <tr><td class="tb_size"> 판매가격 ~~~원</td></tr>
	                <tr><td class="tb_size"> 수량 
	                    <select name="count">
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                    </select>
	
	                </td></tr>
	                <tr><td class="tb_size">
	                   <div class="btn"><a href="/buy">구매하기(클릭)</a></div>
	                   <div class="btn"><a href="/baguni">장바구니 (클릭) </a></div>
	                   <div class="btn"><a href="#">찜하기</a></div>
	                </td></tr>
	            </table>
	        </div>
	    </div>
	    <div class="order_bottom">
	        <p>PRODUCT ___ 상품 상세 보기</p>
	        <div>
	            <img src="/img/snack_2_1.PNG" class="div_center">
	            <br><br>
	            <img src="/img/snack_2_1.PNG" class="div_center">
	        </div>
	    </div>

</body>
</html>