<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pemily에 오신것을 환영합니다.</title>
</head>
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<style>
	body{
		margin: 0;
		padding: 0;
	}
	.content-wrap img{
		float: left;
		heigth:300px;
		width:Calc(100%/2);
	}
</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="content-wrap">
		<div class="content">
			<div class="content-top">
				<div class="content-wrap"><input type="hidden" value="ca"><img src="/img/adopt.jpg" alt="adopt"></div>
				<div class="content-wrap"><input type="hidden" value="adopt"><img src="/img/goods.jpg" alt="goods"></div>
			</div>
			<div class="content-bottom">
				<div class="content-wrap"><input type="hidden" value="noticeList"><img src="/img/notice.jpg" alt="notice"></div>
				<div class="content-wrap"><input type="hidden" value="partner"><img src="/img/contact.jpg" alt="contact"></div>
			</div>
		</div>
	</div>
	<script>
		$(".content-wrap").mouseover(function(){
			$(this).css("background-color", "rgb(232,69,86)");
		});
		$(".content-wrap").mouseout(function(){
			$(this).css("background-color", "");
		});
		// 페이지 이동할 수 있게 작성
	</script>
</body>
</html>