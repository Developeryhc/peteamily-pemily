<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pemily에 오신것을 환영합니다.</title>
</head>
<style>
	
	.content{
		height: 400px;
	}
	.content-wrap{
		float: left;
		width:Calc(100%/6);
		border-radius: 400px;
		box-sizing: border-box;
		margin-top: 100px;
	}
	.content-wrap img{
		width: 100%;
		border-radius: 400px;
	}
</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<div class="content">
			<div class="back-wrap"></div>
			<div class="content-wrap"><input type="hidden" value="ca"><img src="/img/adopt.png" alt="adopt"></div>
			<div class="content-wrap"><input type="hidden" value="adopt"><img src="/img/food.png" alt="goods"></div>
			<div class="content-wrap"><input type="hidden" value="noticeList"><img src="/img/notice.png" alt="notice"></div>
			<div class="content-wrap"><input type="hidden" value="partner"><img src="/img/contact.png" alt="contact"></div>
			<div class="content-wrap"><input type="hidden" value="login"><img src="/img/login.png" alt="login"></div>
			<div class="content-wrap"><input type="hidden" value="join"><img src="/img/join.png" alt="join"></div>
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
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>