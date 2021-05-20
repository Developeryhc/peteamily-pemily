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
	.content-top{
		position: relative;
		width:100vw;
		height:50vh;
	}
	.content-bottom{
		position: relative;
		width:100vw;
		height:50vh;
	}
	.content-top>.content-left{
		width:50%;
		height:50vh;
		background-image:url(img/adopt.jpg);
		background-size: cover;
		position: absolute;
		left:0;
	}
	.content-top>.content-right{
		width:50%;
		height:50vh;
		background-image:url(img/goods.jpg);
		background-size: cover;
		position: absolute;
		right:0;
		
	}
	.content-bottom>.content-left{
		width:50%;
		height:50vh;
		background-image:url(img/notice.jpg);
		background-size: cover;
		position: absolute;
		left:0;
	}
	.content-bottom>.content-right{
		width:50%;
		height:50vh;
		background-image:url(img/contact.jpg);
		background-size: cover;
		position: absolute;
		right:0;
	}
	.main-modal{
		background-color: rgba(246,246,246,0.5);
	}
	.main-modal p{
		font-size: 50px;
	}
</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="content">
		<div class="content-top">
			<div class="content-wrap content-left"><input type="hidden" value="ca"></div>
			<div class="content-wrap content-right"><input type="hidden" value="goods"></div>
		</div>
		<div class="content-bottom">
			<div class="content-wrap content-left"><input type="hidden" value="noticeList"></div>
			<div class="content-wrap content-right"><input type="hidden" value="partner"></div>
		</div>
	</div>
	<script>
		var modal = "<div class='main-modal'><p>내가 보이니?</p></div>";
		$(".content-wrap").hover(function(){
			$(this).append(modal);
		});
		$(".content-wrap").mouseout(function(){
			$(this).removeAppend(modal);
		});
		// 페이지 이동할 수 있게 작성
	</script>
</body>
</html>