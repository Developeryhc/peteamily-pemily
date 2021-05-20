<%@page import="member.model.vo.Member"%>
<%@page import="ca.model.vo.Adopt"%>
<%@page import="inca.model.vo.Inca"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	//	Adopt adopt = (Adopt)session.getAttribute("adopt");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가족이 될 준비가 된 친구들이에요 :)</title>
</head>
<style>
.container {
	margin-top: 200px;
	width: 1280px;
}

.selectCa{
	margin: 100px 0;
	width: 100%;
}
.selectCa>a{
	height: 400px;
}
.CaImg{
	height: 400px;
	width: Calc(1280px/7);
	transition-duration: 0.2s;
}

</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<script type="text/javascript"></script>
	<div class="container">
		<div class="selectCa">
			<a href="/caViewList?incaNo=2"><img src="/img/ca1.jpg" class="CaImg"></a>
			<a href="/caViewList?incaNo=3"><img src="/img/ca2.jpg" class="CaImg"></a>
			<a href="/caViewList?incaNo=4"><img src="/img/ca3.jpg" class="CaImg"></a>
			<a href="/caViewList?incaNo=5"><img src="/img/ca4.jpg" class="CaImg"></a>
			<a href="/caViewList?incaNo=6"><img src="/img/ca5.jpg" class="CaImg"></a>
			<a href="/caViewList?incaNo=7"><img src="/img/ca6.jpg" class="CaImg"></a>
			<a href="/caViewList?incaNo=8"><img src="/img/ca7.jpg" class="CaImg"></a>
		</div>
	</div>
	<script>
		$(".CaImg").hover(function(){
			var value = $(this).val();
			$(".CaImg").css("width", "Calc(980px/7)");
			$(".CaImg").not(this).css("height", "300px");
			$(this).css("height", "400px");
			$(this).css("width", "400px");
		});
		$(".CaImg").mouseout(function(){
			$(".CaImg").css("width", "Calc(1280px/7)");
			$(".CaImg").css("height", "400px");
		});
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>